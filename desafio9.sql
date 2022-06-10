SELECT
  COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.history AS h
  JOIN SpotifyClone.user AS u ON u.id = h.user_id
GROUP BY
  u.name
HAVING
  u.name = 'Bill';