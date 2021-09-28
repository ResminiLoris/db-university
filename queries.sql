--Selezionare tutti gli studenti nati nel 1990 (160)--
SELECT * 
FROM `students`
WHERE `date_of_birth` >= '1990-01-01' AND `date_of_birth` <= '1990-12-31';

--Selezionare tutti i corsi che valgono più di 10 crediti--
SELECT * 
FROM `courses` 
WHERE `cfu` > 10;

-- Selezionare tutti gli studenti che hanno più di 30 anni--
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) < (YEAR(CURDATE()) - 30);

--oppure--
SELECT * 
FROM `students` 
WHERE TIMESTAMPDIFF(YEAR,`date_of_birth`,CURDATE()) > 30; 

--Selezionare tutti i corsi di laurea magistrale (38) --
SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

--Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)--
SELECT * 
FROM `exams` 
WHERE `date` = '2020-06-20' AND `hour` >= '14:00:00';

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286) --
SELECT * 
FROM `courses` 
WHERE `period`='I semestre' AND `year` = 1;

--Da quanti dipartimenti è composta l'università? (12)--
SELECT COUNT(name) 
FROM departments;



