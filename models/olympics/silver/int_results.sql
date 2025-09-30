SELECT DISTINCT
    result_id,
    athlete_id,
    event_id,
    medal
FROM {{ ref('stg_olympics_raw') }}