SELECT requests.request_id
FROM requests
JOIN senators ON requests.senator_id = senators.senator_id
WHERE senators.party = 'Democrat';
