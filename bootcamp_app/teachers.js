const { Client } = require('pg');

const client = new Client({
  user: 'rupijain',
  password: 123,
  host: 'localhost',
  database: 'bootcampx'
});
client.connect();
const args = process.argv.slice(2);
const values = [`${args[0]}`];
client.query(`SELECT  DISTINCT teachers.name as teacher, cohorts.name as cohort
              FROM teachers
              JOIN assistance_requests ON teacher_id = teachers.id
              JOIN students ON student_id = students.id
              JOIN cohorts ON cohort_id = cohorts.id
              WHERE cohorts.name = $1
              ORDER BY teacher;
            `, [values[0]])
      .then(res => {
        res.rows.forEach(user => {
          console.log(`${user.cohort}: ${user.teacher}`);
        })        
        client.end();
      })
      .catch(err => console.error('queue error', err.stack ));
