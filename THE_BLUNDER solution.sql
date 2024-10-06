-----------------10 03 2024------------------------------
--STYLE GUIDE--
--In my current understanding of the query process.
--USE will not be indented.
--SELECT statement will not be indented.
--	FROM will be indented.
--		anything below FROM will be indented
--			one indentation further.
--			I currently believe that subqueries 
--			willl be an exception.

use the_blunder;
SELECT *
	FROM employees;

--ok, my use of the import export wizard worked.

--Samantha was tasked
--with calculating the average
--monthly salries
--for all employees
--in the employees table.
------------------I might want to just recreate her answer from the get go.
--but did not realize
--her keyboard's 0 key was broken
--until after completing the calculation.

--she wants your help finding
--the difference between
--her miscalculation
--(using salaries with any zeroes removed)
---------------yeah, right here my eyes glazed over.
---------------I need to recreate her blunder 
---------------in order to build from it.

--I can't even copy the rest of the problem description.
--can I/could I even attempt an attempt at the comment in
--line 23?

--ok,
--let's try to calculate the average 
--monthly salaries
--for all employees
-------I think I previously figured something
-------out about "all"

--ok,
--isn't there a function for average?
--yes there is.
--AVG()

USE the_blunder;
SELECT AVG(Salary)
	FROM employees;

--ok, I think I captured the first part
--as I understand the problem at the moment.

--Now, it seems that her 0 key is broken?

--		She now wants your help
--		finding
--		the difference between
--		her miscalculation
--		(using salaries
--		with any zeroes removed),
--		and the actual average salary.

--so, now this problem becomes very complicated.

--		(using salaries
--		with any zeroes
--		removed).

--so, now I have to find a way to remove any zeroes.

-------------------------10 06 2024-----------------------------

--ok,

--The next step as I see it now 
--is to remove the zeroes from the salary column
--but
--this will change things drastically

--for instance,
--how does Britney's salary go from
--9009 to 99?

--I am looking into it and it seems way
--too complicated

--is there really no way to simply replace numbers
--numbers that are in INT format.

--this is really a bad awkward thing.

--I need to - apparently - change the data type
--change the data type to VARCHAR first?

--seems really longwinded

--somthing I have to change to myself.

--I found some articles on SQLSHACK
--that I will try to read
