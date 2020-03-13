CREATE TABLE MEMBRES (	
    NUMERO NUMBER(6,0) NOT NULL ENABLE, 
	NOM VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	PRENOM VARCHAR2(80 BYTE) NOT NULL ENABLE, 
	ADRESSE VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	TELEPHONE CHAR(10 BYTE) NOT NULL ENABLE, 
	ADHESION DATE NOT NULL ENABLE, 
	DUREE NUMBER(2,0) NOT NULL ENABLE, 
	CONSTRAINT MEMBRES_PK PRIMARY KEY (NUMERO) ENABLE, 
	CONSTRAINT MEMBRES_CHK1 CHECK (duree >= 0 AND duree IN (1, 3, 6, 12)) ENABLE
);