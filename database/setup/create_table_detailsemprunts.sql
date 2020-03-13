CREATE TABLE DETAILSEMPRUNTS 
(
  EMPRUNT NUMBER(10) NOT NULL 
, NUMERO NUMBER(3) NOT NULL 
, ISBN NUMBER(10) NOT NULL 
, EXEMPLAIRE NUMBER(5) 
, RENDULE DATE 
, CONSTRAINT DETAILSEMPRUNTS_PK PRIMARY KEY 
  (
    EMPRUNT 
  , NUMERO 
  , ISBN 
  )
  ENABLE 
);

ALTER TABLE DETAILSEMPRUNTS
ADD CONSTRAINT DETAILSEMPRUNTS_FK1 FOREIGN KEY
(
  EMPRUNT 
)
REFERENCES EMPRUNTS
(
  NUMERO 
)
ENABLE;

ALTER TABLE DETAILSEMPRUNTS
ADD CONSTRAINT DETAILSEMPRUNTS_FK2 FOREIGN KEY
(
  ISBN 
)
REFERENCES OUVRAGES
(
  ISBN 
)
ENABLE;

ALTER TABLE DETAILSEMPRUNTS
ADD CONSTRAINT DETAILSEMPRUNTS_FK3 FOREIGN KEY
(
  ISBN 
, EXEMPLAIRE 
)
REFERENCES EXEMPLAIRES
(
  ISBN 
, NUMERO 
)
ENABLE;