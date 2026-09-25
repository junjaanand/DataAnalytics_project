--  what are the top skills based on salary for my role
/*
Query 4
Scenario:
Answer: What are the top skills based on salary?
Look at the average salary associated with each skill for Data scientist positions
Focuses on roles with specified salaries, regardless of location
Why? It reveals how different skills impact salary levels for Data Analysts and helps identify the most financially rewarding skills to acquire or improve

*/

--  this is query of high demand skills and there demand with specific domain like data scientist
--  now we have to find the avg sal associated with each each skill for data scientist


--  THIS IS AVG_SALARY OF THE 
SELECT 
    skills,
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
    skills
ORDER BY 
    salary DESC
limit 25


/*

INSIGHTS & TREND ANALYSIS: Top 25 Highest-Paying Skills for Data Scientists

Key Findings:
1. Compliance & Data Governance Command the Highest Premium:
   - GDPR ranks #1 ($217,738), showing that enterprise privacy, governance, 
     and risk management carry massive market value.

2. Systems & High-Concurrency Languages Outpay Pure Scripting:
   - High salaries for Golang ($208.7k), Rust ($161.2k), C ($164.8k), and 
     Julia ($157.2k) indicate strong demand for production-grade, low-latency 
     inference and backend integration rather than basic data analysis alone.

3. Distributed & Specialized Databases Beat Standard SQL:
   - Strong premiums on Neo4j ($171.6k), DynamoDB ($169.6k), Redis ($162.5k), 
     and Cassandra ($160.8k) show an emphasis on non-relational, high-throughput, 
     and graph architectures.

4. MLOps & Orchestration are Key Differentiators:
   - Tools like Airflow ($157.4k) and OpenCV ($172.5k) highlight the convergence 
     of traditional data science with end-to-end pipeline automation and computer vision.

Summary:
The market heavily rewards hybrid profiles—data scientists who combine modeling 
with enterprise data privacy (GDPR), low-latency engineering (Go/Rust/C), and 
scalable database systems (Neo4j/DynamoDB/Redis).
*/