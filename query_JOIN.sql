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

-- 3.  Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT
    `courses`.`name` AS `Corsi Professore`
FROM
    `courses`
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
WHERE
    `course_teacher`.`teacher_id` = 44;


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT
    `students`.`name` AS `Nome`,
    `students`.`surname` AS `Cognome`,
    `degrees`.`name` AS `Corso di laurea`,
    `departments`.`name` AS `Dipartimento`
FROM
    `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
ORDER BY
    `students`.`surname`,
    `students`.`name`;