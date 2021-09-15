const { Client } = require('pg');

const client = new Client({
  user: 'rupijain',
  password: 123,
  host: 'localhost',
  database: 'bootcampx'
});
client.connect();
const args = process.argv.slice(2);
console.log(`SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
where cohorts.name like '${args[0]}%'
LIMIT  ${parseInt(args[1])};
`);
client.query(`SELECT students.id as student_id, students.name as name, cohorts.name as cohort
              FROM students
              JOIN cohorts ON cohorts.id = cohort_id
              where cohorts.name like '${args[0]}%'
              LIMIT  ${args[1]};
            `)
      .then(res => {
        res.rows.forEach(user => {
          console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
        })        
        client.end();
      })
      .catch(err => console.error('queue error', err.stack ));


