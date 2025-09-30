SELECT DISTINCT
    athlete_id,
    name
FROM {{ ref('stg_olympics_raw') }}