SELECT
	u.user_name 'usuario',
CASE
	WHEN YEAR(MAX(r.reprodution_date)) >= 2021 THEN 'Usuário ativo'
	WHEN YEAR(MAX(r.reprodution_date)) < 2021 THEN 'Usuário inativo'
	ELSE 'Usuário não encontrado'
	END 'status_usuario'
FROM
	SpotifyClone.users u
INNER JOIN
	SpotifyClone.reprodution_history r
ON
	r.user_id = u.user_id
GROUP BY
	u.user_name
ORDER BY
	u.user_name;
  