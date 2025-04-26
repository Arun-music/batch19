-- 1. A new student joined recently and is unsure about what courses they are enrolled in 
	-- Can you list all courses a student with email 'rohit.mehra@lms.com' is enrolled in? -- 
    select u.email, c.course_title, c.course_id, u.role from user u left join enrollments e on u.user_id = e.student_id 
		join courses c on e.course_id =  c.course_id where u.email = 'rohit.mehra@lms.com';
-- 2. Your team wants to onboard new users. Can you extract the names and sign-up dates of all users who joined in the month of feb in 2023?
select first_name, last_name, user_id, signup_date from user where year (signup_date) = '2023' and month(signup_date) = '02' order by signup_date;    
-- 3. An admin wants to see which modules exist under a course titled 'Data Science with R. Can you help them out?
select m.module_id, m.module_title, c.course_title  from modules m join courses c on m.course_id = c.course_id where c.course_title  = 'Data Science with R';
-- 4. One student is claiming they submitted an assessment but the instructor can't find it. 
-- Can you check if there's any submission by user ID 26 for assessment ID 80?
select u.user_id, u.first_name, u.last_name, a.assessment_id from user u join asessment_submission a where a.assessment_id = 80 and u.user_id = 26;
-- 5. Can you fetch all distinct assessment types available across the LMS?
select distinct(assessment_type) from assessments;