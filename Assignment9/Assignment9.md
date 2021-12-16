- Find IDs and names of all students who have taken a course in the 'Comp. Sci.' department as well as a course in the 'Biology' department  (not necessarily in the same semester).  (Join the student, takes and course tables to do this). Eliminate duplicates.

- Find names of all students whose total credits exceed 50. Do not eliminate duplicate names.

- Find the ID and name of all instructors belonging to either Comp. Sci. or Finance department whose salary is less than 85000. Output in the descending order of salary.

- Find the name of students and course_id of the courses they have taken in Fall 2009.

- Find the ID and name of all students who have NEVER gotten a F grade.

- Find course_id and titles (in lexicographical order of course_id) of all courses that have prereqs. Limit the output to 5 courses by using the LIMIT 5 clause at the end of the SQL query.

- Find the total number of courses that each student has registered for; output only the ID and number of courses.

- For each department, find the total number of course registrations (the takes relation has registrations, but dept_name is in the course relation); output the dept_name and total number of registrations.

- Using the previous query in a with clause, find the maximum number of registrations in any department (output will be a single number)

- As in the previous question, but find the associated department name also, using the previous query in a with clause.