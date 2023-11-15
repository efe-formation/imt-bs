CREATE TABLE Adresse (
                         id INT PRIMARY KEY,
                         code_postal VARCHAR(255),
                         ville VARCHAR(255)
);
CREATE TABLE Vacataire (
                           id INT PRIMARY KEY,
                           nom VARCHAR(255),
                           prenom VARCHAR(255),
                           adresse_id INT,
                           FOREIGN KEY (adresse_id) REFERENCES Adresse(id)
);


INSERT INTO Adresse (id, code_postal, ville) VALUES (1, '75001', 'Paris');
INSERT INTO Adresse (id, code_postal, ville) VALUES (2, '13000', 'Marseille');
INSERT INTO Adresse (id, code_postal, ville) VALUES (3, '69000', 'Lyon');

INSERT INTO Vacataire (id, nom, prenom, adresse_id) VALUES (1, 'Dupont', 'Jean', 1);
INSERT INTO Vacataire (id, nom, prenom, adresse_id) VALUES (2, 'Martin', 'Marie', 2);
INSERT INTO Vacataire (id, nom, prenom, adresse_id) VALUES (3, 'Bernard', 'Luc', 3);
