SELECT Genre,
    Round(100.0 * AVG(CASE WHEN publisher_type = 'amazon' THEN 1 ELSE 0 END), 2) as "Amazon",
    Round(100.0 * AVG(CASE WHEN publisher_type = 'big five' THEN 1 ELSE 0 END), 2) as "Big Five",
    Round(100.0 * AVG(CASE WHEN publisher_type = 'indie' THEN 1 ELSE 0 END), 2) as "indie",
    Round(100.0 * AVG(CASE WHEN publisher_type = 'single author' THEN 1 ELSE 0 END), 2) as "Single Author",
    Round(100.0 * AVG(CASE WHEN publisher_type = 'small/medium' THEN 1 ELSE 0 END), 2) as "Small/Medium",
    

FROM df
GROUP BY Genre