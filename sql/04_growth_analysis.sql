WITH growth_year AS (
    SELECT
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY')) AS year,
        AVG(COALESCE("ASM_Domestic", 0)) AS avg_asm_domestic
    FROM FLIGHT_SUMMARY_DATA
    GROUP BY
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY'))
),

best_growth AS (
    SELECT
        "Airline_Code",
        year,
        avg_asm_domestic
    FROM growth_year
    QUALIFY ROW_NUMBER() OVER (
        PARTITION BY "Airline_Code"
        ORDER BY avg_asm_domestic DESC
    ) = 1
)

SELECT
    "Airline_Code",
    year,
    avg_asm_domestic,
    CONCAT("Airline_Code", ' - ', year) AS label
FROM best_growth
ORDER BY "Airline_Code";





SELECT
    "Airline_Code",
    EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY')) AS year,
    AVG(COALESCE("ASM_Domestic", 0)) AS avg_asm_domestic
FROM FLIGHT_SUMMARY_DATA
GROUP BY
    "Airline_Code",
    EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY'))
ORDER BY year;