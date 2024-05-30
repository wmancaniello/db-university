-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT
    `students`.`name`,
    `students`.`surname`
FROM
    `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE
    `degrees`.`name` = "Corso di Laurea in Economia";


-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze

SELECT
    `degrees`.`name`,
    `degrees`.`level`,
    `departments`.`name` AS `department_name`
FROM
    `degrees`
INNER JOIN `departments` ON `degrees`.`department_id` = `department_id`
WHERE
    `departments`.`name` = "Dipartimento di Neuroscienze" AND `degrees`.`level` = "magistrale";