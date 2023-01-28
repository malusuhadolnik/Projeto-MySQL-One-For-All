SELECT u.usuario_nome AS usuario, IF(MAX(YEAR(rep.data_reproducao))>=2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_de_reproducoes AS rep
INNER JOIN SpotifyClone.usuarios AS u
ON rep.usuario_id = u.usuario_id
GROUP BY rep.usuario_id
ORDER BY u.usuario_nome;