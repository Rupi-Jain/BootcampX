select sum(assignment_submissions.duration) from assignment_submissions join 
students on students.id = assignment_submissions.student_id where name = 'Ibrahim Schimmel';