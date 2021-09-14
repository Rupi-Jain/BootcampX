select cohorts.name, sum(completed_at - started_at) 
as total_duration
from assistance_requests 
join students ON student_id = students.id 
join cohorts ON  students.cohort_id = cohorts.id
group by cohorts.name
order by total_duration;