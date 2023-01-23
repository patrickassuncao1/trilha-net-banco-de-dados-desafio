-- 1 - Buscar o nome e ano dos filmes
SELECT
  Nome,
  Ano
FROM
  Filmes;

-- 2 - Buscar o nome,ano e duração dos filmes, ordenados por ordem crescente pelo ano
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
ORDER BY
  Filmes.Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
WHERE
  Filmes.Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
WHERE
  Filmes.Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
WHERE
  Filmes.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
  Nome,
  Ano,
  Duracao
FROM
  Filmes
WHERE
  Filmes.Duracao > 100
  AND Filmes.Duracao < 150
ORDER BY
  Filmes.Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
  Ano,
  COUNT(*) quantidade
FROM
  Filmes
GROUP BY
  Filmes.Ano
ORDER BY
  quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino
SELECT
  *
FROM
  Atores
WHERE
  Atores.Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, ordenando pelo PrimeiroNome
SELECT
  *
FROM
  Atores
WHERE
  Atores.Genero = 'F'
ORDER BY
  Atores.PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT
  Filmes.Nome,
  Generos.Genero
FROM
  FilmesGenero
  INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
  Filmes.Nome,
  Generos.Genero
FROM
  FilmesGenero
  INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
WHERE
  FilmesGenero.IdGenero = 10;

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
  Filmes.Nome,
  Atores.PrimeiroNome,
  Atores.UltimoNome,
  ElencoFilme.Papel
From
  ElencoFilme
  INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
  INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme;