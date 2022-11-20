CREATE DATABASE locadora;

CREATE TABLE "generos" (
  "id" SERIAL PRIMARY KEY,
  "genero" VARCHAR(100) NOT NULL
);

CREATE TABLE "filmes" (
  "id" SERIAL PRIMARY KEY,
  "titulo" VARCHAR(100) NOT NULL,
  "id_genero" INT NOT NULL,
  "valor" DECIMAL(8,2) NOT NULL
);

CREATE TABLE "dvds" (
  "id" SERIAL PRIMARY KEY,
  "id_filme" INT NOT NULL,
  "quantidade" INT NOT NULL
);

CREATE TABLE "atores" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR(100) NOT NULL
);

CREATE TABLE "atores_filme" (
  "id" SERIAL PRIMARY KEY,
  "id_filme" INT NOT NULL,
  "id_ator" INT NOT NULL,
  "personagem" VARCHAR(100) NOT NULL
);

CREATE TABLE "clientes" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR(50) NOT NULL,
  "sobrenome" VARCHAR(50) NOT NULL,
  "telefone" VARCHAR(20) NOT NULL,
  "endereco" VARCHAR(100) NOT NULL
);

CREATE TABLE "emprestimos" (
  "id" SERIAL PRIMARY KEY,
  "data" DATE NOT NULL,
  "id_cliente" INT NOT NULL
);

CREATE TABLE "filmes_emprestimo" (
  "id" SERIAL PRIMARY KEY,
  "id_emprestimo" INT NOT NULL,
  "id_filme" INT NOT NULL
);

CREATE TABLE "devolucoes" (
  "id" SERIAL PRIMARY KEY,
  "id_emprestimo" INT NOT NULL,
  "data" DATE NOT NULL
);

CREATE TABLE "filmes_devolucao" (
  "id" SERIAL PRIMARY KEY,
  "id_devolucao" INT NOT NULL,
  "id_filme_emprestimo" INT NOT NULL
);

ALTER TABLE "filmes" ADD FOREIGN KEY ("id_genero") REFERENCES "generos" ("id");

ALTER TABLE "dvds" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

ALTER TABLE "atores_filme" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

ALTER TABLE "atores_filme" ADD FOREIGN KEY ("id_ator") REFERENCES "atores" ("id");

ALTER TABLE "emprestimos" ADD FOREIGN KEY ("id_cliente") REFERENCES "clientes" ("id");

ALTER TABLE "filmes_emprestimo" ADD FOREIGN KEY ("id_emprestimo") REFERENCES "emprestimos" ("id");

ALTER TABLE "filmes_emprestimo" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

ALTER TABLE "devolucoes" ADD FOREIGN KEY ("id_emprestimo") REFERENCES "emprestimos" ("id");

ALTER TABLE "filmes_devolucao" ADD FOREIGN KEY ("id_devolucao") REFERENCES "devolucoes" ("id");

ALTER TABLE "filmes_devolucao" ADD FOREIGN KEY ("id_filme_emprestimo") REFERENCES "filmes_emprestimo" ("id");
