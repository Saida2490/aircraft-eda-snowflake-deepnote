SELECT
    a."Aircraft_Type",
    COUNT(*) AS number_of_flights
FROM INDIVIDUAL_FLIGHTS f
JOIN AIRCRAFT a
    ON f."Aircraft_Id" = a."Aircraft_Id"
GROUP BY a."Aircraft_Type"
ORDER BY number_of_flights DESC;