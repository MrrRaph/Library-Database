CREATE TABLE EMPRUNTS 
(
  NUMERO NUMBER(10) NOT NULL 
, MEMBRE NUMBER(6) 
, CREELE DATE DEFAULT sysdate 
, CONSTRAINT EMPRUNTS_PK PRIMARY KEY 
  (
    NUMERO 
  )
  ENABLE 
);

ALTER TABLE EMPRUNTS
ADD CONSTRAINT EMPRUNTS_FK1 FOREIGN KEY
(
  MEMBRE 
)
REFERENCES MEMBRES
(
  NUMERO 
)
ENABLE;