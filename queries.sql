--Selezionare tutti gli studenti nati nel 1990 (160)--
SELECT * 
FROM `students`
WHERE `date_of_birth` >= '1990-01-01' AND `date_of_birth` <= '1990-12-31';

--Selezionare tutti i corsi che valgono più di 10 crediti--
SELECT * 
FROM `courses` 
WHERE `cfu` > 10