/*
Question what are the top high paying data scientist jobs 
    -  finding top 10 high paying data scientist roles that are available remotely 
    - focuses on job posting with specified salaries(remove null)
    - highlighting the top paying jobs for data scientists 
    
*/

--  Here we used the left join also to connect two differnet table to use the columns names as name for geting the comapny name 

-- Query -  
SELECT 
    job_id,
    job_title,
    company_dim.name as company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM    
    job_postings_fact
LEFT JOIN 
    company_dim
ON 
    job_postings_fact.company_id = company_dim.company_id
where 
    job_work_from_home  = True AND job_title_short = 'Data Scientist' and salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10