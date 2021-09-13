select students.name, avg(assignment_submissions.duration) as average_assignment_duration,
avg(assignments.duration)
from assignment_submissions join students 
ON student_id = students.id join
assignments on assignment_submissions.assignment_id = assignments.id
where students.end_date IS NULL
group by students.name 
having  avg(assignment_submissions.duration) < avg(assignments.duration)
order by average_assignment_duration;

-- select students.name, assignment_submissions.duration,
-- assignments.duration,assignment_id
-- from assignment_submissions join students 
-- ON student_id = students.id join
-- assignments on assignment_submissions.assignment_id = assignments.id;
