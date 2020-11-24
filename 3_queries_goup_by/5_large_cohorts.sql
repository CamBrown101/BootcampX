SELECT cohorts.name AS cohort_name, COUNT(students.*) AS student_count
FROM cohorts
JOIN students
ON cohort_id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY student_count;
