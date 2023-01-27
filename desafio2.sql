SELECT COUNT(c.cancao_id) AS 'cancoes', COUNT(DISTINCT art.artista_id) AS 'artistas', COUNT(DISTINCT alb.album_id) AS 'albuns'
FROM SpotifyClone.artistas AS art 
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.cancoes AS c
ON alb.album_id = c.album_id;