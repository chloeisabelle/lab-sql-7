-- 1. Show output of last names, only showing those that are unique--
Select first_name, last_name 
From actor
Group by last_name
Having COUNT(*) =1; 


-- 2.  Which last names appear more than once? --
Select last_name, COUNT(*) as 'Last Name Count'   
From actor  
Group by last_name
Having COUNT(*) >=2; 

-- 3. Using the rental table, find out how many rentals were processed by each employee. -- 

Select staff_id, COUNT(*) as 'Staff ID Count'   
From rental  
Group by staff_id;

-- 4. Using the film table, find out how many films were released each year.--

Select release_year, COUNT(*) as 'Movies per year'   
From film
Group by release_year;

-- 5. Using the film table, find out for each rating how many films were there.--

Select rating, COUNT(*) as 'No of Movies'   
From film
Group by rating;

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places--

Select rating, round(avg(length),2) as 'Ave_Length'
From film
Group by rating
Order by length, rating desc;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours? --

Select rating, round(avg(length),2) as 'Ave_Length'
From film
Group by rating
Having AvE_Length > 120
Order by length, rating desc;
