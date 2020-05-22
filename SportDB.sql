CREATE DATABASE sport
use sport

CREATE TABLE Entitesportif(
	ID int NOT NULL IDENTITY, 
	Nom varchar(50), 
	Date_creation Date, 
	Username varchar(50), 
	Password int, 
	PRIMARY KEY (ID)
);

CREATE TABLE Athlete(
	ID int NOT NULL IDENTITY, 
	Nom varchar(50), 
	Prenom varchar(50), 
	Date_naissance Date, 
	Categorie varchar(50),
	imageAthlete VarBinary(max), 
	PRIMARY KEY (ID)
);

CREATE TABLE Critere_sante(
	ID int NOT NULL IDENTITY,
	Nom_indice varchar(50), 
	Valeur_min int, 
	Valeur_max int, 
	PRIMARY KEY (ID)
);

CREATE TABLE TypeCompetition(
	ID int NOT NULL IDENTITY,
	TypeCom varchar(40),  
	PRIMARY KEY (ID)
);

CREATE TABLE Competition(
	ID int NOT NULL IDENTITY, 
	idcom int REFERENCES TypeCompetition(ID) NOT NULL, 
	Nom varchar(50), 
	DateCom Date, 
	PRIMARY KEY (ID)
);

CREATE TABLE CategorieAge(
	ID int NOT NULL IDENTITY, 
	[Age de] Date, 
	[Age a] Date, 
	PRIMARY KEY (ID)
);

CREATE TABLE Critere(
	ID int NOT NULL IDENTITY,
	SportID int NOT NULL, 
	Nom varchar(50), 
	Description varchar(200), 
	PRIMARY KEY (ID)
);

CREATE TABLE Sport(
	ID int NOT NULL IDENTITY, 
	Description varchar(50), 
	PRIMARY KEY (ID)
);

CREATE TABLE Santeathlete(
	ID int NOT NULL IDENTITY, 
	Valeur int, 
	Date_exam int, 
	Critere_santeID int, 
	AthleteID int, 
	PRIMARY KEY (ID)
);

CREATE TABLE Performance(
	Valeur int,
	ida int REFERENCES Athlete(ID),
	idc int REFERENCES Critere(ID),
	idca int REFERENCES CategorieAge(ID),
	idco int REFERENCES Competition(ID)
);

CREATE TABLE Entiteathlete(
	ID int NOT NULL IDENTITY,
	Date_debut Date, 
	Date_Fin Date, 
	AthleteID int, 
	EntitesportifID int, 
	PRIMARY KEY (ID)
);


----------------------------FOREIGN KEY POUR TABLE Performance-------------------------------
ALTER TABLE Performance ADD CONSTRAINT FK_Critere FOREIGN KEY (idc) REFERENCES Critere(ID); 
ALTER TABLE Performance ADD CONSTRAINT FK_CategorieAge FOREIGN KEY (idca) REFERENCES CategorieAge(ID);
ALTER TABLE Performance ADD CONSTRAINT FK_Competition FOREIGN KEY (idco) REFERENCES Competition(ID);
ALTER TABLE Performance ADD CONSTRAINT FK_Athlete FOREIGN KEY (ida) REFERENCES Athlete(ID);

----------------------------FOREIGN KEY POUR TABLE EntiteAthlete-------------------------------
ALTER TABLE Entiteathlete ADD CONSTRAINT FK_Athlete FOREIGN KEY (AthleteID) REFERENCES Athlete(ID);
ALTER TABLE Entiteathlete ADD CONSTRAINT FK_EntiteSportif FOREIGN KEY (EntitesportifID) REFERENCES Entitesportif(ID);

----------------------------FOREIGN KEY POUR TABLE SanteAthlete-------------------------------
ALTER TABLE Santeathlete ADD CONSTRAINT FK_CritereSante FOREIGN KEY (Critere_santeID) REFERENCES Critere_sante(ID);
ALTER TABLE Santeathlete ADD CONSTRAINT FK_Santeathlete FOREIGN KEY (AthleteID) REFERENCES Athlete(ID);

----------------------------FOREIGN KEY POUR TABLE Critere------------------------------------
ALTER TABLE Critere ADD CONSTRAINT FKCritere964352 FOREIGN KEY (SportID) REFERENCES Sport(ID);

----------------------------FOREIGN KEY POUR TABLE Competition----------------------------------------------------------------
ALTER TABLE Competition ADD CONSTRAINT FKCompetitio137291 FOREIGN KEY (idcom) REFERENCES TypeCompetition(ID);




SELECT * FROM Athlete;
SELECT * FROM CategorieAge;
SELECT * FROM Competition;
SELECT * FROM Critere;
SELECT * FROM Critere_sante;
SELECT * FROM Performance;
SELECT * FROM Santeathlete;
SELECT * FROM TypeCompetition;
SELECT * FROM Entiteathlete
SELECT * FROM Sport;