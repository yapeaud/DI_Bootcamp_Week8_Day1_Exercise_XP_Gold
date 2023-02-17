--    Creation de la base de donnée
   CREATE DATABASE bootcamp;

--    Creation de la table étudiants
 CREATE TABLE etudiants ( id SERIAL PRIMARY KEY,
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL,
    birth_date DATE NOT NULL 
 );

  -- Classer les quatre premiers étudiants par ordre alphabétique de nom de famille.
      SELECT * FROM etudiants ORDER BY last_name LIMIT 4;

  -- Les coordonnées du plus jeune étudiant.
      SELECT * FROM etudiants WHERE birth_date > '2005-01-01' LIMIT 1;

   -- Allez chercher trois élèves en sautant les deux premiers élèves.
      SELECT * FROM etudiants LIMIT 3 OFFSET 2;