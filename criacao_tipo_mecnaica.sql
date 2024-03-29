DROP TYPE TP_PESSOA FORCE;
DROP TYPE TP_CLIENTE FORCE;
DROP TYPE TP_FUNCIONARIO FORCE;
DROP TYPE TP_MECANICO FORCE;
DROP TYPE TP_ATENDENTE FORCE;
DROP TYPE TP_CARRO FORCE;
DROP TYPE TP_SERVICO FORCE;
DROP TYPE TP_PROMOCAO FORCE;
DROP TYPE TP_REALIZA FORCE;
DROP TYPE TP_CARROCLIENTE FORCE;
DROP TYPE TP_ATENDE FORCE;
DROP TYPE TP_TELEFONE FORCE;
DROP TYPE TP_NT_FONE FORCE;


	

CREATE OR REPLACE TYPE tp_telefone AS OBJECT ( 
  "DDD" NUMBER,
  "NUMERO" NUMBER
)FINAL;
/

CREATE OR REPLACE  TYPE  tp_nt_fone AS TABLE OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT ( 
    "CPF" VARCHAR2(11),
	"GENERO" VARCHAR2(1),
	"NOME" VARCHAR2(35)  ,
	"DATA_NASC" DATE ,
	"TELEFONE" tp_nt_fone
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_funcionario under tp_pessoa (
    "DATA_ADMISSAO" DATE,
	"SALARIO" FLOAT,
	"MATRICULA" NUMBER
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_atendente under tp_funcionario ( 
    "GRAU_ESC" VARCHAR2(30),
	"CPF_CHEFE" VARCHAR2(11),
	ref_chefe ref tp_atendente
)FINAL;
/

CREATE OR REPLACE TYPE tp_cliente under tp_pessoa  (
  "DATA_CAD" DATE,
  "ID_CAD" NUMBER,
  "PONTOS" NUMBER
)FINAL;
/

CREATE OR REPLACE TYPE tp_mecanico under tp_funcionario  (
  "COD_CERTIFICADO" NUMBER,
  "DATA_CONCLUSAO" DATE,
  "INSTITUICAO" VARCHAR2(20)
)FINAL;
/

CREATE OR REPLACE TYPE tp_atende AS OBJECT (
  "CPF_ATEND" VARCHAR2(11),
  "CPF_CLIENTE" VARCHAR2(11),
  ref_atendente ref tp_atendente,
  ref_cliente ref tp_cliente
)FINAL;
/

CREATE OR REPLACE TYPE tp_carro AS OBJECT ( 
     "PLACA" VARCHAR2(8),
	 "COR" VARCHAR2(10),
	 "ANO" NUMBER,
	 "MODELO" VARCHAR2(10)
	 
)FINAL;
/

CREATE OR REPLACE TYPE tp_carrocliente  AS OBJECT ( --ERRADO
       "PLACA_CARRO" VARCHAR2(8),
	   "CPF_CLIENTE" VARCHAR2(11),
	   ref_cliente ref tp_cliente,
	   ref_carro ref tp_carro
)FINAL;
/

CREATE OR REPLACE TYPE tp_promocao AS OBJECT ( --ERRADO
       "CD_PROMOCAO" NUMBER,
	   "VALOR" FLOAT,
	   "DESC_PROMOCAO" VARCHAR2(30)
	   
)FINAL;
/

CREATE OR REPLACE TYPE tp_servico AS OBJECT ( 
    "OS" NUMBER,
	"PRAZO" DATE,
	"VALOR" FLOAT,
	"DESCRICAO" VARCHAR2(20),
	"HORA" VARCHAR2(10),
	"PLACA_CARRO" VARCHAR2(8),
	ref_carro  ref  tp_carro
)FINAL;
/

CREATE OR REPLACE TYPE tp_realiza AS OBJECT ( -- ERRADO
    "CPF_CLIENTE" VARCHAR2(11),
	"CPF_MECANICO" VARCHAR2(11),
	"OS" NUMBER,
	"DATA1" DATE,
	"CD_PROMOCAO" NUMBER,
	ref_promocao ref tp_promocao,
	ref_mecanico ref tp_mecanico,
	ref_servico ref tp_servico,
	ref_cliente ref tp_cliente
	   
)FINAL;
/




