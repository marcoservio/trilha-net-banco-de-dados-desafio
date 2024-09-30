-- 1
SELECT Nome, Ano 
FROM Filmes

-- 2
SELECT Nome, Ano, Duracao 
FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Nome = 'de volta para o futuro'

-- 4
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Duracao BETWEEN 101 AND 151
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mist�rio'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id