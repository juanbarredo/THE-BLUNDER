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

--use the_blunder;
--SELECT *
--	FROM employees;

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

--USE the_blunder;
--SELECT AVG(Salary)
--	FROM employees;

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

---------------------10 07 2024--------------------------

--ok,

--So, I need to look at CAST vs CONVERT

--Sees generally speaking that I should use CAST
--unless I am interested in specific cases.

--for my first example then,
--I need to CAST the column 'Salary' into VARCHAR
--to then strip out the '0'/zeroes.

---------CAST ( expression AS data_type [ ( length ) ] )

USE the_blunder;
SELECT CAST( Salary AS varchar)
	FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--Everything looks good
--but let me test by doing the avg function
--it should give me an error

USE the_blunder;
SELECT AVG(Salary)
	FROM employees;

--it didn't give me the error
--I was expecting

--does CAST only work within the query
--being executed
--so, it

--yeah, I think so
--how interesting.

--I would have to write the 
--query in mind to finish out 
--the operation I wanted.

--I don't have the bandwith to do that now
--but next time
--I will try to use a subquery.

--might that work?

--although, I think I saw an answer online
--that is compound.
--seems kind of out of my style
--at this point.

--I want to try to do a subquery about it.

