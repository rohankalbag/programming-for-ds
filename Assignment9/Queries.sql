select ID,name from (
select ID, name from (
	select student.ID, student.name, takes.course_id
	from student,takes
	where student.ID = takes.ID) A, course 
  where course.course_id = A.course_id and dept_name='Comp. Sci.'
intersect
select ID, name from (
	select student.ID, student.name, takes.course_id
	from student,takes
	where student.ID = takes.ID) A, course 
  where course.course_id = A.course_id and dept_name='Biology') X
  group by ID,name;

select name 
from student 
where tot_cred>50;

select id,name
from instructor
where (dept_name = 'comp. sci.' or dept_name = 'finance')
and (salary < 85000)
order by salary desc;

select name, course_id from (
  select student.name,takes.course_id,takes.year
  from student,takes
  where student.id = takes.id and takes.semester='Fall') X
where year='2009';

select distinct X.id, X.name from student X,takes Y
where X.id=Y.id and X.id not in (select id from takes where takes.grade = 'F');

select course.course_id, course.title 
from course, prereq 
where course.course_id=prereq.course_id 
order by course.title asc
limit 5; 

select student.ID, count(distinct course_id) as numberofcourses
from student,takes
where student.id=takes.id
group by student.ID;

select course.dept_name, count(takes.ID) 
from takes,course 
where takes.course_id=course.course_id 
group by course.dept_name;

with maxreg(value) as (
select max(B.noofreg) as maximum 
from (
  select course.dept_name, count(takes.ID) as noofreg
  from takes, course 
  where takes.course_id = course.course_id  
  group by course.dept_name) B
) 

select maxreg.value 
from (
  select course.dept_name, count(takes.ID) as noofreg
  from takes,course 
  where takes.course_id=course.course_id 
  group by course.dept_name
) A, maxreg where A.noofreg = maxreg.value;

with maxreg(value) as (
select max(B.noofreg) as maximum 
from (
  select course.dept_name, count(takes.ID) as noofreg
  from takes, course 
  where takes.course_id = course.course_id  
  group by course.dept_name) B
) 

select A.dept_name 
from (
  select course.dept_name, count(takes.ID) as noofreg
  from takes,course 
  where takes.course_id=course.course_id 
  group by course.dept_name
) A, maxreg where A.noofreg = maxreg.value;