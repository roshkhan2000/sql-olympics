SELECT
    r.result_id,
    r.athlete_id,
    s.sex AS sex,
    a.name AS athelete_name,
    r.event_id,
    e.event AS event,
    g.year AS year,
    g.city AS city,
    g.games AS game,
    g.sport AS sport,
    r.medal
FROM 
    {{ ref('int_results') }} AS r
LEFT JOIN 
    {{ ref('int_athletes') }} AS a
ON 
    r.athlete_id = a.athlete_id
LEFT JOIN
    {{ ref('int_athletes_stats') }} AS s
ON
    s.athlete_id = r.athlete_id
LEFT JOIN
    {{ ref('int_events') }} AS e
ON
    r.event_id = e.event_id
LEFT JOIN
    {{ ref('int_games') }} AS g
ON
    g.event_id = e.event_id
WHERE
    medal = 'Gold'