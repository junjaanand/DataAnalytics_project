
--  CASE STATEMENTS : USED LIKE IF ELSE STMT
/*
CASE
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    ...
    ELSE default_result
END
*/

--  QUERY : 
-- "ANYWHERE" JOBS ARE REMOTE
-- NEW YORK JOBS AS "LOCAL"
-- OTHERWISE AS ONSITE

SELECT 
    job_title_short,
    job_location ,
CASE
    WHEN job_location = 'Anywhere' THEN 'Remote'
    WHEN job_location = 'New York,NY' THEN 'Local'
    ELSE 'onsite'
end as location_type
from 
    job_postings_fact;