SELECT DISTINCT
    event_id,
    event
FROM {{ ref('stg_olympics_raw') }}