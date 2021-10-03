--Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`surname`, `students`.`name` 
FROM `students` 
JOIN `degrees` 
ON `degrees`.`id`=`students`.`degree_id` 
WHERE `degrees`.`name`='Corso di Laurea in Economia'

--Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name` 
FROM `degrees` 
JOIN `departments` 
ON `departments`.`id`=`degrees`.`department_id` 
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

--Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
--!!NON FUNZIONA MA NON RIESCO A CAPIRE PERCHE!!
SELECT `courses` . *
FROM `courses`
JOIN `course_teacher`
ON `courses`.`id`= `course_teacher`.`teacher_id`
WHERE `teachers`.`name`="Fulvio"
AND `teachers`.`surname`= "Amato";

--Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`,`students`.`surname`,`degrees`.`name`, `departments`.`name`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`,`students`.`name`

--Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.*,`courses`.*,`teachers`.*
FROM `degrees`
JOIN `courses`
ON `courses`.`id` = `degrees`.`id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`

--Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `teachers`.`name`, `teachers`.`surname`, `departments`.`name`
FROM `teachers`
JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `courses`
ON `courses`.`id`= `course_teacher`.`course_id`
JOIN `degrees`
ON `degrees`.`id`=`courses`.`degree_id`
JOIN `departments`
ON `departments`.`id`=`degrees`.`department_id`
WHERE `departments`.`name`= 'Dipartimento di Matematica'