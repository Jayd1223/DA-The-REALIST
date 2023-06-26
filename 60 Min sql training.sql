CREATE DATABASE record_company;
USe record_company;
Create Table bands (
id int not null auto_increment,
name varchar(255) NOT NULL, 
Primary KEY (id)
);
CReate Table albums (
id INT NOt NULL auto_increment,
name VARCHAR(255) NOT NULL,
release_year INT,
band_id INT NOT NULL, 
Primary Key (id),
FOREIGN KEY (band_id) REFERENCES bands(id)
);

INSERT INTO bands (name)
Values ('Iron Maiden');

INSERT INTO bands (name)
Values ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

select * From bands;

Select * From bands LIMIT 2; 

Select name FROM Bands;

Select id AS 'ID', name as 'Band Name' 
FROM bands; 

SELECT * From bands ORDER BY name ASC; 

INSERT INTO albums (name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1),
		('Power Slave' , 1984, 1),
        ('Nightmare', 2018,2),
        ('Nightmare', 2010, 3),
        ('Test Album' , NULL, 3);
        
SELECT * FROM ALBUMS;

SELECT DISINTCT name FROM albums; 

UPDATE albums
SET release_year = 1982
WHERE id = 1; 

SELECT * FROM albums
WHERE release_year < 2000;

SELECT * FROM albums 
WHERE name LIKE '%er%' OR band_id =	2;

SELECT * FROM albums
WHERE release_year = 1984 AND band_id = 1;

SELECT * FROM albums
WHERE release_year BETWEEN 200 AND 2018;

SELECT * FROM ALBUMS
WHERE release_year IS NULL;

DELETE FROM ALBUMS WHERE id= 5;

SELECT * FROM ALBUMS


SELECT * FROM BANDS 
INNER JOIN albums ON bands.id = albums.bands_id = albums.band_id;

SELECT * FROM albums
LEFT JOIN bands ON bands.id = albums.bands_id;


SELECT SUM(release_year) FROM albums;


SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id; 


SELECT b.name AS band_name, COUNT(a.id) AS num_albums 
FROM bands AS b 
LEFT JOIN albums AS a ON b.id+ a.band_id
where b.name - 'deuce'
GROUP BY b.id
HAVING num_albums = 1;


















