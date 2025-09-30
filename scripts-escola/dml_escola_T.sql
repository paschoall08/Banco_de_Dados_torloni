--USAR UM BANCO JA CRIADO--
USE db_escola_T;


--INSERIR UM REGISTRO NA TABELA ESCOLA 
INSERT INTO tb_escola (nome , endereco)
VALUES('Torloni' , 'Etrada das lagrimas , 579 - Sao Jose');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA ESCOLA 
INSERT INTO tb_turma (serie , periodo ,numero_sala, nome_turma)
VALUES (2A , 'Tarde' , 16 , 'SEDUC')



SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, nota,horario, data_prova)
VALUES
('Domingos', 'educacao fisica', 9 , '14:20:00','2025-09-26'),
('Mossny', 'Fisica', 9 , '12:20:00','2025-09-26'),
('Rogeria', 'Matematica', 8.8 , '09:20:00','2025-09-26');

SELECT * FROM tb_prova;

--TABELA ALUNO--
INSERT INTO tb_aluno(data_nasc, nome,cpf , matricula, endereco, id_escola)
VALUES
('2009-06-25', 'Pedro', '27654581033', '1143602316' , 'Rua Martins 250',1);


INSERT INTO tb_aluno(data_nasc, nome,cpf , matricula, endereco, id_escola)
VALUES
('2008-06-29', 'Ruan', '43955763031' , '3345213451' , 'Rua MMDC 660',1),
('2009-07-21', 'Clara', '2345443567', '1123908762' , 'Rua Miragaia 17',1),
('2009-02-03', 'Carlos', '14589732456', '1125566911' , 'Rua Jose Berto 22',1),
('2009-07-14', 'Enzo', '12345434564', '1123908761' , 'Rua Belem 11',1),
('2009-07-10', 'Luis', '50123978654', '1123943764' , 'Rua Drausio 250',1);



SELECT * FROM tb_aluno;

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR--

