CREATE TABLE IF NOT EXISTS job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume boolean,
    resume_file_name varchar(255),
    cover_letter_sent boolean,
    cover_letter_file_name varchar(255),
    status varchar(50)  
);


--  inserting values
INSERT INTO job_applied(
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
) VALUES 
    (1, '2024-02-01', true,  'resume_01.pdf', true,  'cover_letter_01.pdf', 'submitted'),
    (2, '2024-02-02', false, 'resume_02.pdf', false, NULL,                  'interviewed_scheduled'),
    (3, '2024-02-03', true,  'resume_03.pdf', true,  'cover_letter_03.pdf', 'ghosted'),
    (4, '2024-02-04', true,  'resume_04.pdf', false, NULL,                  'submitted'),
    (5, '2024-02-05', false, 'resume_05.pdf', true,  'cover_letter_05.pdf', 'rejected');

-- select * FROM job_applied
-- ORDER BY job_id ASC;

--  ALTER TABLE - USED TO(ADD, REMOVE)-> NEW COLUMNS 
ALTER TABLE job_applied
ADD COLUMN contact varchar(50);

-- removing column
-- alter TABLE job_applied
-- drop column contact;

-- UPDATE SET WHERE 
UPDATE job_applied
SET contact= 'varun junja'
where job_id = 1;

UPDATE job_applied
SET contact= 'anand junja'
where job_id = 2;

UPDATE job_applied
SET contact= 'vary junja'
where job_id = 3;

UPDATE job_applied
SET contact= 'caran junja'
where job_id = 4;

UPDATE job_applied
SET contact= 'maran junja'
where job_id = 5;

-- SELECT * FROM job_applied;

-- using  rename from alter table example
ALTER TABLE job_applied
rename column contact to contact_name;

--  changing the datatypes 
ALTER TABLE job_applied
alter column contact_name type text;

--  droping columns
ALTER TABLE job_applied
drop column contact_name;

SELECT * FROM job_applied ;