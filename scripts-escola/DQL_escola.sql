USE db_escola_T;

--Listar os 3 primeiros alunos --
SELECT TOP 3 matricula FROM tb_aluno;

--Lista todos os alunos em ordem crescente--
SELECT matricula
FROM tb_aluno
ORDER BY nome ASC;

-- Id dos tres primeiros alunos que foi recem cadastrados 
SELECT TOP 3 matricula FROM tb_aluno;

SELECT matricula
FROM tb_aluno
ORDER BY nome DESC;

--Lista todos os alunos com nome Eloisa--
SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'Eloisa';

--Nome da escola --
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni'

--Turmas seduc--
SELECT turma 
FROM tb_turma
ORDER BY id DESC;

--2 alunos em ordem do mais recentes--
SELECT TOP 2 * 
FROM tb_aluno
ORDER BY id DESC;

--mostre quantos alunos existem na base--
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno

--mostre os alunos mais velhos--
SELECT  MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

--mostre alunos mais novos 
SELECT  MIN (data_nasc) AS idade_mais_velho FROM tb_aluno;

--forma do lucas--
SELECT nome , data_nasc 
FROM tb_aluno
ORDER BY data_nasc;

--media aritmedica de nota nas provas--
SELECT AVG(nota) AS media_nota FROM tb_prova

--exiba a soma dos ids de turma
SELECT SUM(id) FROM tb_turma;

SELECT * FROM tb_aluno;

--Mostre nome dos alunos mais novos--
SELECT MAX(data_nasc) AS idade_mais_novo
FROM tb_aluno
GROUP BY nome;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(id)
FROM tb_turma
WHERE periodo = 'Tarde';