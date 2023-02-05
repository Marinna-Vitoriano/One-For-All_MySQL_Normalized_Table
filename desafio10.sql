SELECT
	s.song_title 'nome',
    COUNT(r.user_id) 'reproducoes'
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.subscription sub ON sub.subscription_id = u.subscription_id
INNER JOIN SpotifyClone.reprodution_history r ON r.user_id = u.user_id
INNER JOIN SpotifyClone.songs s ON s.song_id = r.song_id
WHERE u.subscription_id = 1 OR u.subscription_id = 2
GROUP BY s.song_title
ORDER BY s.song_title;
