SELECT c.cancao_nome AS cancao, COUNT(rep.cancao_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS rep
INNER JOIN SpotifyClone.cancoes AS c
ON rep.cancao_id = c.cancao_id
GROUP BY rep.cancao_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;