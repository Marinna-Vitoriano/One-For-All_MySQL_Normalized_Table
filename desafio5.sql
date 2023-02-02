SELECT
	s.song_title 'cancao',
    COUNT(r.song_id) 'reproducoes'
FROM
	SpotifyClone.songs s
INNER JOIN
	SpotifyClone.reprodution_history r
ON
	r.song_id = s.song_id
GROUP BY
	s.song_id
ORDER BY
	reproducoes DESC, s.song_title
LIMIT 2;
