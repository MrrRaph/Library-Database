CREATE TABLE EXEMPLAIRES (	
    ISBN NUMBER(10,0) NOT NULL ENABLE, 
	NUMERO NUMBER(3,0) NOT NULL ENABLE, 
	ETAT CHAR(5 BYTE), 
	CONSTRAINT EXEMPLAIRES_PK PRIMARY KEY (ISBN, NUMERO) ENABLE, 
	CONSTRAINT EXEMPLAIRES_CHK1 CHECK (etat IN ('NE', 'BO', 'MO', 'MA')) ENABLE, 
	CONSTRAINT EXEMPLAIRES_FK1 FOREIGN KEY (ISBN)
	    REFERENCES OUVRAGES (ISBN) ENABLE
);