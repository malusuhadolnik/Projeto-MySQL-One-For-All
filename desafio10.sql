SELECT c.cancao_nome AS nome, COUNT(rep.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS rep
ON c.cancao_id = rep.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON rep.usuario_id = u.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY c.cancao_nome
ORDER BY nome;