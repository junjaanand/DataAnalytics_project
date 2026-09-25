# Data Scientist Job Market SQL Analysis

## Introduction
This project analyzes job market data for Data Scientist roles using SQL queries. The goal is to identify the most valuable skills, the highest-paying job opportunities, and the best combinations of salary and demand for remote Data Scientist positions.

The analysis is built from job market datasets that include:
- job postings
- company information
- skill mappings
- salary data
- remote work indicators

The project focuses on understanding which skills and job profiles are most attractive in the current data science job market.

project quries : [project_sql_folder](/project_sql/)

## Project Purpose
This project answers key questions such as:
- What are the highest-paying Data Scientist jobs?
- Which skills appear most often in top-paying roles?
- What are the most in-demand skills for Data Scientists?
- Which skills are both highly demanded and highly paid?

The analysis helps job seekers and aspiring Data Scientists understand where to invest their time for career growth.

## Tools Used
The project uses the following tools and technologies:
- SQL for data extraction and analysis
- PostgreSQL-style SQL syntax
- VS Code for writing and organizing queries
- CSV data files imported into a database
- SQL joins, filters, aggregations, grouping, and CTEs
- Data analysis through querying and result interpretation

## Background
The project is based on job-posting data for Data Scientist roles, with a focus on remote positions and salary-based analysis. The main tables used include:
- job_postings_fact
- company_dim
- skills_dim
- skills_job_dim

Key filters used across the analysis:
- job_title_short = 'Data Scientist'
- salary_year_avg IS NOT NULL
- job_work_from_home = True

These filters ensure the study focuses on relevant, salary-reported, remote Data Scientist roles.

## SQL Analysis Workflow
The project contains multiple SQL queries designed to answer different business questions:

### 1. Highest-Paying Data Scientist Jobs
This query identifies the top 10 remote Data Scientist jobs with the highest annual salaries, joining the job postings table with the company table to bring in the company name.

Key insight:
- It helps identify which employers are offering premium salaries for Data Scientists.

### 2. Skills Required in Top-Paying Jobs
This query uses a CTE to first select the highest-paying Data Scientist jobs, and then joins the skills table to show the skills required in those jobs.

Key insight:
- It reveals which skills are most often tied to highly compensated data science roles.

### 3. Most In-Demand Skills
This query calculates how many job postings require each skill for Data Scientist positions.

Key insight:
- It shows the skills with the strongest market demand.

### 4. Top Skills Based on Salary
This query calculates the average salary associated with each skill for Data Scientist roles.

Key insight:
- It identifies which skills command the highest salary premiums.

### 5. Most Optimal Skills
This query combines two factors:
- high demand
- high salary

The result is a list of skills that are both competitive in the market and financially rewarding.

Key insight:
- This is the most strategic analysis for learning and career planning.

## What I Learned
Through this project, I learned several important lessons:

1. Salary is not driven by one skill alone
   The market rewards a combination of technical and specialized skills rather than just basic Python or SQL knowledge.

2. Remote Data Scientist roles can pay very well
   Filtering for remote positions highlights that many high-paying opportunities are available outside traditional office-based locations.

3. High-paying skills often include specialized and technical tools
   Skills like governance, big data systems, data engineering tools, and low-latency programming languages often appear in higher-paying roles.

4. In-demand skills are not always the same as highest-paying skills
   Some skills are common in the market, while others are rarer but more valuable financially.

5. The strongest career strategy is to combine demand and salary
   The best opportunities come from skills that are both widely required and associated with above-average compensation.

6. SQL is a powerful tool for career analytics
   By writing structured queries and joining multiple tables, it becomes possible to turn raw job data into business-ready insights.

## Key Findings
Some of the most notable insights from the analysis include:
- Privacy and governance-related skills such as GDPR are associated with high salaries.
- Programming languages such as Go, Rust, C, and Julia show strong salary premiums.
- Distributed and specialized database tools like Neo4j, DynamoDB, Redis, and Cassandra are tied to higher compensation.
- Data science roles are increasingly combining modeling, engineering, and automation skills.

This indicates that modern Data Scientist roles are not limited to statistics and machine learning—they also require data engineering, systems thinking, and production-ready tooling knowledge.

## Conclusion
This project demonstrates how SQL can be used to analyze real-world labor market trends and turn them into practical career guidance. It shows that the strongest Data Scientist profile is not based on one skill alone, but on a balanced combination of in-demand technical expertise, specialization, and salary potential.

The most valuable lesson is that strategic skill development should focus on both market demand and compensation. By targeting skills that are highly valued and frequently requested, a Data Scientist can improve both employability and earning potential.

This project helped me understand how to:
- query structured data efficiently
- join related tables
- analyze market trends with SQL
- identify high-value skills for career growth

Overall, the analysis provides a strong foundation for making informed decisions about learning priorities and career direction in data science.
