SELECT DISTINCT
    game_id,
    games,
    event_id,
    year,
    season,
    city,
    sport
FROM {{ ref('stg_olympics_raw') }}