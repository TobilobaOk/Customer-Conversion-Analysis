#create new database

Create database raw_event;
#import Table raw_eventsdataset

select*from raw_eventsdataset;

#check events name to select funnel stages
select event_name, count(*) as events from raw_eventsdataset group by event_name order by events desc;

#remove user_pseudo_id  Duplicate for each events 
SELECT 
    event_name,
    COUNT(DISTINCT user_pseudo_id) AS unique_user_count
FROM raw_eventsdataset
GROUP BY event_name
ORDER BY unique_user_count DESC;

# Remove Duplicate and Filter event to only six event stages
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY user_pseudo_id, event_name
               ORDER BY event_timestamp
           ) AS rn
    FROM raw_eventsdataset
    WHERE event_name IN (
	   'session_start',
        'view_item',
        'add_to_cart',
        'begin_checkout',
        'add_payment_info',
        'purchase'
    )
) deduped
WHERE rn = 1;

#Export the table and import it table 
select * from newraw_events;

select event_name, count(*) as events from newraw_events group by event_name order by events desc;

SELECT event_name, COUNT(DISTINCT user_pseudo_id) AS unique_user_count from newraw_events where event_name !='add_payment_info' group by event_name order by unique_user_count desc;

# create table events per category
select category, count(*) as category_count from newraw_events group by category;

SELECT 
    event_name,
    COUNT(CASE WHEN category = 'desktop' THEN user_pseudo_id END) AS desktop,
    COUNT(CASE WHEN category = 'mobile' THEN user_pseudo_id END) AS mobile,
    COUNT(CASE WHEN category = 'tablet' THEN user_pseudo_id END) AS tablet
FROM newraw_events
GROUP BY event_name order by desktop desc;

# create table events Per Top 3 country
SELECT country, COUNT(*) AS total_events
FROM newraw_events
GROUP BY country
ORDER BY total_events DESC limit 3;

select event_name,
    COUNT(CASE WHEN country = 'United States' THEN user_pseudo_id END) AS United_State,
    COUNT(CASE WHEN country = 'India' THEN user_pseudo_id END) AS India,
    COUNT(CASE WHEN Country = 'Canada' THEN user_pseudo_id END) AS Canada
FROM newraw_events
GROUP BY event_name order by United_State desc;
