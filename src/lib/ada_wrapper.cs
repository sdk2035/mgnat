//////////////////////////////////////////////////////////////////////////////
//                                                                          //
//                         GNAT COMPILER COMPONENTS                         //
//                                                                          //
//                          a d a _ w r a p p e r                           //
//                                                                          //
//                            $Revision: 1.4 $                              //
//                                                                          //
//          Copyright (C) 1998-1999 Ada Core Technologies, Inc.             //
//                                                                          //
// GNAT is free software;  you can  redistribute it  and/or modify it under //
// terms of the  GNU General Public License as published  by the Free Soft- //
// ware  Foundation;  either version 2,  or (at your option) any later ver- //
// sion.  GNAT is distributed in the hope that it will be useful, but WITH- //
// OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY //
// or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License //
// for  more details.  You should have  received  a copy of the GNU General //
// Public License  distributed with GNAT;  see file COPYING.  If not, write //
// to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, //
// MA 02111-1307, USA.                                                      //
//                                                                          //
// JGNAT - The GNAT Ada 95 toolchain for the Java Virtual Machine is        //
//         maintained by Ada Core Technologies, Inc. - http://www.gnat.com  //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

// This Java class is part of the JGNAT library and is used by the JVM
// implementation of GNULLI (i.e. to implement Ada Tasking on the JVM).
using System;
using System.Threading;
using system.tasking;
using system.task_primitives;

namespace mgnat.adalib {


public sealed class ada_wrapper  {
   static LocalDataStoreSlot data_store;
   public Thread thd;
   private Object self_id;

   // mcc: 12/09/03 need noarg constructor
   // doesn't need to do anything, but must be
   // present-- won't be used
   public ada_wrapper () {
   }

   public ada_wrapper (Object myself) {
      this.thd = new Thread(new ThreadStart(this.run));
      if (data_store == null) {
         data_store = Thread.AllocateDataSlot();
      }
      this.self_id = myself;
   }
 
   public void run () {
      Thread.SetData(data_store,this);
      stages_pkg.task_wrapper
        ((ada_task_control_block) self_id); 
   }
   public Thread Get_Thread() {
      return this.thd;
   }
 
   public static Object getSelfId ()
   {
      Object result;
      try {
         result = ((ada_wrapper) Thread.GetData(data_store)).self_id;
      }

      // If the above cast fails, then we must be in the environment task
      // (or a foreign thread...).
      catch (System.Exception) {
         result = (Object) operations_pkg.environment_task_id;
      }
      return result;
   }
}

}
