CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date Date,
  end_date DATE
);

CREATE TABLE Students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  Phone VARCHAR(32),
  github VARCHAR(255),
  start_date Date,
  end_date Date,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);