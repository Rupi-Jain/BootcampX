select name, avg(assignment_submissions.duration) as average_assignment_duration
from assignment_submissions join students 
ON student_id = students.id
where students.end_date IS NULL
group by name order by average_assignment_duration desc;