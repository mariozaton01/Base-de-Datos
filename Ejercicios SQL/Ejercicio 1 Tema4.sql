--EJERCICIO 1
CREATE TABLE ALUMNOS(
DNI VARCHAR2(10),
NOMBRE VARCHAR2(30)NOT NULL,
EDAD NUMBER(2),
CURSO NUMBER(1),
CONSTRAINT ALU_DNI_PK PRIMARY KEY(DNI),
CONSTRAINT ALU_EDA_CK CHECK(EDAD BETWEEN 5 AND 20 ),
CONSTRAINT ALU_NOM_CK CHECK (NOMBRE=UPPER(NOMBRE)),
CONSTRAINT ALU_CUR_CK CHECK (CURSO IN(1,2,3))
);
--EJERCICIO 2
ALTER TABLE ALUMNOS ADD(
 SEXO VARCHAR2(1) CONSTRAINT ALU_SEX_CK CHECK (SEXO IN('M','F')),
 IMPORTE DECIMAL(10,2)DEFAULT 0);
 

 
--EJERCICIO 3
ALTER TABLE ALUMNOS DROP (EDAD) CASCADE CONSTRAINTS;

SELECT *
FROM ALUMNOS;

ALTER TABLE ALUMNOS ADD(
FECHA_NAC DATE,
FECHA_ALTA DATE);

ALTER TABLE ALUMNOS ADD CONSTRAINT ALU_F_ALTA_CK CHECK (FECHA_ALTA>FECHA_NAC);

--EJERCICIO 4
ALTER TABLE ALUMNOS RENAME COLUMN IMPORTE TO TASAS;

--EJRECICIO 5
DESC USER_CONSTRAINTS;

SELECT CONSTRAINT_NAME, TABLE_NAME,CONSTRAINT_TYPE
FROM USER_CONSTRAINTS
WHERE UPPER(TABLE_NAME)='ALUMNOS';
