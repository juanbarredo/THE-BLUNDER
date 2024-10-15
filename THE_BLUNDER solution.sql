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

--USE the_blunder;
--SELECT CAST( Salary AS varchar)
--	FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--Everything looks good
--but let me test by doing the avg function
--it should give me an error

--USE the_blunder;
--SELECT AVG(Salary)
--	FROM employees;

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

-------------------10 10 2024---------------------

--ok,
--today I need to look at how to do casting in what I believe is a subquery.

--But I saw online a way to do it all in the SELECT statement.

--USE the_blunder;
--SELECT *
--	FROM employees;

--USE the_blunder;
--SELECT CAST(Salary AS varchar)
--	FROM employees 

--ok, from here.  I am unsure how to change but I would need to change that.
--right, lines 178 - 179 are the subquery.
--the main query would delete the zeroes.

--ok, I need to find the next step then.
--the next step is how to change.
--ok, it looks like I will need to use the REPLACE function.

--------REPLACE(string, old_string, new_string)

--but this is only if we know the exact string.
--I need to replace zeroes in every row within a column.
--so, replace doesn't use an expression.
--

--I am at a loss

--this is where having a more nuanced understanding of
--how SQL processes rows and columns.

--I feel I need to go back and understand
--ok,

--I changed my question on a google search and got the idea to use the 
--UPDATE statement?
--I would never have thought of that at this stage.

-------SELECT REPLACE([somecolumn], 'somestring', '') AS [somecolumn] FROM [sometable]

--I will keep working on this Sunday.

-----------------------------10 13 2024--------------------------------

--I am now looking at the UPDATE statement but I don't think it will work.

--interesting, the book doesn't have the REPLACE function.
--but it does have something, right?
--I remember it covering how to do something like it but I can't find it now.

--------------REPLACE ( column_name , string_expression , string_patter , string_replacement )

--USE the_blunder;
--SELECT REPLACE(Salary, '0', '')
--	FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--ok!
--I was able to use REPLACE successfully!
--at least for now.
--I can move on to the next portion of the problem
--which I will define the next time I work on this

--datacamp.com/tutotial/sql-replace 

-----------------------------------10 14 2024------------------------------

--ok,
--The next step in the problem is:

-------"she wants your help
-------finding the difference between
-------her miscalculation
-------(using salaries with any zeroes removed),

--ok,
--so, there it is.
--I need to find the new average.
--the new average with any zeroes removed.
--I have already accomplished removing the zeroes.

--let me get the new average.

--the main thing the worries me right now
--is how am I going to do all of this on one query?

--ok, I ran the SELECT * FROM employees; query
--in lines 226 - 228
--and I forgot that the query 
--from lines 222 - 224 isn't permanent.
--I guess I didn't do an UPDATE statement
--so, it would make sense that the zeroes are
--still there.

--ok,
--this makes things easier.
--I thought I was going to have to reverse the zeroes
--in case I needed to do it for some reason.

--USE the_blunder;
--SELECT REPLACE(Salary, '0', '')
--	FROM employees;

--ok, how do I do a new avg?
--I think I would need to make the query I copied from 222-224 to 272-274
--the subquery.
--and the main query
--would be the avg function.

USE the_blunder;
SELECT AVG(Salary)
	FROM employees
		WHERE Salary IN
		(SELECT REPLACE(Salary, '0', '')
		FROM employees);

--Nice, the new avg is 2701.

--the previous one was.
--oh man,
--I would need to do this all in one query?
--that is a lot right now.

--How would I do that?
--I think I would need to do two AVG functions in the same 
--SELECT statement.
--But obviously, I might need to add a new column.
--a new column that did the zeroes and one without
--the zeroes.

--this will be what I do -maybe- tomorrow.
