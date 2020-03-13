CREATE TABLE OUVRAGES 
(
  ISBN NUMBER(10) NOT NULL 
, TITRE VARCHAR2(200) NOT NULL 
, AUTEUR VARCHAR2(80) 
, GENRES CHAR(5) NOT NULL 
, EDITEUR VARCHAR2(80) 
, CONSTRAINT OUVRAGES_PK PRIMARY KEY 
  (
    ISBN 
  )
  ENABLE 
);

ALTER TABLE OUVRAGES
ADD CONSTRAINT OUVRAGES_FK1 FOREIGN KEY
(
  GENRES 
)
REFERENCES GENRES
(
  CODE 
)
ENABLE;