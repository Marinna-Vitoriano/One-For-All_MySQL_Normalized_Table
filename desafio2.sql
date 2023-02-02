SELECT
(SELECT COUNT(song_id) FROM SpotifyClone.songs) 'cancoes',
(SELECT COUNT(artist_id) FROM SpotifyClone.artists) 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.albums) 'albuns';
