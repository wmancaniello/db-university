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