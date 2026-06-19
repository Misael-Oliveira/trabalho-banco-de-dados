create database loja_autopecas;
USE loja_autopecas;

-- =====================================
-- FABRICANTES (10 registros)
-- =====================================
INSERT INTO fabricantes (nome_fabricante) VALUES
('Bosch'),
('Valeo'),
('NGK'),
('Cofap'),
('Magneti Marelli'),
('Mahle'),
('TRW'),
('SKF'),
('Delphi'),
('Continental');

-- =====================================
-- VEICULOS (20 registros)
-- =====================================
INSERT INTO veiculos (marca, modelo, ano_inicio, ano_fim, motorizacao) VALUES
('Volkswagen','Gol',2015,2022,'1.0'),
('Volkswagen','Fox',2014,2021,'1.6'),
('Fiat','Uno',2010,2021,'1.0'),
('Fiat','Argo',2018,NULL,'1.3'),
('Chevrolet','Onix',2016,NULL,'1.0'),
('Chevrolet','Prisma',2014,2020,'1.4'),
('Ford','Ka',2015,2021,'1.0'),
('Ford','Fiesta',2013,2019,'1.6'),
('Renault','Sandero',2016,NULL,'1.0'),
('Renault','Logan',2016,NULL,'1.6'),
('Honda','Civic',2015,NULL,'2.0'),
('Toyota','Corolla',2014,NULL,'2.0'),
('Hyundai','HB20',2015,NULL,'1.0'),
('Nissan','Versa',2017,NULL,'1.6'),
('Jeep','Renegade',2018,NULL,'1.8'),
('Peugeot','208',2016,NULL,'1.2'),
('Citroen','C3',2015,NULL,'1.5'),
('Volkswagen','Polo',2018,NULL,'1.0'),
('Fiat','Mobi',2017,NULL,'1.0'),
('Chevrolet','Cruze',2015,NULL,'1.4');

-- =====================================
-- PECAS (30 registros)
-- =====================================
INSERT INTO pecas
(id_fabricante,codigo_original,nome_peca,descricao,preco_venda,estoque_atual)
VALUES
(1,'P001','Filtro de Óleo','Filtro Bosch',25.90,50),
(1,'P002','Filtro de Ar','Filtro Bosch',35.90,40),
(2,'P003','Farol Direito','Farol Valeo',420.00,10),
(2,'P004','Farol Esquerdo','Farol Valeo',420.00,10),
(3,'P005','Vela de Ignição','NGK Iridium',42.00,80),
(3,'P006','Jogo de Velas','Kit NGK',160.00,25),
(4,'P007','Amortecedor Dianteiro','Cofap',280.00,15),
(4,'P008','Amortecedor Traseiro','Cofap',250.00,15),
(5,'P009','Alternador','Marelli',890.00,8),
(5,'P010','Motor de Partida','Marelli',950.00,7),
(6,'P011','Pistão','Mahle',120.00,40),
(6,'P012','Anel de Pistão','Mahle',90.00,35),
(7,'P013','Pastilha de Freio','TRW',110.00,60),
(7,'P014','Disco de Freio','TRW',220.00,30),
(8,'P015','Rolamento Dianteiro','SKF',180.00,25),
(8,'P016','Rolamento Traseiro','SKF',170.00,25),
(9,'P017','Bomba de Combustível','Delphi',350.00,12),
(9,'P018','Bico Injetor','Delphi',290.00,18),
(10,'P019','Correia Dentada','Continental',140.00,30),
(10,'P020','Kit Correia','Continental',280.00,20),
(1,'P021','Sensor ABS','Bosch',210.00,15),
(2,'P022','Lanterna Traseira','Valeo',180.00,12),
(3,'P023','Bobina de Ignição','NGK',260.00,10),
(4,'P024','Mola Suspensão','Cofap',195.00,14),
(5,'P025','Radiador','Marelli',650.00,6),
(6,'P026','Bronzina','Mahle',85.00,22),
(7,'P027','Cilindro Mestre','TRW',310.00,8),
(8,'P028','Cubo de Roda','SKF',240.00,9),
(9,'P029','Sensor MAP','Delphi',170.00,11),
(10,'P030','Correia Poly-V','Continental',95.00,25);

-- =====================================
-- COMPATIBILIDADE (30 registros)
-- =====================================
INSERT INTO compatibilidade VALUES
(1,1),(1,5),(2,1),(2,18),(3,5),
(4,5),(5,1),(5,3),(6,13),(7,12),
(8,12),(9,11),(10,11),(11,12),
(12,12),(13,5),(13,20),(14,20),
(15,1),(16,3),(17,5),(18,5),
(19,1),(19,13),(20,12),(21,20),
(22,5),(23,11),(24,15),(25,20);

-- =====================================
-- CLIENTES (20 registros)
-- =====================================
INSERT INTO clientes (nome, cpf_cnpj, telefone) VALUES
('João Silva','11111111111','61990000001'),
('Maria Souza','11111111112','61990000002'),
('Pedro Santos','11111111113','61990000003'),
('Ana Lima','11111111114','61990000004'),
('Carlos Oliveira','11111111115','61990000005'),
('Fernanda Costa','11111111116','61990000006'),
('Lucas Pereira','11111111117','61990000007'),
('Juliana Alves','11111111118','61990000008'),
('Ricardo Gomes','11111111119','61990000009'),
('Patricia Rocha','11111111120','61990000010'),
('Bruno Martins','11111111121','61990000011'),
('Camila Dias','11111111122','61990000012'),
('Gustavo Melo','11111111123','61990000013'),
('Aline Ribeiro','11111111124','61990000014'),
('Rafael Castro','11111111125','61990000015'),
('Vanessa Moraes','11111111126','61990000016'),
('Thiago Nunes','11111111127','61990000017'),
('Larissa Freitas','11111111128','61990000018'),
('Eduardo Barros','11111111129','61990000019'),
('Beatriz Cardoso','11111111130','61990000020');

-- =====================================
-- PEDIDOS (20 registros)
-- =====================================
INSERT INTO pedidos (id_cliente, valor_total) VALUES
(1,120.00),(2,280.00),(3,350.00),(4,420.00),(5,180.00),
(6,560.00),(7,320.00),(8,900.00),(9,150.00),(10,200.00),
(11,650.00),(12,310.00),(13,470.00),(14,140.00),(15,390.00),
(16,275.00),(17,180.00),(18,530.00),(19,250.00),(20,780.00);

-- =====================================
-- ITENS_PEDIDO (30 registros)
-- =====================================
INSERT INTO itens_pedido VALUES
(1,1,2,25.90),
(1,5,1,42.00),
(2,13,2,110.00),
(2,19,1,140.00),
(3,17,1,350.00),
(4,3,1,420.00),
(5,22,1,180.00),
(6,7,2,280.00),
(7,15,1,180.00),
(7,1,2,25.90),
(8,10,1,900.00),
(9,30,1,95.00),
(9,5,1,42.00),
(10,14,1,220.00),
(11,25,1,650.00),
(12,27,1,310.00),
(13,23,1,260.00),
(13,29,1,170.00),
(14,19,1,140.00),
(15,13,1,110.00),
(15,15,1,180.00),
(16,16,1,170.00),
(16,1,4,25.90),
(17,22,1,180.00),
(18,20,1,280.00),
(18,24,1,195.00),
(19,28,1,240.00),
(20,9,1,780.00),
(20,1,2,25.90),
(20,2,1,35.90);
