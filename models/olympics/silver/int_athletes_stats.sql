SELECT DISTINCT
    athlete_id,
    athlete_stats_id,
    sex,
    height,
    weight,
    age,
    year,
    noc,
    team
FROM {{ ref('stg_olympics_raw') }}