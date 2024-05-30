-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT
    YEAR(`enrolment_date`) AS `Anno Iscrizione`,
    COUNT(*) AS `Conteggio TOTALE`
FROM
    `students`
GROUP BY
    YEAR(`enrolment_date`)
ORDER BY
    YEAR(`enrolment_date`);


-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT
    `office_address` AS `Office`,
    COUNT(*) AS `Numero docenti`
FROM
    `teachers`
GROUP BY
    `office_address`
