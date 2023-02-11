/*
 * ER/Studio 9.7 DE SQL Code Generation
 * Company :      Toshiba
 * Project :      CentralDownloads.dm1
 * Author :       Jackson
 *
 * Date Created : Friday, January 29, 2016 20:15:35
 * Target DBMS : Microsoft SQL Server 2014
 */

/* 
 * TABLE: cliente 
 */

CREATE TABLE cliente(
    id_cliente    int IDENTITY(1,1)   NOT NULL,
    senha         varchar(100)        NULL,
    contato       varchar(50)         NULL,
    email         varchar(50)         NULL,
    empresa       varchar(100)        NULL,
    CONSTRAINT cliente_pk PRIMARY KEY NONCLUSTERED (id_cliente)
)
go



IF OBJECT_ID('cliente') IS NOT NULL
    PRINT '<<< CREATED TABLE cliente >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE cliente >>>'
go

/* 
 * TABLE: licenca_cliente 
 */

CREATE TABLE licenca_cliente(
    id_cliente         int    NOT NULL,
    id_produto         int    NOT NULL,
    data_compra        date                NOT NULL,
    duracao_licenca    int                 NULL,
    CONSTRAINT licenca_cliente_pk PRIMARY KEY NONCLUSTERED (id_cliente, id_produto, data_compra)
)
go



IF OBJECT_ID('licenca_cliente') IS NOT NULL
    PRINT '<<< CREATED TABLE licenca_cliente >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE licenca_cliente >>>'
go

/* 
 * TABLE: produto 
 */

CREATE TABLE produto(
    id_produto    int IDENTITY(1,1)   NOT NULL,
    descricao     varchar(100)        NULL,
    pasta         varchar(50)         NULL,
    CONSTRAINT produto_pk PRIMARY KEY NONCLUSTERED (id_produto)
)
go



IF OBJECT_ID('produto') IS NOT NULL
    PRINT '<<< CREATED TABLE produto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE produto >>>'
go

/* 
 * TABLE: release 
 */

CREATE TABLE release(
    id_produto      int	    NOT NULL,
    data_release    date                NOT NULL,
    ativo           bit                 NULL,
    arquivo         varchar(50)         NULL,
    CONSTRAINT release_pk PRIMARY KEY NONCLUSTERED (id_produto, data_release)
)
go



IF OBJECT_ID('release') IS NOT NULL
    PRINT '<<< CREATED TABLE release >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE release >>>'
go

/* 
 * INDEX: Ref14 
 */

CREATE INDEX Ref14 ON licenca_cliente(id_cliente)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('licenca_cliente') AND name='Ref14')
    PRINT '<<< CREATED INDEX licenca_cliente.Ref14 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX licenca_cliente.Ref14 >>>'
go

/* 
 * INDEX: Ref25 
 */

CREATE INDEX Ref25 ON licenca_cliente(id_produto)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('licenca_cliente') AND name='Ref25')
    PRINT '<<< CREATED INDEX licenca_cliente.Ref25 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX licenca_cliente.Ref25 >>>'
go

/* 
 * INDEX: Ref26 
 */

CREATE INDEX Ref26 ON release(id_produto)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('release') AND name='Ref26')
    PRINT '<<< CREATED INDEX release.Ref26 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX release.Ref26 >>>'
go

/* 
 * TABLE: licenca_cliente 
 */

ALTER TABLE licenca_cliente ADD CONSTRAINT Refcliente4 
    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente)
go

ALTER TABLE licenca_cliente ADD CONSTRAINT Refproduto5 
    FOREIGN KEY (id_produto)
    REFERENCES produto(id_produto)
go


/* 
 * TABLE: release 
 */

ALTER TABLE release ADD CONSTRAINT Refproduto6 
    FOREIGN KEY (id_produto)
    REFERENCES produto(id_produto)
go


