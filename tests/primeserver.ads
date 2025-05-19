-------------------------------------------------
-- Title:    Assignment 4: Multi Task Problem
-- Author:   James Barrett      Date: 2004-11-26
-- package:  primeserver
-- filename: primeserver.ads
-- Language: Ada 95
-- Description: Package containing prime number task.
--              This task will take as input an integer
--              and will calculate all prime numbers
--              between 0ne and that number.
--              Rendezvous points provide a user interface
-------------------------------------------------
with prime; use prime;
package PrimeServer is
-------------------------------------------------
-- task
-- type PrimeTask 
-- Description: Type to be used as dynamic task.
-------------------------------------------------
    task type PrimeTask(Num: Integer) is
        --Rendezvous points
        entry Restart;--restart calculation at one
        entry Restart(NewNum:Integer);--restart calculation at NewNum
        entry GetLastPrime(Last : out Integer);--retrieve the last prime number calculated
        entry EndTask;--end this task
        entry SetDelay(Du: duration);--set delay of type Duration
    end PrimeTask;
-------------------------------------------------
-- type PrimeTaskPtr
-- Description: Pointer to type PrimeTask 
--              to be used as dynamic task.
-------------------------------------------------
    type PrimeTaskPtr is access PrimeTask;
        
    TheNumber : Integer;
    LastPrime : Integer;
    ContinueLoop : boolean := true;

-------------------------------------------------
-- procedure dummy        
-- input: NA
-- returns: NA
-- description: Null procedure.             
-------------------------------------------------
    procedure dummy;
end primeserver;
