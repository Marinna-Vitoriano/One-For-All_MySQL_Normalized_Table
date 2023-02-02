SELECT
	MIN(s.subscription_price) 'faturamento_minimo',
    MAX(s.subscription_price) 'faturamento_maximo',
	ROUND(AVG(subscription_price), 2) 'faturamento_medio',
	SUM(subscription_price) 'faturamento_total'
FROM
	SpotifyClone.subscription s
INNER JOIN
	SpotifyClone.users u
ON
	u.subscription_id = s.subscription_id;
  