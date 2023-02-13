SELECT song_title 'nome_musica',
(CASE
	WHEN song_title LIKE '%Bard%' THEN REPLACE(song_title, 'Bard', 'QA')
    WHEN song_title LIKE '%Amar%' THEN REPLACE(song_title, 'Amar', 'Code Review')
    WHEN song_title LIKE '%Pais%' THEN REPLACE(song_title, 'Pais', 'Pull Requests')
    WHEN song_title LIKE '%SOUL%' THEN REPLACE(song_title, 'SOUL', 'CODE')
    WHEN song_title LIKE '%SUPERSTAR%' THEN REPLACE(song_title, 'SUPERSTAR', 'SUPERDEV')
    ELSE song_title
END) AS 'novo_nome'
FROM SpotifyClone.songs
WHERE 
song_title LIKE '%Bard%' OR 
song_title LIKE '%Amar%'OR 
song_title LIKE '%Pais%'OR
song_title LIKE '%SOUL%'OR
song_title LIKE '%SUPERSTAR%'
ORDER BY song_title DESC;
