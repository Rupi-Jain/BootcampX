select cohorts.name as cohort, count(*) as total_submissions
from assignment_submissions 
join students on assignment_submissions.student_id = Students.id 
join cohorts on students.cohort_id = cohorts.id
group by cohorts.name
order by count(*) desc; 