Select assignments.id, assignments.name, assignments.day,
assignments.chapter, count(assistance_requests) as total_requests
from assignments
join assistance_requests ON assignments.id = assignment_id
group by assignments.id
order by total_requests desc;


-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;