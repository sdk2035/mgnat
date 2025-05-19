// provided by Rob Veenker
using System;
using System.Threading;
using System.Collections; 

namespace mgnat.adalib 
{

	// Addendum to the .Net compact framework Monitor class

	public sealed class MonitorEx
	{
		class ThreadInfo
		{
			object			threadObj;
			object			stateLock;
			int				lockCount;
			AutoResetEvent	waitPulseEvent;
			int				waitCounter;

			/// <summary>
			/// Save the object of the thread being monitored. 
			/// </summary>
			public void set_threadObj (object thrd) {
				threadObj = thrd;
			}
			public object get_threadObj () {
				return threadObj;
			}

			/// <summary>
			/// Object to be used as a monitor for state changing.
			/// </summary>
			public void set_stateLock (object stl) 
			{
				stateLock = stl;
			}
			public object get_stateLock () {
				return stateLock;
			}

			/// <summary>
			/// Number of levels of locking (0 for an unowned
			/// monitor, 1 after a single call to Enter, etc).
			/// </summary>
			public void set_lockCount (int lcnt) 
			{
				lockCount = lcnt;
			}
			public int get_lockCount () 
			{
				return lockCount;
			}
 
			/// <summary>
			/// AutoResetEvent used to implement Wait/Pulse/PulseAll.
			/// Initially not signalled, so that a call to Wait will
			/// block until the first pulse.
			/// </summary>
			public void set_waitPulseEvent (AutoResetEvent wpe) 
			{
				waitPulseEvent = wpe;
			}
			public AutoResetEvent get_waitPulseEvent () {
				return waitPulseEvent;
			}

			/// <summary>
			/// Number of threads waiting on this monitor.
			/// </summary>
			public void set_waitCounter (int wcnt) 
			{
				waitCounter = wcnt;
			}
			public int get_waitCounter () {
				return waitCounter;
			}

		}

		static ArrayList threadList = new ArrayList();
		static ThreadInfo null_threadInfo = new ThreadInfo();

		/// <summary>
		/// Creates a new monitor, not owned by any thread.
		/// </summary>
		public MonitorEx()
		{
		}

		/// Pulses the monitor once - a single waiting thread will be released
		/// and continue its execution after the current thread has exited the
		/// monitor. Unlike Pulse on the normal framework, no guarantee is
		/// made about which thread is woken.
		/// <exception cref="SynchronizationLockException">If the 
		/// current thread does not own the monitor.</exception>
		public static void Pulse(object currentObj)
		{
			ThreadInfo cur = null_threadInfo;
			Boolean exists = false;

			System.Collections.IEnumerator myEnumerator = threadList.GetEnumerator();
			while ( myEnumerator.MoveNext() && ( myEnumerator.Current != null )) 
			{
				cur = (ThreadInfo) myEnumerator.Current;
				if (cur.get_threadObj().Equals (currentObj))
				{
					exists = true;
					break;
				}
			}

			if (!exists) 
			{
				throw new 
					SynchronizationLockException
					("Thread not found (no wait issued).");
			}

			lock (cur.get_stateLock())
			{
				// Don't bother setting the event if no-one's waiting - we'd only end
				// up having to reset the event manually.
				if (cur.get_waitCounter() == 0)
				{
					return;
				}
				cur.get_waitPulseEvent().Set();
				cur.set_waitCounter (cur.get_waitCounter() - 1);
			}
		}

		/// <summary>
		/// Pulses the monitor such that all waiting threads are woken up.
		/// All threads will then try to regain the lock on this monitor.
		/// No order for regaining the lock is specified.
		/// </summary>
		/// <exception cref="SynchronizationLockException">If the current 
		/// thread does not own the monitor.</exception>
		public static void PulseAll(object currentObj)
		{
			ThreadInfo cur = null_threadInfo;
			Boolean exists = false;

			System.Collections.IEnumerator myEnumerator = threadList.GetEnumerator();
			while ( myEnumerator.MoveNext() && ( myEnumerator.Current != null )) 
			{
				cur = (ThreadInfo) myEnumerator.Current;
				if (cur.get_threadObj().Equals (currentObj))
				{
					exists = true;
					break;
				}
			}

			if (!exists) 
			{
				throw new 
					SynchronizationLockException
					("Thread not found (no wait issued).");
			}

			lock (cur.get_stateLock())
			{			
				for (int i=0; i < cur.get_waitCounter(); i++)
				{
					cur.get_waitPulseEvent().Set();
				}
				cur.set_waitCounter(0);
			}
		}

		/// <summary>
		/// Relinquishes the lock on this monitor (whatever the lock count is)
		/// and waits for the monitor to be pulsed. After the monitor has been 
		/// pulsed, the thread blocks again until it has regained the lock (at 
		/// which point it will have the same lock count as it had before), and 
		/// then the method returns.
		/// </summary>
		public static Boolean Wait(object currentObj)
		{
			int oldLockCount;

			ThreadInfo cur = null_threadInfo;
			Boolean exists = false;

			System.Collections.IEnumerator myEnumerator = threadList.GetEnumerator();
			while ( myEnumerator.MoveNext()) 
			{
                		cur = (ThreadInfo) myEnumerator.Current;
				if (cur.get_threadObj().Equals (currentObj))
				{
					exists = true;
					break;
				}
			}

			if (!exists) 
			{
				cur = new ThreadInfo();
				cur.set_threadObj (currentObj);
				cur.set_stateLock (new object());
				cur.set_lockCount (0);
				cur.set_waitPulseEvent (new AutoResetEvent(false));
				cur.set_waitCounter (0);

				threadList.Add (cur);
			}

			lock (cur.get_stateLock())
			{
				oldLockCount = cur.get_lockCount();
				// Make Exit() set the enterExitEvent
				cur.set_lockCount (1);
				Monitor.Exit(cur.get_threadObj());
				cur.set_waitCounter (cur.get_waitCounter() + 1);
			}

			cur.get_waitPulseEvent().WaitOne();
			Monitor.Enter(cur.get_threadObj());
			// By now we own the lock again
			lock (cur.get_stateLock())
			{
				cur.set_lockCount (oldLockCount);
			}

			return true;
		}

		class PulseTimer
		{
			public PulseTimer() {
			}

			// This method is called by the timer delegate.
			public void timedPulse(Object threadObj)
			{
				Pulse (threadObj);
			}
		}


		public static Boolean Wait(object currentObj, int timeout)
		{
			PulseTimer pulseTimer = new PulseTimer();

			TimerCallback timerDelegate = 
				new TimerCallback(pulseTimer.timedPulse);

			// setup a timer to call the TimerCallback object
			System.Threading.Timer waitPulseTimer = new System.Threading.Timer
				(timerDelegate,
				currentObj,
				timeout,
				System.Threading.Timeout.Infinite);

			return Wait (currentObj);
		}
	}

	/// <summary>
	/// Exception thrown by <see cref="T:OpenNETCF.Threading.MonitorEx"/> when threading rules
	/// are violated (usually due to an operation being
	/// invoked on a monitor not owned by the current thread).
	/// </summary>
	public class SynchronizationLockException : SystemException
	{
		/// <summary>
		/// Initializes a new instance of the <see cref="SynchronizationLockException"/> class with a specified error message.
		/// </summary>
		/// <param name="message">The error message that explains the reason for the exception.</param>
		public SynchronizationLockException(string message) : 
			base(message)
		{
		}
	}
}

