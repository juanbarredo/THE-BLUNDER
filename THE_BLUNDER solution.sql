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

--USE the_blunder;
--SELECT AVG(Salary)
--	FROM employees
--		WHERE Salary IN
--		(SELECT REPLACE(Salary, '0', '')
--		FROM employees);

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

----------------------10 17 2024------------------------------------

--ok, I will need to look up how to add a new column.
--a new column to have the salary with no zeroes.

--it is very interesting how these queries really do need
--to be broken down into multiple parts
--and then added together.

--USE the_blunder;
--ALTER TABLE employees
--	ADD Salary_no_zeroes INT;

--UPDATE employees
--	SET Salary_no_zeroes
--		WHERE Salary IN
--		(SELECT REPLACE(Salary, '0', '')
--		FROM employees);

--I am feeling lost.

--Not sure how to copy/paste multiple rows into a new column.
----------UPDATE table SET columnB = ColumnA;

--Maybe this is what I will do first.
--copy the column over.  
--Then I can edit it.

--USE the_blunder;
--ALTER TABLE employees
--	ADD Salary_no_zeroes INT;

--SELECT *
--	FROM employees;

--ok, now let me copy it over.

--UPDATE employees
--	SET Salary = Salary_with_no_zerores
--		FROM employees;

--SELECT *
--	FROM employees;

--ok, next time.
--I will work on copying Salary into Salary_with_no_zeroes.

--for some reason.

--That I think I just figured out.
--I wrote the wrong column name down in line 343.

-----------------------------10 20 2024--------------------------------------
--
--So, 
--During this Pomodoro (an uninterrupted 25 minute block of dedicated work time).
--I am first, going to try and copy/paste into a the new column
--"Salary_no_zeroes".

--USE the_blunder;
--UPDATE employees
--	SET Salary = Salary_no_zeroes
--		FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--haha, the query from lines 364 - 367
--copied in the wrong direction?

--it set every row in the Salary column as NULL.

--Now, I have to reverse the error.

--Let's see how long that takes.

--I might have to drop the employees table
--and re-create it using the import/export wizard.

--I have two directions that I want to take,

--	1. how do I make sure the error doesn't happen again
--	2. drop the table and go straight to the import/export wizard.

--I think I will go to the second option.

--USE the_blunder;
--SELECT *
--	FROM employees;

--ok!
--Back to square one.

--Now, I need to create the new column again.

--USE the_blunder;
--ALTER TABLE employees
--	ADD Salary_no_zeroes INT;

--USE the_blunder;
--SELECT *
--	FROM employees;

--USE the_blunder;
--UPDATE employees
--	SET Salary_no_zeroes = Salry
--		FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--I tried to reverse the equality
--But now it is telling me that Salary is an
--invalid column name?

--I will try to solve this tommorrow.

--ok, got it.
--I might need to re-use the import/export wizard to correct the column name
--from "Salry" to "Salary.

--But I learned something new
--the order of the terms in the equal matter.

--I need better language to describe this.

-----------------------------10 22 2024----------------------------

--ok,
--last time I learned something very valuable
--that I feel should have been explained previously.
--maybe I missed it?

--but when using the equal sign.
--it is A = B means that B will be made equal to A.
--I figured it would be the other way around.

--Not sure why.
--ok,
--I am lookign at the learn.microsoft websire and I see
--clearly that it is indeed A = B.
--which will make B equal to B.
--the order seems counterintuitive in
--my case.

--But when assigning variables.  
--it makes perfect sense.

--So,
--Now the next step is to clear the zeroes
--from the "Salary_no_zeroes" column.

--I am copying previously developed code from lines 318-322

--USE the_blunder;
--UPDATE employees
--	SET Salary_no_zeroes
--		WHERE Salry IN
--		(SELECT REPLACE(Salry, '0', '')
--		FROM employees);

--I will problably go back and re-upload or
--rename the "Salry" column since
--It should be "Salary"

--USE the_blunder;
--SELECT *
--	FROM employees;

--Right, neverming
--I first have to change INT to NVARCHAR

--USE the_blunder;
--SELECT REPLACE(Salary_no_zeroes, '0', '')
--	FROM employees;

--USE the_blunder;
--SELECT *
--	FROM employees;

--ok,
--here is where I think I got stuck last time.
--I have to do it all in the same query?

--Because I need to 
--Well, the results from query in lines 479 - 481
--need to be updated as the new
--"Salary_no_zeroes"

--So, I think this will be the new challenge.
--ok,
--I guess I need to make:

--USE the_blunder;
--UPDATE employees
--SELECT REPLACE(Salary_no_zeroes, '0', '')
--	SET Salary_no_zeroes = Salry
--		FROM employees;

--USE the_blunder;
--SELECT REPLACE(Salary_no_zeroes, '0', '')
--	FROM employees;

--I may need to do a quick search to see if
--line 502 can just be slid into the query from
--lines 500 - 504.

----------------------------10 24 2024---------------------------

--ok,
--Let's see where I left off

--USE the_blunder;
--SELECT *
--	FROM employees;

--ok, I am already at a place where the columns are set
--I just need to remove the zeroes from one column.

--then, do the AVG of each.
--then, the difference between both

--------------USE the_blunder;
--------------UPDATE employees
--------------SELECT REPLACE(Salary_no_zeroes, '0', '') --this did not work.
--------------	SET Salary_no_zeroes = Salry
--------------		FROM employees;

--ok, I am lost.

--USE the_blunder;
--SELECT REPLACE(Salary_no_zeroes, '0', '')
--	FROM employees;

--ok, the above query just removes the zeroes but only in this query
--I need to UPDATE these changes.

--USE the_blunder;
--SELECT REPLACE(Salary_no_zeroes, '0', '')
--	FROM employees;

--how can I add the UPDATE

--USE the_blunder;
--UPDATE employees
--	SET Salary_no_zeroes = 
--	(SELECT REPLACE(Salary_no_zeroes, '0', ''))
--		FROM employees;

USE the_blunder;
SELECT *
	FROM employees;

--Amazing, got it.
--so, without realizing it
--copying from SQL SHACK
--I used a subquery.

--I didn't see it as such
--but after I ran it.
--it just made sense that that is what it was
--such a weird place to find
--a subquery for me

--my understanding of what a subquery is has been collapsed
--I am open to seeing it elsewhere I feel

--I hope this is true

--the only way is to keep working with SQL

--the article used was
--sqlshack.com/how-to-update-from-a-select-statement-in-sql-server/
--very useful.

--I am still blown as to how a subquery snuck in.
