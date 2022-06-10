SELECT
  s.name AS cancao,
  COUNT(h.song_id) AS reproducoes
FROM
  SpotifyClone.song AS s
  JOIN SpotifyClone.history AS h ON s.id = h.song_id
GROUP BY
  s.name
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;