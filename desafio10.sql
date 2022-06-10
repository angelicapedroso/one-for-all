SELECT
  s.name AS `nome`,
  COUNT(u.id) AS `reproducoes`
FROM
  SpotifyClone.song AS s
  JOIN SpotifyClone.history AS h ON h.song_id = s.id
  JOIN SpotifyClone.user AS u ON u.id = h.user_id
WHERE
  u.plan_id IN (1, 4)
GROUP BY
  nome
ORDER BY
  nome