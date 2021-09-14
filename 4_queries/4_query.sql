select cohorts.name, avg(completed_at - started_at) 
as average_assistance_time
from assistance_requests 
join students ON student_id = students.id 
join cohorts ON  students.cohort_id = cohorts.id
group by cohorts.name
order by average_assistance_time;