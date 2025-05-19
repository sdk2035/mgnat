-------------------------------------------------
-- Title:    Assignment 4: Multi Task Problem
-- Author:   James Barrett      Date: 2004-11-26
-- package:  prime
-- filename: prime.ads
-- Language: Ada 95
-- Description: Package to calculate is num is prime
-------------------------------------------------
package prime is
-------------------------------------------------
-- function IsPrime                     
-- input: integer
-- returns: boolean
-- description: checks to see if a number is a 
--              prime number. 
--              returns true if it is prime and
--              flase if it is not prime.
-------------------------------------------------
    function IsPrime(num : integer) return boolean;
end prime;
