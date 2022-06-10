SELECT
  art.name AS artista,
  alb.name AS album
FROM
  SpotifyClone.artist AS art
  JOIN SpotifyClone.album AS alb ON art.id = alb.artist_id
HAVING
  artista = 'Walter Phoenix';