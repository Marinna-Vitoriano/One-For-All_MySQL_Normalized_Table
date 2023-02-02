SELECT
	a.artist_name 'artista',
    ab.album_title 'album'
FROM SpotifyClone.albums ab
INNER JOIN SpotifyClone.artists a ON ab.artist_id = a.artist_id
WHERE a.artist_name = 'Elis Regina'
ORDER BY ab.album_title;
