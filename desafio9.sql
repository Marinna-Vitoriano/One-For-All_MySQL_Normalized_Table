SELECT
    COUNT(r.user_id) 'quantidade_musicas_no_historico'
FROM SpotifyClone.reprodution_history r
INNER JOIN SpotifyClone.users u ON r.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';
