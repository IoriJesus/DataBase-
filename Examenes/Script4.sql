clear screen

set colsep |

set pagesize 99;
set linesize 300;


COLUMN student_id HEADING Boleta
COLUMN section_id HEADING No-Seccion
COLUMN grade_type_code HEADING CODIGO-CALIFICACIÓN
COLUMN final_grade HEADING Calificacion
COLUMN enroll_date HEADING Fecha-inscripcion

select
	enrollment.student_id
	,section.section_id
	,grade.grade_type_code
	,grade.grade_code_occurrence
	,enrollment.final_grade
	,enrollment.enroll_date	
from enrollment
	,section
	,grade
where 
	grade.student_id = enrollment.student_id;

select
	enrollment.student_id
	,section.section_id
	,grade.grade_type_code
	,grade.grade_code_occurrence
	,enrollment.final_grade
	,TO_CHAR(enrollment.enroll_date, 'DD MOn')
from enrollment
	,section
	,grade
where 
	grade.student_id = enrollment.student_id;

select
	enrollment.student_id
	,section.section_id
	,grade.grade_type_code
	,grade.grade_code_occurrence
	,enrollment.final_grade
	,TO_CHAR(enrollment.enroll_date, 'Dy')
from enrollment
	,section
	,grade
where 
	enrollment.student_id = 220;
SPOOL OFF	
PAUSE

select
	enrollment.student_id
	,section.section_id
	,grade.grade_type_code
	,grade.grade_code_occurrence
	,enrollment.final_grade
	,TO_CHAR(enrollment.enroll_date, 'Dy') 
from enrollment
	,section
	,grade
where 
	section.section_id = 119;
