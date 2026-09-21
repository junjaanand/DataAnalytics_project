/*
find the number of remote jobs posting per skills
- display top 5 skills by there demand in remote jobs 
-include skillid,name and count of postingsrequring the skil 
*/

-- job_postings.job_id why we write this cause we have to specify kiska job_id chahiye


-- cte to find skills id and skill count
WITH remote_job_skills AS(

    select 
        -- job_postings.job_id,
        skill_id,
        -- work from homw kitane hai check karane ke liye
        -- job_postings.job_work_from_home
        count(*) as skill_count
    FROM 
        skills_job_dim as skills_to_job
    INNER JOIN
        job_postings_fact as job_postings 
    ON
        job_postings.job_id = skills_to_job.job_id
    WHERE
    --this stmt gives true where the jobs are work from home
        job_postings.job_work_from_home  = True AND job_postings.job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
)

SELECT 
    skills.skill_id,
    remote_job_skills.skill_count,
    skills
from 
    remote_job_skills
INNER JOIN 
    skills_dim as skills
ON  
    skills.skill_id = remote_job_skills.skill_id 
ORDER BY skill_count DESC
LIMIT 5 