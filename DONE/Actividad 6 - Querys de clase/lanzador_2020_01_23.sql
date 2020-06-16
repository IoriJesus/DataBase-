desc order
set pagesize 99
set linesize 150
set echo on
set colsep ' || '
rem contar cuantas tuplas tenemos
select count(*) from grade;
rem determinar cuantos studiantes tenemos
select distinct(student_id) from grade;

select distinct(student_id) from grade order by 1;

rem determinar cuantas secciones tenemos
select distinct(section_id) from grade order by 1;

rem determinar cuantos codigos de calificaciones tenemos
select distinct(grade_type_code) from grade order by 1;

rem determinar cuantos ocurrencias de el codigo  tenemos
select distinct(grade_code_occurrence) from grade order by 1;

rem determinar cuantos valores diferentes de calif tenemos
select distinct(numeric_grade) from grade order by 1;

rem  contar las calificaciones  por estudiante 
select student_id, count(*) 
	from grade
	group by student_id
	order by 2;

rem  contar las calificaciones  por estudiante 
select student_id,grade_type_code, count(*) 
	from grade
	group by student_id, grade_type_code
	order by 2;

prompt  contar calificaciones por estudiante y por seccion
select student_id,section_id, count(*) 
	from grade
	group by student_id, section_id
	order by 3,1,2;

prompt  contar calificaciones por estudiante y por seccion
prompt desplegar las que tengan mas de diez calificaciones
select student_id,section_id, count(*) 
	from grade
	group by student_id, section_id
	having count(*) > 10
	order by 3,1,2;

prompt  contar calificaciones por estudiante y por seccion
prompt desplegar las que tengan once calificaciones
select student_id,section_id, count(*) 
	from grade
	group by student_id, section_id
	having count(*) = 11
	order by 3,1,2;

prompt  contar calificaciones por estudiante y por seccion
prompt desplegar las que tengan once calificaciones
prompt filtrando las tuplas solo de los alumnos 199,200,208
select student_id,section_id, count(*) 
	from grade
	where student_id in (199,200,208)
	group by student_id, section_id
	having count(*) = 11
	order by 3,1,2;

prompt  desplegar calificaciones por estudiante,
prompt     por seccion por typo
prompt desplegar las que tengan once calificaciones
prompt filtrando las tuplas solo de los alumnos 199,200,208
select student_id,section_id, grade_type_code 
	from grade
	where student_id in (199,200,208)
	group by student_id, section_id, grade_type_code
	order by 1,2,3;	

prompt filtrando las tuplas solo de los alumnos 199,200,208	
select student_id,section_id, grade_type_code, numeric_grade 
	from grade
	where student_id in (199,200,208)
	order by 1,2,3;	

prompt desplegar las calificaciones 
prompt filtrando las tuplas solo de los alumnos 199,200,208	
select student_id,section_id, grade_type_code, numeric_grade 
	from grade
	where student_id in (199,200,208)
	order by 1,2,3;	

prompt obtener el promedio de las calificaciones por tipo 
prompt filtrando las tuplas solo de los alumnos 199,200,208	
col promedio format 999.999
select student_id,section_id, grade_type_code,
		avg(numeric_grade) promedio
	from grade
	where student_id in (199,200,208)
	group by student_id, section_id, grade_type_code
	order by 1,2,3;	

prompt filtremos solo las calificaciones de medio tiempo
col promedio format 999.999
select student_id,section_id, grade_type_code, 
		avg(numeric_grade) promedio
	from grade
	where student_id in (199,200,208) and
			grade_type_code = 'MT'
	group by student_id, section_id, grade_type_code
	order by 1,2,3;	
	
select student_id,section_id, grade_type_code, 
		avg(numeric_grade) promedio
	from grade
	where student_id in (199,200,208) 
	group by student_id, section_id, grade_type_code
	having grade_type_code = 'MT'
	order by 1,2,3;