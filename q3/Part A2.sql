SELECT senators.state
FROM senators
LEFT JOIN requests ON senators.senator_id = requests.senator_id
GROUP BY senators.state
HAVING COUNT(DISTINCT requests.senator_id) = 1;
