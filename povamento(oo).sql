
INSERT INTO tb_cliente VALUES ('097884027-2', 'F', 'ODILEIA PIRES CALVALCANTI', to_date ('21/02/1980', 'dd/mm/yyyy'), to_date ('21/02/2016', 'dd/mm/yyyy'), 4549, 10, tp_telefone(81, 32263036));
INSERT INTO tb_cliente VALUES ('231228461-6', 'M', 'MARCOS HENRIQUE DE ARRUDA', to_date ('4/07/1990', 'dd/mm/yyyy'), to_date ('01/01/2015', 'dd/mm/yyyy'), 3002, 800, tp_telefone(81, 98974688));
INSERT INTO tb_cliente VALUES ('389939572-7', 'M', 'PLINIO GENRO DA SILVA', to_date ('29/06/1987', 'dd/mm/yyyy'), to_date ('01/01/2015', 'dd/mm/yyyy'), 3001, 100, tp_telefone(81, 32275657));
INSERT INTO tb_cliente VALUES ('501131794-9', 'M', 'LUCAS CARNEIRO DE OLIVEIRA', to_date ('3/12/1995', 'dd/mm/yyyy'), to_date ('07/08/2015', 'dd/mm/yyyy'), 3507, 0, tp_telefone(81, 34456767));
INSERT INTO tb_cliente VALUES ('612242803-0', 'M', 'KRISTOVAO PEDRAGULHO SANTOS', to_date ('11/04/1991', 'dd/mm/yyyy'), to_date ('08/12/2015', 'dd/mm/yyyy'), 3780, 257, tp_telefone(81, 87010870));
INSERT INTO tb_cliente VALUES ('445678990-2', 'F', 'CRISTINA MARIA CARVALHO', to_date ('17/09/1984', 'dd/mm/yyyy'), to_date ('03/03/2016', 'dd/mm/yyyy'), 4591, 2000, tp_telefone(81, 98988731));

INSERT INTO tb_funcionario VALUES ('219006249-4', 'M', 'JOSE PADILHA MORAIS', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 880.00, 001, tp_telefone(81, 32214667));
INSERT INTO tb_funcionario VALUES ('320117350-5', 'F', 'CINTIA JESSICA LOPES', to_date ('02/02/1992', 'dd/mm/yyyy'), to_date ('25/02/2009', 'dd/mm/yyyy'), 880.00, 002, tp_telefone(81, 89496877 ));
INSERT INTO tb_funcionario VALUES ('490040683-8', 'F', 'LUIZA PENELOPE GUIMARAES', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 880.00, 003, tp_telefone(81, 32228182));
INSERT INTO tb_funcionario VALUES ('375811200-7', 'M', 'JULIO CESAR PASCOAL', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 004, tp_telefone(81, 34491038));
INSERT INTO tb_funcionario VALUES ('076899121-2', 'M', 'GUSTAVO OLIMPIO BUZZATO', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 005, tp_telefone(81, 34456760));
INSERT INTO tb_funcionario VALUES ('108995138-3', 'F', 'SORAYA MONTENEGRO LAGOS', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 006, tp_telefone(81, 88527084));

INSERT INTO tb_mecanico VALUES ('375811200-7', 'M', 'JULIO CESAR PASCOAL', to_date ('07/07/1987', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 004, 565655, to_date ('01/07/2005', 'dd/mm/yyyy'), 'IFPE', tp_telefone(81, 34491038));
INSERT INTO tb_mecanico VALUES ('076899121-2', 'M', 'GUSTAVO OLIMPIO BUZZATO', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 005, 502037, to_date ('01/07/2008', 'dd/mm/yyyy'), 'SENAI', tp_telefone(81, 34456760));
INSERT INTO tb_mecanico VALUES ('108995138-3', 'M', 'SORAYA MONTENEGRO LAGOS', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 1500.00, 006, 675757, to_date ('01/07/2005', 'dd/mm/yyyy'), 'GRAU TECNICO', tp_telefone(81, 88527084));

INSERT INTO tb_atendente VALUES ('219006249-4', 'M', 'JOSE PADILHA MORAIS', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 880.00, 001, 'ENSINO MEDIO INCOMPLETO', tp_telefone(81, 32214667), (SELECT REF(E) FROM tb_atendente E WHERE E.CPF = '219006249-4'));
INSERT INTO tb_atendente VALUES ('320117350-5', 'F', 'CINTIA JESSICA LOPES', to_date ('02/02/1992', 'dd/mm/yyyy'), to_date ('25/02/2009', 'dd/mm/yyyy'), 880.00, 002, 'ENSINO MEDIO COMPLETO', tp_telefone(81, 89496877), (SELECT REF(E) FROM tb_atendente E WHERE E.CPF = '219006249-4'));
INSERT INTO tb_atendente VALUES ('490040683-8', 'F', 'LUIZA PENELOPE GUIMARAES', to_date ('01/04/1975', 'dd/mm/yyyy'), to_date ('21/02/2009', 'dd/mm/yyyy'), 880.00, 003, 'ENSINO MEDIO INCOMPLETO', tp_telefone(81, 32228182), (SELECT REF(E) FROM tb_atendente E WHERE E.CPF = '219006249-4'));

INSERT INTO tb_atende VALUES ('219006249-4', '097884027-2', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '219006249-4'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '219006249-4'));
INSERT INTO tb_atende VALUES ('219006249-4', '231228461-6', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '219006249-4'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '231228461-6'));
INSERT INTO tb_atende VALUES ('320117350-5', '097884027-2', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '320117350-5'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '097884027-2'));
INSERT INTO tb_atende VALUES ('490040683-8', '389939572-7', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '490040683-8'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'));
INSERT INTO tb_atende VALUES ('490040683-8', '501131794-9', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '490040683-8'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '501131794-9'));
INSERT INTO tb_atende VALUES ('320117350-5', '612242803-0', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '219006249-4'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '612242803-0'));
INSERT INTO tb_atende VALUES ('219006249-4', '445678990-2', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '219006249-4'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '445678990-2'));
INSERT INTO tb_atende VALUES ('490040683-8', '445678990-2', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '490040683-8'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '445678990-2'));
INSERT INTO tb_atende VALUES ('320117350-5', '389939572-7', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '320117350-5'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'));
INSERT INTO tb_atende VALUES ('219006249-4', '501131794-9', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '219006249-4'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '501131794-9'));
INSERT INTO tb_atende VALUES ('490040683-8', '612242803-0', (SELECT REF(A) FROM tb_atendente A WHERE A.CPF = '490040683-8'), (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '612242803-0'));

INSERT INTO tb_carro VALUES ('KLB0876', 'ROSA', 1992, 'Adamo');
INSERT INTO tb_carro VALUES ('GLS1234', 'AMARELO', 1999, 'Alfa Romeo');
INSERT INTO tb_carro VALUES ('JBJ2122', 'AZUL', 2005, 'Avallone');
INSERT INTO tb_carro VALUES ('LUB5432', 'VERMELHO', 2013, 'Aurora');
INSERT INTO tb_carro VALUES ('IJK8000', 'PRATA', 2010, 'BMW');
INSERT INTO tb_carro VALUES ('KWY0102', 'ROXO', 2001, 'Brasinca');
INSERT INTO tb_carro VALUES ('AVC5567', 'LARANJA', 2000, 'CBT');
INSERT INTO tb_carro VALUES ('HIV6666', 'BRANCO', 2016, 'Chery');
INSERT INTO tb_carro VALUES ('SIS9816', 'CINZA', 1990, 'Citroën');

INSERT INTO tb_carrocliente VALUES ('097884027-2', 'KLB0876', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '097884027-2'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'KLB0876'));
INSERT INTO tb_carrocliente VALUES ('097884027-2', 'GLS1234', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '097884027-2'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'GLS1234'));
INSERT INTO tb_carrocliente VALUES ('231228461-6', 'JBJ2122', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '231228461-6'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'JBJ2122'));
INSERT INTO tb_carrocliente VALUES ('231228461-6', 'LUB5432', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '231228461-6'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'LUB5432'));
INSERT INTO tb_carrocliente VALUES ('389939572-7', 'IJK8000', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'IJK8000'));
INSERT INTO tb_carrocliente VALUES ('389939572-7', 'KWY0102', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'KWY0102'));
INSERT INTO tb_carrocliente VALUES ('501131794-9', 'AVC5567', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '501131794-9'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'AVC5567'));
INSERT INTO tb_carrocliente VALUES ('612242803-0', 'HIV6666', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '612242803-0'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'HIV6666'));
INSERT INTO tb_carrocliente VALUES ('445678990-2', 'SIS9816', (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '445678990-2'), (SELECT REF CA FROM tb_carro WHERE CA.CARRO = 'SIS9816'));

INSERT INTO tb_promocao VALUES (3333, -20, 'DESCONTO DE 20% NO PNEU');
INSERT INTO tb_promocao VALUES (4444, 100, '100 REAIS EM BONUS');
INSERT INTO tb_promocao VALUES (5555, 400, '400 REIAS EM BONUS');
INSERT INTO tb_promocao VALUES (6666, 1000, '1000 EM BONUS');

INSERT INTO tb_servico VALUES (345, to_date ('02/07/2016', 'dd/mm/yyyy'), 3000, 'LIMPEZA GERAL', '7H30M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'KLB0876'));
INSERT INTO tb_servico VALUES (567, to_date ('25/05/2016', 'dd/mm/yyyy'), 800, 'TROCA DE PNEU', '18H00M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'GLS1234'));
INSERT INTO tb_servico VALUES (878, to_date ('01/02/2017', 'dd/mm/yyyy'), 500, 'TROCA PARABRISAS', '15H29M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'JBJ2122'));
INSERT INTO tb_servico VALUES (192, to_date ('25/12/2016', 'dd/mm/yyyy'), 10, 'MOTOR', '10H15M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'LUB5432'));
INSERT INTO tb_servico VALUES (535, to_date ('04/08/2016', 'dd/mm/yyyy'), 500, 'TROCAR OLEO', '17H59M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'IJK8000'));
INSERT INTO tb_servico VALUES (171, to_date ('07/06/2016', 'dd/mm/yyyy'), 900, 'CONSERTO DA PORTA', '13H30M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'KWY0102'));
INSERT INTO tb_servico VALUES (520, to_date ('07/02/2017', 'dd/mm/yyyy'), 10, 'LIMPAR O VIDRO', '18H00M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'AVC5567'));
INSERT INTO tb_servico VALUES (143, to_date ('30/04/2017', 'dd/mm/yyyy'), 300, 'INSTALAR DVD', '11H47M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'HIV6666'));
INSERT INTO tb_servico VALUES (420, to_date ('05/07/2017', 'dd/mm/yyyy'), 600, 'COMPRAR GPS', '09H12M', (SELECT REF(C) FROM tb_carro C WHERE C.PLACA = 'SIS9816'));

INSERT INTO tb_realiza  VALUES ('375811200-7', 345, '097884027-2', to_date ('30/06/2016', 'dd/mm/yyyy'), 3333, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '097884027-2'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 345), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 3333), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '375811200-7'));
INSERT INTO tb_realiza  VALUES ('375811200-7', 878, '231228461-6', to_date ('25/12/2016', 'dd/mm/yyyy'), 5555, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '231228461-6'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 878), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 5555), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '375811200-7'));
INSERT INTO tb_realiza  VALUES ('375811200-7', 567, '097884027-2', to_date ('25/05/2016', 'dd/mm/yyyy'), 4444, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '097884027-2'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 567), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 4444), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '375811200-7'));
INSERT INTO tb_realiza  VALUES ('375811200-7', 192, '231228461-6', to_date ('29/04/2016', 'dd/mm/yyyy'), 3333, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '231228461-6'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 192), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 3333), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '375811200-7'));
INSERT INTO tb_realiza  VALUES ('076899121-2', 535, '389939572-7', to_date ('12/06/2016', 'dd/mm/yyyy'), 5555, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 535), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 5555), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '076899121-2'));
INSERT INTO tb_realiza  VALUES ('076899121-2', 171, '389939572-7', to_date ('01/06/2016', 'dd/mm/yyyy'), 4444, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '389939572-7'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 171), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 4444), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '076899121-2'));
INSERT INTO tb_realiza  VALUES ('108995138-3', 520, '501131794-9', to_date ('11/02/2016', 'dd/mm/yyyy'), 5555, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '501131794-9'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 520), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 5555), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '108995138-3'));
INSERT INTO tb_realiza  VALUES ('076899121-2', 143, '612242803-0', to_date ('01/07/2016', 'dd/mm/yyyy'), 6666, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '612242803-0'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 143), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 6666), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '076899121-2'));
INSERT INTO tb_realiza  VALUES ('108995138-3', 420, '445678990-2', to_date ('09/11/2016', 'dd/mm/yyyy'), 3333, (SELECT REF(C) FROM tb_cliente C WHERE C.CPF = '445678990-2'), (SELECT REF(S) FROM tb_servico S WHERE S.OS = 420), (SELECT REF(P) FROM tb_promocao P WHERE P.CD_PROMOCAO = 3333), (SELECT REF(M) FROM tb_mecanico M WHERE M.CPF = '108995138-3'));



 