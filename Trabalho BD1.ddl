-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2020-06-03 14:54:48 GMT-03:00
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE amostradores_lab (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE amostradores_lab ADD CONSTRAINT amostradores_lab_pk PRIMARY KEY ( id );

ALTER TABLE amostradores_lab ADD CONSTRAINT uid_amostradores_lab UNIQUE ( id );

ALTER TABLE amostradores_lab ADD CONSTRAINT uid2_amostradores_lab UNIQUE ( email );

ALTER TABLE amostradores_lab ADD CONSTRAINT uid3_amostradores_lab UNIQUE ( matricula );

ALTER TABLE amostradores_lab ADD CONSTRAINT amostradores_lab__un UNIQUE ( telefone );

CREATE TABLE amostradores_tae (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE amostradores_tae ADD CONSTRAINT amostradores_tae_pk PRIMARY KEY ( id );

ALTER TABLE amostradores_tae ADD CONSTRAINT uid_amostradores_tae UNIQUE ( id );

ALTER TABLE amostradores_tae ADD CONSTRAINT uid2_amostradores_tae UNIQUE ( matricula );

ALTER TABLE amostradores_tae ADD CONSTRAINT uid3_amostradores_tae UNIQUE ( email );

ALTER TABLE amostradores_tae ADD CONSTRAINT amostradores_tae__un UNIQUE ( telefone );

CREATE TABLE amostragens_lab (
    data                 TIMESTAMP NOT NULL,
    qtd_de_amostras      NUMBER NOT NULL,
    id                   NUMBER NOT NULL,
    contratos_lab_id     NUMBER NOT NULL,
    amostradores_lab_id  NUMBER NOT NULL
);

ALTER TABLE amostragens_lab ADD CONSTRAINT amostragens_lab_pk PRIMARY KEY ( id );

ALTER TABLE amostragens_lab ADD CONSTRAINT uid_amostragemlab UNIQUE ( contratos_lab_id,
                                                                      data );

ALTER TABLE amostragens_lab ADD CONSTRAINT amostragens_lab__un UNIQUE ( id );

CREATE TABLE amostragens_tae (
    data                 TIMESTAMP NOT NULL,
    qtd_de_amostras      NUMBER NOT NULL,
    id                   NUMBER NOT NULL,
    contratos_tae_id     NUMBER NOT NULL,
    amostradores_tae_id  NUMBER NOT NULL
);

ALTER TABLE amostragens_tae ADD CONSTRAINT amostragens_tae_pk PRIMARY KEY ( id );

ALTER TABLE amostragens_tae ADD CONSTRAINT uid_amostragens_tae UNIQUE ( contratos_tae_id,
                                                                        data );

ALTER TABLE amostragens_tae ADD CONSTRAINT amostragens_tae__un UNIQUE ( id );

CREATE TABLE amostras_lab (
    numero_da_amostra   NUMBER NOT NULL,
    tipo_de_amostra     VARCHAR2(20 CHAR) NOT NULL,
    ponto_de_coleta     VARCHAR2(30 CHAR) NOT NULL,
    id                  NUMBER NOT NULL,
    amostragens_lab_id  NUMBER NOT NULL
);

ALTER TABLE amostras_lab ADD CONSTRAINT amostras_lab_pk PRIMARY KEY ( id );

ALTER TABLE amostras_lab ADD CONSTRAINT uid_amostras_lab UNIQUE ( id );

ALTER TABLE amostras_lab ADD CONSTRAINT uid2_amostras_lab UNIQUE ( numero_da_amostra );

CREATE TABLE amostras_lab_analistas (
    id               NUMBER NOT NULL,
    amostras_lab_id  NUMBER NOT NULL,
    analistas_id     NUMBER NOT NULL
);

ALTER TABLE amostras_lab_analistas ADD CONSTRAINT amostras_analistas_pk PRIMARY KEY ( id );

ALTER TABLE amostras_lab_analistas ADD CONSTRAINT uid_amostras_lab_analistas UNIQUE ( id );

CREATE TABLE amostras_tae (
    numero_da_amostra   NUMBER NOT NULL,
    tipo_de_amostra     VARCHAR2(20 CHAR) NOT NULL,
    ponto_de_coleta     VARCHAR2(30 CHAR) NOT NULL,
    id                  NUMBER NOT NULL,
    amostragens_tae_id  NUMBER NOT NULL
);

ALTER TABLE amostras_tae ADD CONSTRAINT amostras_tae_pk PRIMARY KEY ( id );

ALTER TABLE amostras_tae ADD CONSTRAINT uid_amostras_tae UNIQUE ( id );

ALTER TABLE amostras_tae ADD CONSTRAINT uid2_amostras_tae UNIQUE ( numero_da_amostra );

CREATE TABLE amostras_tae_analistas (
    id               NUMBER NOT NULL,
    analistas_id     NUMBER NOT NULL,
    amostras_tae_id  NUMBER NOT NULL
);

ALTER TABLE amostras_tae_analistas ADD CONSTRAINT amostras_tae_analistas_pk PRIMARY KEY ( id );

ALTER TABLE amostras_tae_analistas ADD CONSTRAINT uid_amostras_tae_analistas UNIQUE ( id );

CREATE TABLE analises (
    nome          VARCHAR2(30 CHAR) NOT NULL,
    metodo        VARCHAR2(30 CHAR) NOT NULL,
    data          TIMESTAMP NOT NULL,
    id            NUMBER NOT NULL,
    analistas_id  NUMBER NOT NULL
);

ALTER TABLE analises ADD CONSTRAINT analises_pk PRIMARY KEY ( id );

ALTER TABLE analises ADD CONSTRAINT uid_analises UNIQUE ( id );

CREATE TABLE analistas (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE analistas ADD CONSTRAINT analistas_pk PRIMARY KEY ( id );

ALTER TABLE analistas ADD CONSTRAINT uid_analistas UNIQUE ( id );

ALTER TABLE analistas ADD CONSTRAINT uid2_analistas UNIQUE ( email );

ALTER TABLE analistas ADD CONSTRAINT uid3_analistas UNIQUE ( matricula );

ALTER TABLE analistas ADD CONSTRAINT analistas__un UNIQUE ( telefone );

CREATE TABLE assistencias (
    motivo               VARCHAR2(50 CHAR) NOT NULL,
    tipo_de_atendimento  VARCHAR2(20 CHAR) NOT NULL,
    data                 TIMESTAMP NOT NULL,
    id                   NUMBER NOT NULL,
    funcs_tae_id         NUMBER NOT NULL,
    funcs_cch_id         NUMBER NOT NULL
);

ALTER TABLE assistencias ADD CONSTRAINT assistencias_pk PRIMARY KEY ( id );

ALTER TABLE assistencias ADD CONSTRAINT uid_assistencias UNIQUE ( id );

ALTER TABLE assistencias ADD CONSTRAINT uid2_assistencias UNIQUE ( motivo,
                                                                   data );

CREATE TABLE contratos_cch (
    cpf_cnpj            VARCHAR2(20 CHAR) NOT NULL,
    nome                VARCHAR2(50 CHAR) NOT NULL,
    telefone            VARCHAR2(20 CHAR) NOT NULL,
    email               VARCHAR2(50 CHAR) NOT NULL,
    data                TIMESTAMP NOT NULL,
    id                  NUMBER NOT NULL,
    funcs_cch_id        NUMBER NOT NULL,
    funcs_comercial_id  NUMBER NOT NULL
);

ALTER TABLE contratos_cch ADD CONSTRAINT contratos_cch_pk PRIMARY KEY ( id );

ALTER TABLE contratos_cch ADD CONSTRAINT uid_contratos_cch UNIQUE ( id );

ALTER TABLE contratos_cch ADD CONSTRAINT uid2_contratos_cch UNIQUE ( cpf_cnpj,
                                                                     data );

CREATE TABLE contratos_lab (
    cpf_cnpj            VARCHAR2(25 CHAR) NOT NULL,
    nome                VARCHAR2(50 CHAR) NOT NULL,
    telefone            VARCHAR2(20 CHAR) NOT NULL,
    email               VARCHAR2(50 CHAR) NOT NULL,
    data                TIMESTAMP NOT NULL,
    id                  NUMBER NOT NULL,
    funcs_comercial_id  NUMBER NOT NULL
);

ALTER TABLE contratos_lab ADD CONSTRAINT contratos_lab_pk PRIMARY KEY ( id );

ALTER TABLE contratos_lab ADD CONSTRAINT uid_contratos_lab UNIQUE ( id );

ALTER TABLE contratos_lab ADD CONSTRAINT uid2_contratos_lab UNIQUE ( cpf_cnpj,
                                                                     data );

CREATE TABLE contratos_tae (
    cpf_cnpj            VARCHAR2(25 CHAR) NOT NULL,
    nome                VARCHAR2(50 CHAR) NOT NULL,
    telefone            VARCHAR2(20 CHAR) NOT NULL,
    email               VARCHAR2(50 CHAR) NOT NULL,
    data                TIMESTAMP NOT NULL,
    id                  NUMBER NOT NULL,
    funcs_comercial_id  NUMBER NOT NULL,
    funcs_tae_id        NUMBER NOT NULL
);

ALTER TABLE contratos_tae ADD CONSTRAINT contratos_tae_pk PRIMARY KEY ( id );

ALTER TABLE contratos_tae ADD CONSTRAINT uid_contratos_tae UNIQUE ( id );

ALTER TABLE contratos_tae ADD CONSTRAINT uid2_contratos_tae UNIQUE ( cpf_cnpj,
                                                                     data );

CREATE TABLE funcs_cch (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE funcs_cch ADD CONSTRAINT funcs_cch_pk PRIMARY KEY ( id );

ALTER TABLE funcs_cch ADD CONSTRAINT uid_funcs_cch UNIQUE ( id );

ALTER TABLE funcs_cch ADD CONSTRAINT uid2_funcs_cch UNIQUE ( matricula );

ALTER TABLE funcs_cch ADD CONSTRAINT uid3_funcs_cch UNIQUE ( email );

ALTER TABLE funcs_cch ADD CONSTRAINT funcs_cch__un UNIQUE ( telefone );

CREATE TABLE funcs_comercial (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE funcs_comercial ADD CONSTRAINT funcs_comercial_pk PRIMARY KEY ( id );

ALTER TABLE funcs_comercial ADD CONSTRAINT uid_funcs_comercial UNIQUE ( id );

ALTER TABLE funcs_comercial ADD CONSTRAINT uid2_funcs_comercial UNIQUE ( matricula );

ALTER TABLE funcs_comercial ADD CONSTRAINT uid3_funcs_comercial UNIQUE ( email );

ALTER TABLE funcs_comercial ADD CONSTRAINT funcs_comercial__un UNIQUE ( telefone );

CREATE TABLE funcs_tae (
    matricula  VARCHAR2(30 CHAR) NOT NULL,
    nome       VARCHAR2(50 CHAR) NOT NULL,
    telefone   VARCHAR2(20 CHAR) NOT NULL,
    email      VARCHAR2(50 CHAR) NOT NULL,
    id         NUMBER NOT NULL
);

ALTER TABLE funcs_tae ADD CONSTRAINT funcs_tae_pk PRIMARY KEY ( id );

ALTER TABLE funcs_tae ADD CONSTRAINT uid_funcs_tae UNIQUE ( id );

ALTER TABLE funcs_tae ADD CONSTRAINT uid2_funcs_tae UNIQUE ( matricula );

ALTER TABLE funcs_tae ADD CONSTRAINT uid3_funcs_tae UNIQUE ( email );

ALTER TABLE funcs_tae ADD CONSTRAINT funcs_tae__un UNIQUE ( telefone );

CREATE TABLE mobilizacoes (
    data             TIMESTAMP NOT NULL,
    tipo_de_servico  VARCHAR2(30 CHAR) NOT NULL,
    id               NUMBER NOT NULL,
    funcs_cch_id     NUMBER NOT NULL
);

ALTER TABLE mobilizacoes ADD CONSTRAINT mobilizacoes_pk PRIMARY KEY ( id );

ALTER TABLE mobilizacoes ADD CONSTRAINT uid_mobilizacoes UNIQUE ( id );

ALTER TABLE mobilizacoes ADD CONSTRAINT uid2_mobilizacoes UNIQUE ( data,
                                                                   funcs_cch_id );

CREATE TABLE reagentes (
    nome                 VARCHAR2(50 CHAR) NOT NULL,
    validade             DATE NOT NULL,
    fornecedor           VARCHAR2(30 CHAR) NOT NULL,
    estado_fisico        VARCHAR2(20 CHAR) NOT NULL,
    concentracao_pureza  VARCHAR2(20 CHAR) NOT NULL,
    lote                 VARCHAR2(20 CHAR) NOT NULL,
    id                   NUMBER NOT NULL
);

ALTER TABLE reagentes ADD CONSTRAINT reagentes_pk PRIMARY KEY ( id );

ALTER TABLE reagentes ADD CONSTRAINT uid_reagentes UNIQUE ( id );

ALTER TABLE reagentes
    ADD CONSTRAINT uid2_reagentes UNIQUE ( nome,
                                           lote,
                                           fornecedor );

CREATE TABLE reagentes_analises (
    id            NUMBER NOT NULL,
    analises_id   NUMBER NOT NULL,
    reagentes_id  NUMBER NOT NULL
);

ALTER TABLE reagentes_analises ADD CONSTRAINT reagentes_analises_pk PRIMARY KEY ( id );

ALTER TABLE reagentes_analises ADD CONSTRAINT uid_reagentes_analises UNIQUE ( id );

ALTER TABLE amostras_tae_analistas
    ADD CONSTRAINT a_ras_tae_a_stas_a_ras_tae_fk FOREIGN KEY ( amostras_tae_id )
        REFERENCES amostras_tae ( id );

ALTER TABLE amostragens_lab
    ADD CONSTRAINT a_tragens_lab_a_adores_lab_fk FOREIGN KEY ( amostradores_lab_id )
        REFERENCES amostradores_lab ( id );

ALTER TABLE amostragens_lab
    ADD CONSTRAINT a_tragens_lab_cont_lab_fk FOREIGN KEY ( contratos_lab_id )
        REFERENCES contratos_lab ( id );

ALTER TABLE amostragens_tae
    ADD CONSTRAINT a_tragens_tae_a_dores_tae_fk FOREIGN KEY ( amostradores_tae_id )
        REFERENCES amostradores_tae ( id );

ALTER TABLE amostragens_tae
    ADD CONSTRAINT a_tragens_tae_contr_tae_fk FOREIGN KEY ( contratos_tae_id )
        REFERENCES contratos_tae ( id );

ALTER TABLE amostras_lab_analistas
    ADD CONSTRAINT a_tras_a_istas_a_tras_lab_fk FOREIGN KEY ( amostras_lab_id )
        REFERENCES amostras_lab ( id );

ALTER TABLE amostras_lab_analistas
    ADD CONSTRAINT a_tras_a_istas_analistas_fk FOREIGN KEY ( analistas_id )
        REFERENCES analistas ( id );

ALTER TABLE amostras_lab
    ADD CONSTRAINT a_tras_lab_a_tragens_lab_fk FOREIGN KEY ( amostragens_lab_id )
        REFERENCES amostragens_lab ( id );

ALTER TABLE amostras_tae_analistas
    ADD CONSTRAINT a_tras_tae_a_istas_a_istas_fk FOREIGN KEY ( analistas_id )
        REFERENCES analistas ( id );

ALTER TABLE amostras_tae
    ADD CONSTRAINT a_tras_tae_a_tragens_tae_fk FOREIGN KEY ( amostragens_tae_id )
        REFERENCES amostragens_tae ( id );

ALTER TABLE analises
    ADD CONSTRAINT analises_analistas_fk FOREIGN KEY ( analistas_id )
        REFERENCES analistas ( id );

ALTER TABLE assistencias
    ADD CONSTRAINT assistencias_funcs_cch_fk FOREIGN KEY ( funcs_cch_id )
        REFERENCES funcs_cch ( id );

ALTER TABLE assistencias
    ADD CONSTRAINT assistencias_tae_funcs_tae_fk FOREIGN KEY ( funcs_tae_id )
        REFERENCES funcs_tae ( id );

ALTER TABLE contratos_cch
    ADD CONSTRAINT cont_cch_funcs_cch_fk FOREIGN KEY ( funcs_cch_id )
        REFERENCES funcs_cch ( id );

ALTER TABLE contratos_cch
    ADD CONSTRAINT cont_cch_funcs_com_fk FOREIGN KEY ( funcs_comercial_id )
        REFERENCES funcs_comercial ( id );

ALTER TABLE contratos_lab
    ADD CONSTRAINT cont_lab_funcs_com_fk FOREIGN KEY ( funcs_comercial_id )
        REFERENCES funcs_comercial ( id );

ALTER TABLE contratos_tae
    ADD CONSTRAINT cont_tae_funcs_com_fk FOREIGN KEY ( funcs_comercial_id )
        REFERENCES funcs_comercial ( id );

ALTER TABLE contratos_tae
    ADD CONSTRAINT cont_tae_funcs_tae_fk FOREIGN KEY ( funcs_tae_id )
        REFERENCES funcs_tae ( id );

ALTER TABLE mobilizacoes
    ADD CONSTRAINT mobilizacoes_funcs_cch_fk FOREIGN KEY ( funcs_cch_id )
        REFERENCES funcs_cch ( id );

ALTER TABLE reagentes_analises
    ADD CONSTRAINT reag_a_ises_a_ises_fk FOREIGN KEY ( analises_id )
        REFERENCES analises ( id );

ALTER TABLE reagentes_analises
    ADD CONSTRAINT reag_a_ises_reag_fk FOREIGN KEY ( reagentes_id )
        REFERENCES reagentes ( id );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            20
-- CREATE INDEX                             0
-- ALTER TABLE                             89
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
