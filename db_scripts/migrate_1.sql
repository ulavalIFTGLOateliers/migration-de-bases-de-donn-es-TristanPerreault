ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);
UPDATE musician m SET m.role = "vocals", m.bandName = "Crazy Duo" WHERE m.musicianName = "Alina";
UPDATE musician m SET m.role = "guitar", m.bandName = "Mysterio" WHERE m.musicianName = "Mysterio";
UPDATE musician m SET m.role = "percussion", m.bandName = "Crazy Duo" WHERE m.musicianName = "Rainbow";
UPDATE musician m SET m.role = "piano", m.bandName = "Luna" WHERE m.musicianName = "Luna";
CREATE TABLE IF NOT EXISTS band (
    bandName varchar(50),
    creation YEAR,
    genre varchar(50),
    PRIMARY KEY(bandName)
);
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"),("Mysterio",2019,"pop");

