WITH rpm_base AS (
    SELECT
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY')) AS year,
        SUM(COALESCE("RPM_Domestic", 0)) AS rpm_domestic,
        SUM(COALESCE("RPM_International", 0)) AS rpm_international,
        SUM(COALESCE("RPM_Domestic", 0) + COALESCE("RPM_International", 0)) AS rpm_total
    FROM FLIGHT_SUMMARY_DATA
    GROUP BY
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY'))
)
SELECT *
FROM rpm_base
ORDER BY "Airline_Code", year;




WITH rpm_base AS (
    SELECT
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY')) AS year,
        SUM(COALESCE("RPM_Domestic", 0) + COALESCE("RPM_International", 0)) AS rpm_total
    FROM FLIGHT_SUMMARY_DATA
    GROUP BY
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY'))
)
SELECT
    "Airline_Code",
    year,
    rpm_total
FROM rpm_base
QUALIFY ROW_NUMBER() OVER (
    PARTITION BY "Airline_Code"
    ORDER BY rpm_total DESC
) = 1
ORDER BY "Airline_Code";




WITH rpm_by_year AS (
    SELECT
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY')) AS year,
        SUM(COALESCE("RPM_Domestic", 0)) AS rpm_domestic,
        SUM(COALESCE("RPM_International", 0)) AS rpm_international,
        SUM(COALESCE("RPM_Domestic", 0) + COALESCE("RPM_International", 0)) AS rpm_total
    FROM FLIGHT_SUMMARY_DATA
    GROUP BY
        "Airline_Code",
        EXTRACT(YEAR FROM TO_DATE("Date", 'DD/MM/YYYY'))
),

best_domestic AS (
    SELECT
        "Airline_Code",
        year AS best_domestic_year,
        rpm_domestic
    FROM rpm_by_year
    QUALIFY ROW_NUMBER() OVER (
        PARTITION BY "Airline_Code"
        ORDER BY rpm_domestic DESC
    ) = 1
),

best_international AS (
    SELECT
        "Airline_Code",
        year AS best_international_year,
        rpm_international
    FROM rpm_by_year
    QUALIFY ROW_NUMBER() OVER (
        PARTITION BY "Airline_Code"
        ORDER BY rpm_international DESC
    ) = 1
),

best_total AS (
    SELECT
        "Airline_Code",
        year AS best_total_year,
        rpm_total
    FROM rpm_by_year
    QUALIFY ROW_NUMBER() OVER (
        PARTITION BY "Airline_Code"
        ORDER BY rpm_total DESC
    ) = 1
)

SELECT
    d."Airline_Code",
    d.best_domestic_year,
    d.rpm_domestic,
    i.best_international_year,
    i.rpm_international,
    t.best_total_year,
    t.rpm_total
FROM best_domestic d
JOIN best_international i
    ON d."Airline_Code" = i."Airline_Code"
JOIN best_total t
    ON d."Airline_Code" = t."Airline_Code"
ORDER BY d."Airline_Code";