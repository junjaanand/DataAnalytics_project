--  first month cha data aahe 
SELECT * from job_postings_fact 
WHERE EXTRACT(MONTH from job_posted_date) = 1
LIMIT 10;

--  created an table
create table january_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(MONTH from job_posted_date) = 1
    LIMIT 10;
create table february_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(MONTH from job_posted_date) = 2
    --  also we can apply yearl also
    LIMIT 10;
create table march_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(MONTH from job_posted_date) = 3
    LIMIT 10;

--  this will give you one month data 
-- SELECT * from march_jobs;

