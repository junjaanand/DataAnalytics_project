--  optimal -  high demand and high paying 
/*
-what are the most optimal skills to learn(aka it's in high demand and a high-paying skill)? 
-identify skills in high demand and associated with high average salaries for Data Scientist    
- Concentrates on remote positions with specified salaries
-why ? targets skills that offer job security (high demand) and financial benefits (high salaries),
offering strategic insights for career development in data analysis*/

WITH skills_demand AS(
    SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    FROM  job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Scientist' AND salary_year_avg IS NOT NULL AND job_work_from_home =True
    GROUP BY skills_dim.skill_id
    -- limit 5

), avg_sal AS(
    SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        ROUND(avg(salary_year_avg),0) as salary
    FROM  
         job_postings_fact
    INNER JOIN 
        skills_job_dim 
    ON 
        job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN
        skills_dim 
    on 
        skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Scientist' and salary_year_avg IS NOT NULL AND job_work_from_home =True
    GROUP BY
        skills_dim.skill_id        
    limit 25
)

SELECT 
    skills_demand.skill_id,
    avg_sal.skills,
    demand_count,
    salary
from skills_demand
INNER JOIN avg_sal on skills_demand.skill_id  = avg_sal.skill_id