SELECT art.artista_nome AS artista, al.album_nome AS album, COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS al
ON art.artista_id = al.artista_id
RIGHT JOIN SpotifyClone.seguindo_artistas AS seg
ON al.artista_id = seg.artista_id
GROUP BY art.artista_id, al.album_nome
ORDER BY seguidores DESC, artista, album;