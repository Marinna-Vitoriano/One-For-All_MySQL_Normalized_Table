SELECT a.artist_name  'artista',
       ab.album_title 'album',
       COUNT(f.artist_id)    'seguidores'
FROM SpotifyClone.albums ab
       INNER JOIN SpotifyClone.artists a ON ab.artist_id = a.artist_id
       INNER JOIN SpotifyClone.followers f ON a.artist_id = f.artist_id
GROUP BY ab.album_title, a.artist_name
ORDER BY seguidores DESC, artista, album;
