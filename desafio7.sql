SELECT
  art.name AS artista,
  alb.name AS album,
  COUNT(f.artist_id) AS seguidores
FROM
  SpotifyClone.artist AS art
  JOIN SpotifyClone.album AS alb ON art.id = alb.artist_id
  JOIN SpotifyClone.following AS f ON f.artist_id = alb.artist_id
GROUP BY
  album,
  artista
ORDER BY
  seguidores DESC,
  artista,
  album;