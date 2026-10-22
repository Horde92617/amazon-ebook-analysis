SELECT genre,
        ROUND(AVG(daily_average_author_revenue), 2) as mean_revenue,
        ROUND(MEDIAN(daily_average_author_revenue), 2) as median_revenue,
        ROUND(QUANTILE(daily_average_author_revenue, 0.75), 2) as p75_revenue,
        ROUND(QUANTILE(daily_average_author_revenue, 0.90), 2) as p90_revenue,
        COUNT(*) as n

FROM df
GROUP BY genre
ORDER BY mean_revenue DESC