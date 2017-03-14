#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: FT_User
#------------------------------------------------------------

CREATE TABLE FT_User(
        id            int (11) Auto_increment  NOT NULL ,
        pseudo        Varchar (25) ,
        mdp           Varchar (25) ,
        mail          Varchar (25) ,
        bio           Text ,
        dateNaissance Date ,
        photoProfil   Varchar (25) ,
        twitter       Varchar (25) ,
        youtube       Varchar (25) ,
        facebook      Varchar (25) ,
        twitch        Varchar (25) ,
        id_1          Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Annonce
#------------------------------------------------------------

CREATE TABLE FT_Annonce(
        id           int (11) Auto_increment  NOT NULL ,
        titre        Varchar (25) ,
        message      Text ,
        image        Varchar (25) ,
        id_FT_User   Int ,
        id_FT_Langue Int ,
        id_FT_Jeux   Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Jeux
#------------------------------------------------------------

CREATE TABLE FT_Jeux(
        id  int (11) Auto_increment  NOT NULL ,
        nom Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Categorie
#------------------------------------------------------------

CREATE TABLE FT_Categorie(
        id  int (11) Auto_increment  NOT NULL ,
        nom Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Rang
#------------------------------------------------------------

CREATE TABLE FT_Rang(
        id  int (11) Auto_increment  NOT NULL ,
        nom Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Langue
#------------------------------------------------------------

CREATE TABLE FT_Langue(
        id        int (11) Auto_increment  NOT NULL ,
        nom       Varchar (25) ,
        diminutif Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: FT_Evaluation
#------------------------------------------------------------

CREATE TABLE FT_Evaluation(
        id         int (11) Auto_increment  NOT NULL ,
        evaluation Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: parle
#------------------------------------------------------------

CREATE TABLE parle(
        id           Int NOT NULL ,
        id_FT_Langue Int NOT NULL ,
        PRIMARY KEY (id ,id_FT_Langue )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: joue
#------------------------------------------------------------

CREATE TABLE joue(
        id         Int NOT NULL ,
        id_FT_Jeux Int NOT NULL ,
        id_FT_Rang Int NOT NULL ,
        PRIMARY KEY (id ,id_FT_Jeux ,id_FT_Rang )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartient
#------------------------------------------------------------

CREATE TABLE appartient(
        id              Int NOT NULL ,
        id_FT_Categorie Int NOT NULL ,
        PRIMARY KEY (id ,id_FT_Categorie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: est composé de
#------------------------------------------------------------

CREATE TABLE est_compose_de(
        id         Int NOT NULL ,
        id_FT_Rang Int NOT NULL ,
        PRIMARY KEY (id ,id_FT_Rang )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: est évalué
#------------------------------------------------------------

CREATE TABLE est_evalue(
        id         Int NOT NULL ,
        id_FT_User Int NOT NULL ,
        PRIMARY KEY (id ,id_FT_User )
)ENGINE=InnoDB;

ALTER TABLE FT_User ADD CONSTRAINT FK_FT_User_id_1 FOREIGN KEY (id_1) REFERENCES FT_User(id);
ALTER TABLE FT_Annonce ADD CONSTRAINT FK_FT_Annonce_id_FT_User FOREIGN KEY (id_FT_User) REFERENCES FT_User(id);
ALTER TABLE FT_Annonce ADD CONSTRAINT FK_FT_Annonce_id_FT_Langue FOREIGN KEY (id_FT_Langue) REFERENCES FT_Langue(id);
ALTER TABLE FT_Annonce ADD CONSTRAINT FK_FT_Annonce_id_FT_Jeux FOREIGN KEY (id_FT_Jeux) REFERENCES FT_Jeux(id);
ALTER TABLE parle ADD CONSTRAINT FK_parle_id FOREIGN KEY (id) REFERENCES FT_User(id);
ALTER TABLE parle ADD CONSTRAINT FK_parle_id_FT_Langue FOREIGN KEY (id_FT_Langue) REFERENCES FT_Langue(id);
ALTER TABLE joue ADD CONSTRAINT FK_joue_id FOREIGN KEY (id) REFERENCES FT_User(id);
ALTER TABLE joue ADD CONSTRAINT FK_joue_id_FT_Jeux FOREIGN KEY (id_FT_Jeux) REFERENCES FT_Jeux(id);
ALTER TABLE joue ADD CONSTRAINT FK_joue_id_FT_Rang FOREIGN KEY (id_FT_Rang) REFERENCES FT_Rang(id);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_id FOREIGN KEY (id) REFERENCES FT_Jeux(id);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_id_FT_Categorie FOREIGN KEY (id_FT_Categorie) REFERENCES FT_Categorie(id);
ALTER TABLE est_compose_de ADD CONSTRAINT FK_est_compose_de_id FOREIGN KEY (id) REFERENCES FT_Jeux(id);
ALTER TABLE est_compose_de ADD CONSTRAINT FK_est_compose_de_id_FT_Rang FOREIGN KEY (id_FT_Rang) REFERENCES FT_Rang(id);
ALTER TABLE est_evalue ADD CONSTRAINT FK_est_evalue_id FOREIGN KEY (id) REFERENCES FT_Evaluation(id);
ALTER TABLE est_evalue ADD CONSTRAINT FK_est_evalue_id_FT_User FOREIGN KEY (id_FT_User) REFERENCES FT_User(id);
