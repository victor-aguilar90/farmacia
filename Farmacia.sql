create database farmacia;
use farmacia;

create table Clientes(
    id_cliente int auto_increment primary key,
    nome varchar(100),
    endereco varchar(255),
    telefone varchar(20)
); 

create table Produtos (
	id_produto int auto_increment primary key,
    nome varchar(100),
    preco decimal(10,2),
    fabricante varchar(100),
    estoque int
);   

create table Funcionarios (
	id_funcionario int auto_increment primary key,
    nome varchar(100),
    cargo varchar(100),
    salario decimal(10,2)
);   

create table vendas (
	id_venda int auto_increment primary key,
    id_cliente int,
    id_produto int,
    id_funcionarios int,
    data_venda date,
    total decimal (10,2),
    foreign key (id_cliente) references Clientes(id_cliente),
    foreign key (id_produto) references Produtos(id_produto),
    foreign key (id_funcionarios) references Funcionarios(id_funcionario)
);

INSERT INTO Clientes (nome, endereco, telefone) VALUES
('Carlos Oliveira', 'Rua G, 123', '11 1223-1111'),
('Fernanda Lima', 'Rua H, 456', '11 1223-2222'),
('Ricardo Almeida', 'Rua I, 789', '11 1223-3333'),
('Camila Santos', 'Rua J, 1011', '11 1223-4444'),
('Daniel Pereira', 'Rua K, 1213', '11 1223-5555'),
('Mariana Silva', 'Rua L, 1415', '11 1223-6666'),
('Pedro Santos', 'Rua M, 1617', '11 1223-7777'),
('Juliana Oliveira', 'Rua N, 1819', '11 1223-8888'),
('Lucas Almeida', 'Rua O, 2021', '11 1223-9999'),
('Gabriela Lima', 'Rua P, 2223', '11 1223-0000');

INSERT INTO Produtos (nome, preco, estoque, fabricante) VALUES 
('Amoxicilina', 30.00, 40, 'Pfizer'),
('Dipirona Infantil', 10.00, 60, 'Novartis'),
('Captopril', 20.00, 35, 'Roche'),
('Atenolol', 22.00, 25, 'Merck'),
('Clonazepam', 35.00, 20, 'Sanofi'),
('Sinvastatina', 28.00, 45, 'Johnson & Johnson'),
('Losartana', 18.00, 55, 'GlaxoSmithKline'),
('Sertralina', 27.00, 30, 'AbbVie'),
('Ranitidina', 15.00, 50, 'Medley'),
('Morfina', 50.00, 15, 'AstraZeneca');

INSERT INTO Funcionarios (nome, cargo, salario) VALUES
('Renata Oliveira', 'Atendente', 1800.00),
('Gustavo Lima', 'Atendente', 1700.00),
('Thiago Almeida', 'Atendente', 1600.00),
('Carla Santos', 'Atendente', 1700.00),
('Luciana Pereira', 'Gerente', 3000.00),
('Marcio Silva', 'Gerente', 2800.00),
('Camila Oliveira', 'Farmacêutico', 2200.00),
('Rafael Almeida', 'Farmacêutico', 2300.00),
('Ana Paula Lima', 'Farmacêutico', 2100.00),
('Paulo Santos', 'Farmacêutico', 2400.00);

update Produtos
SET preco = preco + (preco * 0.15);

update Produtos
SET estoque = estoque + (estoque * 0.10);




