SELECT u.usuario_nome AS 'usuario', COUNT(rep.usuario_id) AS 'qt_de_musicas_ouvidas',  ROUND((SUM(c.duracao_segundos)/60),2) AS 'total_minutos'
FROM SpotifyClone.historico_de_reproducoes AS rep 
INNER JOIN SpotifyClone.cancoes AS c
ON rep.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON rep.usuario_id = u.usuario_id
GROUP BY rep.usuario_id
ORDER BY u.usuario_nome;