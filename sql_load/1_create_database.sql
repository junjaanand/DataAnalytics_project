CREATE DATABASE sql_course;

-- DROP DATABASE IF EXISTS sql_course;

SELECT * FROM company_dim
LIMIT 100;

SELECT * FROM job_postings_fact LIMIT 50;



--  HANDLING DATES IN SQL
--  here we got the date with timestamp also 
select job_posted_date from job_postings_fact;

--  NOW IT IS ONLY DISPLAY THE DATES ONLY
SELECT 
    job_title AS TITLE,
    search_location AS LOCATION ,
    job_posted_date::DATE AS DATES 
FROM
    job_postings_fact;


--  ALSO WE CAN CONVERT OUR TIMESTAMP WITH SPECIFIC TIMEZONE

--  BASICALLY TIMEZZONE CONVERT THE TIME WITH THERE SPECIFIC CONTENT LIKE EASTERN TIME ZONE UTC AND ALL SO THAT WITH THAT SPECIFIC TIMEZONE WE CAN WORK COMMENT

SELECT 
    job_title AS TITLE,
    search_location AS LOCATION ,
    job_posted_datE AT TIME ZONE 'UTC' AT TIME ZONE 'EST',
    EXTRACT(MONTH FROM job_posted_date) as months
FROM 
    job_postings_fact
LIMIT 5;


SELECT     
    count(job_id),
    EXTRACT(MONTH FROM job_posted_date) as month
from
    job_postings_fact
GROUP BY
    month
LIMIT 5;  


-- finding the avg sal of hourly and yearly after the specific date
SELECT
job_schedule_type,
    avg(salary_year_avg) as avg_sal_year,
    avg(salary_hour_avg) as avg_sal_hours
FROM 
    job_postings_fact
where 
    job_posted_date > '2023-06-01'
GROUP BY
job_schedule_type;


-- finding the job posted by moths in 2023
--  extracted moths and total posting count 
-- after that we applied where clause to find the opening ==2023
--  after this we devided our openings with specific months
--  and ordered ascending order
SELECT
    EXTRACT(MONTH from job_posted_date) as posted_months,
    count(*) as total_posting
from
    job_postings_fact
where 
    EXTRACT(YEAR from job_posted_date)  =2023
GROUP BY 
    posted_months
order by posted_months ASC;

SELECT
job_schedule_type,
    avg(salary_year_avg) as avg_sal_year,
    avg(salary_hour_avg) as avg_sal_hours
FROM 
    job_postings_fact