# Partie 5

## exercice 1

-- Dans la table languages insérez les données suivantes :
-- * Javascript version 7
-- * Javascript version 8

USE webDevelopment;
INSERT INTO `languages`(`language`, `version`)
VALUES ('Javascript', 7),
('Javascript', 8);

## exercice 2

-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript
SELECT `version` FROM `languages` WHERE (language = 'PHP') OR (language = 'Javascript');
SELECT `version` FROM `languages` WHERE `language` IN ('PHP', 'Javascript');

## exercice 3

-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.

SELECT * FROM `languages` WHERE (language <> 'PHP');
SELECT * FROM `languages` WHERE (language != 'PHP');


## exercice 4

-- Dans la table languages, afficher toutes les données par ordre alphabétique.

SELECT * FROM `languages` ORDER BY language ASC;

## exercice 5

-- Supprimer la table ide de webDevelopment et charger le fichier ajout.sql

DROP TABLE ide;
-- Se placer à l'emplacement du fichier et réouvrir un sql 
-- USE la bonne data base
SOURCE ajout.sql;
ou charger le fichier via avec phpMyAdmin.

## exercice 6

-- Dans la table ide, afficher toutes les lignes ayant une date
-- comprise entre le premier janvier 2010 et le 31 decembre 2011.

SELECT * FROM `ide` WHERE date BETWEEN '2010-01-01' AND '2011-12-31';