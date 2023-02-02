SELECT
	u.user_name 'usuario',
    COUNT(r.user_id) 'qt_de_musicas_ouvidas',
    ROUND(SUM(s.song_duration) / 60, 2) 'total_minutos'
FROM
	SpotifyClone.users u
INNER JOIN
	SpotifyClone.reprodution_history r
ON
	r.user_id = u.user_id
INNER JOIN
	SpotifyClone.songs s
ON
	s.song_id = r.song_id
GROUP BY
	u.user_name
ORDER BY
	u.user_name;
