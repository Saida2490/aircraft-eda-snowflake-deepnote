WITH airport_passengers AS (

SELECT
    f."Departure_Airport_Code" AS airport_code,
    a."Capacity" AS passengers
FROM INDIVIDUAL_FLIGHTS f
JOIN AIRCRAFT a
ON f."Aircraft_Id" = a."Aircraft_Id"

UNION ALL

SELECT
    f."Destination_Airport_Code" AS airport_code,
    a."Capacity" AS passengers
FROM INDIVIDUAL_FLIGHTS f
JOIN AIRCRAFT a
ON f."Aircraft_Id" = a."Aircraft_Id"

)

SELECT
    p."Airport_Name",
    SUM(passengers) AS total_passengers
FROM airport_passengers ap
JOIN AIRPORTS p
ON ap.airport_code = p."Airport_Code"
GROUP BY p."Airport_Name"
ORDER BY total_passengers DESC;