WITH source AS (
    SELECT * 
    FROM {{ source('olympics', 'olympics_raw') }}
)
,

renamed AS (
SELECT
    ID, NAME, SEX, AGE, HEIGHT, WEIGHT, TEAM, NOC, GAMES, YEAR, SEASON, CITY, SPORT, EVENT, MEDAL, NOC_REGION, NOC_NOTES
FROM source
)

SELECT *
FROM renamed