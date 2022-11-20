CREATE TABLE `generos` (
  `id` INT PRIMARY KEY,
  `genero` VARCHAR NOT NULL
);

CREATE TABLE `filmes` (
  `id` INT PRIMARY KEY,
  `titulo` VARCHAR NOT NULL,
  `id_genero` INT NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL
);

CREATE TABLE `dvds` (
  `id` INT PRIMARY KEY,
  `id_filme` INT NOT NULL,
  `quantidade` INT NOT NULL
);

CREATE TABLE `atores` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR NOT NULL
);

CREATE TABLE `atores_filme` (
  `id` INT PRIMARY KEY,
  `id_filme` INT NOT NULL,
  `id_ator` INT NOT NULL,
  `personagem` VARCHAR NOT NULL
);

CREATE TABLE `clientes` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR NOT NULL,
  `sobrenome` VARCHAR NOT NULL,
  `telefone` VARCHAR NOT NULL,
  `endereco` VARCHAR NOT NULL
);

CREATE TABLE `emprestimos` (
  `id` INT PRIMARY KEY,
  `data` DATETIME NOT NULL,
  `id_cliente` INT NOT NULL
);

CREATE TABLE `filmes_emprestimo` (
  `id` INT PRIMARY KEY,
  `id_emprestimo` INT NOT NULL,
  `id_filme` INT NOT NULL
);

CREATE TABLE `devolucoes` (
  `id` INT PRIMARY KEY,
  `id_emprestimo` INT NOT NULL,
  `data` DATETIME NOT NULL
);

CREATE TABLE `filmes_devolucao` (
  `id` INT PRIMARY KEY,
  `id_devolucao` INT NOT NULL,
  `id_filme_emprestimo` INT NOT NULL
);

ALTER TABLE `filmes` ADD FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id`);

ALTER TABLE `dvds` ADD FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`);

ALTER TABLE `atores_filme` ADD FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`);

ALTER TABLE `atores_filme` ADD FOREIGN KEY (`id_ator`) REFERENCES `atores` (`id`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

ALTER TABLE `filmes_emprestimo` ADD FOREIGN KEY (`id_emprestimo`) REFERENCES `emprestimos` (`id`);

ALTER TABLE `filmes_emprestimo` ADD FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id`);

ALTER TABLE `devolucoes` ADD FOREIGN KEY (`id_emprestimo`) REFERENCES `emprestimos` (`id`);

ALTER TABLE `filmes_devolucao` ADD FOREIGN KEY (`id_devolucao`) REFERENCES `devolucoes` (`id`);

ALTER TABLE `filmes_devolucao` ADD FOREIGN KEY (`id_filme_emprestimo`) REFERENCES `filmes_emprestimo` (`id`);
