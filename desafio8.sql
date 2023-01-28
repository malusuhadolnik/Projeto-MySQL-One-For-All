SELECT art.artista_nome AS artista, al.album_nome AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS al
ON art.artista_id = al.artista_id
WHERE art.artista_nome = 'Elis Regina'
ORDER BY album;