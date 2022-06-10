SELECT
  u.name AS usuario,
  COUNT(h.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM
  SpotifyClone.user AS u
  JOIN SpotifyClone.history AS h ON u.id = h.user_id
  JOIN SpotifyClone.song AS s ON s.id = h.song_id
GROUP BY
  u.name
ORDER BY
  u.name;