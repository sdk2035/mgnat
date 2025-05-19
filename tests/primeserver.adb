-------------------------------------------------
-- Title:    Assignment 4: Multi Task Problem
-- Author:   James Barrett      Date: 2004-11-26
-- package:  primeserver
-- filename: primeserver.adb
-- Language: Ada 95
-- Description: Package containing prime number task.
--              This task will take as input an integer
--              and will calculate all prime numbers
--              between 0ne and that number.
--              Rendezvous points provide a user interface
-------------------------------------------------
with text_io;
package body PrimeServer is
    I : integer := 1;
    D: duration := 1.0;
-------------------------------------------------
-- task body
-- type PrimeTask
-- Description: Type to be used as dynamic task.
-------------------------------------------------
    task body PrimeTask is
    begin
        TheNumber := Num;
        while ContinueLoop loop
            --Rendezvous points
            select
                --restart calculation at one
                accept Restart do
                    I := 1;
                end Restart;
            or
                --restart calculation at NewNum
                accept Restart(NewNum : Integer) do
                    I := NewNum;
                end Restart;
            or
                --retrieve the last prime number calculated
                accept GetLastPrime(Last : out Integer) do
                    Last := LastPrime;
                end GetLastPrime;
            or
                --end this task
                accept EndTask do
                    ContinueLoop := false;
                end EndTask;
            or
                --set delay of type Duration
                accept SetDelay(Du: duration) do
                    --I discovered that a parameter 
                    --can not have the same name as 
                    --a package variable
                    D := Du;
                end SetDelay;
            else
                if I < TheNumber then
                    if IsPrime(I) then
                        LastPrime := I;
                    end if;
                --increment inside the IF so that I doesn't reach it's limit and flip
                I := I+2;--add 2 to skip all even numbers
                end if;
                delay D;
            end select;
        end loop;
    end PrimeTask;

-------------------------------------------------
-- procedure dummy
-- input: NA
-- returns: NA
-- description: Null procedure.
-------------------------------------------------
    procedure dummy is
    begin
        NULL;
    end dummy;
end primeserver;

