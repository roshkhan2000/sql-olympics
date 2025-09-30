WITH source AS (
    SELECT * 
    FROM {{ source('olympics', 'olympics_raw') }}
)
,

renamed AS (
SELECT
    ID AS athlete_id,
    NAME,
    {{ dbt_utils.generate_surrogate_key(['name', 'year'])}} AS athlete_stats_id,
    SEX,
    AGE,
    HEIGHT,
    WEIGHT,
    TEAM,
    NOC,
    GAMES,
    {{ dbt_utils.generate_surrogate_key(['event', 'games', 'year', 'season', 'city', 'sport'])}} AS game_id,
    YEAR,
    SEASON,
    CITY,
    SPORT,
    EVENT,
    {{ dbt_utils.generate_surrogate_key(['event'])}} AS event_id,
    {{ dbt_utils.generate_surrogate_key(['athlete_stats_id', 'event', 'year'])}} AS result_id,
    MEDAL,
    NOC_REGION,
    NOC_NOTES
FROM source
)

SELECT *
FROM renamed