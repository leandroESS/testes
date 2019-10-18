DROP TABLE TB_CLIENTE FORCE;
DROP TABLE TB_FUNCIONARIO FORCE;
DROP TABLE TB_MECANICO FORCE;
DROP TABLE TB_ATENDENTE FORCE;
DROP TABLE TB_CARRO FORCE;
DROP TABLE TB_SERVICO FORCE;
DROP TABLE TB_PROMOCAO FORCE;
DROP TABLE TB_REALIZA FORCE;
DROP TABLE TB_CARROCLIENTE FORCE;
DROP TABLE TB_ATENDE FORCE;


CREATE TABLE tb_cliente OF tp_cliente (
	PRIMARY KEY (CPF),
	"GENERO" NOT NULL,
	"NOME" NOT NULL  ,
	"DATA_NASC" NOT NULL ,
	"DATA_CAD" NOT NULL,
    "ID_CAD" NOT NULL,
    "PONTOS" NOT NULL
)NESTED TABLE telefone STORE AS tb_telefone_cliente;

CREATE TABLE tb_funcionario OF tp_funcionario (
	PRIMARY KEY (CPF),
	"GENERO" NOT NULL,
	"NOME" NOT NULL  ,
	"DATA_NASC" NOT NULL ,
	"DATA_ADMISSAO" NOT NULL,
	"SALARIO" NOT NULL,
	"MATRICULA" NOT NULL
)NESTED TABLE telefone STORE AS tb_telefone_func;

CREATE TABLE tb_mecanico OF tp_mecanico (
	PRIMARY KEY (CPF),
	"GENERO" NOT NULL,
	"NOME" NOT NULL  ,
	"DATA_NASC" NOT NULL ,
	"DATA_ADMISSAO" NOT NULL,
	"SALARIO" NOT NULL,
	"MATRICULA" NOT NULL,
	"COD_CERTIFICADO" NOT NULL,
    "DATA_CONCLUSAO" NOT NULL,
    "INSTITUICAO" NOT NULL
)NESTED TABLE telefone STORE AS tb_telefone_mec;


CREATE TABLE tb_atendente OF tp_atendente (
	PRIMARY KEY (CPF),
	"GENERO" NOT NULL,
	"NOME" NOT NULL  ,
	"DATA_NASC" NOT NULL ,
	"DATA_ADMISSAO" NOT NULL,
	"SALARIO" NOT NULL,
	"MATRICULA" NOT NULL,
	"GRAU_ESC" NOT NULL,
	FOREIGN KEY (ref_chefe) REFERENCES tb_atendente
)NESTED TABLE telefone STORE AS tb_telefone_atend;

CREATE TABLE tb_atende OF tp_atende (
	   PRIMARY KEY (CPF_ATEND,CPF_CLIENTE),
       FOREIGN KEY (ref_atendente) REFERENCES tb_atendente,
	   FOREIGN KEY (ref_cliente) REFERENCES tb_cliente
 ); 


CREATE TABLE tb_carro OF tp_carro (
	 PRIMARY KEY (PLACA),
	 "COR" NOT NULL,
	 "ANO" NOT NULL,
	 "MODELO" NOT NULL
);

CREATE TABLE tb_carrocliente OF tp_carrocliente (
	   PRIMARY KEY (CPF_CLIENTE,PLACA_CARRO),
	   FOREIGN KEY (ref_cliente) REFERENCES tb_cliente,
	   FOREIGN KEY (ref_carro) REFERENCES tb_carro
);

CREATE TABLE tb_promocao OF tp_promocao (
	   PRIMARY KEY(CD_PROMOCAO),
	  "VALOR" NOT NULL,
	  "DESC_PROMOCAO" NOT NULL
);


CREATE TABLE tb_servico OF tp_servico (
	PRIMARY KEY (OS),
	"PRAZO" NOT NULL,
	"VALOR" NOT NULL,
	"DESCRICAO" NOT NULL,
	"HORA" NOT NULL,
	FOREIGN KEY (ref_carro) REFERENCES tb_carro
);



CREATE TABLE tb_realiza OF tp_realiza (
	PRIMARY KEY (CPF_MECANICO,OS),
	"CPF_CLIENTE" NOT NULL,
	"DATA1" NOT NULL,
	"CD_PROMOCAO" NOT NULL,
	FOREIGN KEY (ref_cliente) REFERENCES tb_cliente,
	FOREIGN KEY (ref_servico) REFERENCES tb_servico,
	FOREIGN KEY (ref_promocao) REFERENCES tb_promocao,
	FOREIGN KEY (ref_mecanico) REFERENCES tb_mecanico
);





