SELECT
  u.name AS usuario,
  CASE
    WHEN MAX(YEAR(h.date)) >= 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
  END AS condicao_usuario
FROM
  SpotifyClone.user AS u
  JOIN SpotifyClone.history AS h ON u.id = h.user_id
GROUP BY
  u.name
ORDER BY
  u.name;