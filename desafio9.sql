SELECT COUNT(rep.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS rep
ON u.usuario_id = rep.usuario_id
WHERE u.usuario_nome = 'Barbara Liskov';