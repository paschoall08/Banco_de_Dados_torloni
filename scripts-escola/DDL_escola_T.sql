--ESTE COMANDO CRIA UM NOVO BANCO DE DADOS
CREATE DATABASE db_escola_T;

--ESSE COMANDO USA O BD
USE db_escola_T;

--ESTE COMANDO CRIA UMA NOCA TABELA
CREATE TABLE tb_escola(
   id        INT            IDENTITY(1,1) PRIMARY KEY,
   nome      NVARCHAR(255)  NOT NULL,
   endereco  NVARCHAR(255)  NOT NULL,
);

-- DQL REALIZA CONSULTAS NAS TABELAS DE UM RESPECTIVO BANCO 
SELECT * FROM tb_escola;

--TABELA TURMA 
CREATE TABLE tb_turma(
    id             INT      IDENTITY(1,1) PRIMARY KEY,
    serie          INT      UNIQUE        NOT NULL,
    periodo        NCHAR(5) UNIQUE        NOT NULL, 
    numero_sala    TINYINT                NOT NULL,
    nome_turma     NVARCHAR(100)          NOT NULL,
    );

    SELECT * FROM tb_turma;

--TABELA PROVA
CREATE TABLE tb_prova(
    id              INT               IDENTITY (1,1)   PRIMARY KEY,
    nome_professor  NVARCHAR(255)     NOT NULL, 
    materia         NVARCHAR(100)     NOT NULL,
    nota            DECIMAL (3,1)     NOT NULL,
    horario         TIME              NOT NULL,
    data_prova      DATE              NOT NULL 
      
);

SELECT * FROM tb_prova;]

--TABELA ALUNO
CREATE TABLE tb_aluno(
      id                INT                IDENTITY (1,1)   PRIMARY KEY,
      data_nascimento   DATE                                NOT NULL,
      nome              NVARCHAR(255)                       NOT NULL,
      cpf               NCHAR(11)          UNIQUE           NOT NULL,
      matricula         NVARCHAR(255)      UNIQUE           NOT NULL,
      endereco          NCHAR(255)                          NOT NULL,

      id_escola         INT FOREIGN KEY REFERENCES tb_escola(id)
);

SELECT * FROM tb_aluno;

--TABELA INTERMEDIARIA TURMAPROVA
	CREATE TABLE tb_turma_prova(
	id_turma			INT					NOT NULL,
	id_prova			INT					NOT NULL,
	PRIMARY KEY(id_turma, id_prova)
	);

SELECT * FROM tb_turma_prova

--MODIFICAR UMA COLUNA 
/*ALTER TABLE tb_aluno
ALTER COLUMN id_escola INT NOT NULL;*/