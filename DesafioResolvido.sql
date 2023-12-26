-- 1 Desafio
SELECT Nome, Ano FROM Filmes

-- 2 Desafio
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- 3 Desafio
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o futuro';

-- 4 Desafio
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5 Desafio
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- 6 Desafio
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7 Desafio
SELECT ano, COUNT(*) as quantidade_filmes FROM Filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;

-- 8 Desafio
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- 9 Desafio
SELECT PrimeiroNome, UltimoNome, Genero From Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 Desafio
SELECT filmes.nome AS nome_filme, generos.genero AS nome_genero
FROM filmes
JOIN filmesgenero ON filmes.id = filmesgenero.idFilme
JOIN generos ON filmesgenero.idGenero = generos.id;

-- 11 Desafio
SELECT filmes.nome AS nome_filme, generos.genero AS nome_genero
FROM filmes
JOIN filmesgenero ON filmes.id = filmesgenero.idFilme
JOIN generos ON filmesgenero.idGenero = generos.id
WHERE generos.genero = 'Mistério';

-- 12 Desafio
SELECT 
    filmes.nome AS nome_filme,
    atores.PrimeiroNome,
    atores.UltimoNome,
    ElencoFilme.papel
FROM 
    filmes
JOIN 
    ElencoFilme ON filmes.id = ElencoFilme.idFilme
JOIN 
    atores ON ElencoFilme.idAtor = atores.id;

