--  we found count of company  this query we want to use subquery in anothter statement
--  CTE - COMMON TABLE EXPRESSION USED FOR WRITE SUBQUERIES IN SUITABLE MANNER

WITH company_job_count AS(
    SELECT 
        company_id,count(*) AS total_postings
    FROM 
        job_postings_fact
    GROUP BY
         company_id
)


SELECT 
    name,
    company_job_count.total_postings
from 
    company_dim
LEFT JOIN
    company_job_count
ON
    company_job_count.company_id = company_dim.company_id
ORDER BY
    total_postings DESC