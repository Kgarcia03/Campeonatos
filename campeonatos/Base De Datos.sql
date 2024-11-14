CREATE DATABASE Futbol;

CREATE TABLE Fase (
	Id SERIAL PRIMARY KEY,
	Fase VARCHAR(250)
);

CREATE TABLE Pais (
	Id SERIAL PRIMARY KEY,
	Pais VARCHAR(250),
	Entidad VARCHAR(250),
	Bandera VARCHAR(250),
	LogoEntidad VARCHAR(250)
);

CREATE TABLE Ciudad (
	Id SERIAL PRIMARY KEY,
	Ciudad VARCHAR(250),
	IdPais INTEGER,
	CONSTRAINT IdPais FOREIGN KEY (IdPais) REFERENCES Pais(Id)
);

CREATE TABLE Estadio (
	Id SERIAL PRIMARY KEY,
	Estadio VARCHAR(250),
	Capacidad INTEGER,
	IdCiudad INTEGER,
	Foto  VARCHAR(250),
	CONSTRAINT IdCiudad FOREIGN KEY (IdCiudad) REFERENCES Ciudad(Id)
);

CREATE TABLE Campeonato (
	Id SERIAL PRIMARY KEY,
	Campeonato VARCHAR(250),
	IdPais INTEGER,
	Ano INTEGER,
	CONSTRAINT IdPais FOREIGN KEY (IdPais) REFERENCES Pais(Id)	
);

CREATE TABLE Grupo (
	Id SERIAL PRIMARY KEY,
	Grupo VARCHAR(250),
	IdCampeonato INTEGER,
	CONSTRAINT IdGrupo FOREIGN KEY (IdCampeonato) REFERENCES Campeonato(Id)
);

CREATE TABLE GrupoPais (
	IdGrupo INTEGER,
	IdPais INTEGER,
	CONSTRAINT IdGrupo FOREIGN KEY (IdGrupo) REFERENCES Grupo(Id),
	CONSTRAINT IdPais FOREIGN KEY (IdPais) REFERENCES Pais(Id)
);

CREATE TABLE Encuentro (
	Id SERIAL PRIMARY KEY,
	IdPais1 INTEGER,
	IdPais2 INTEGER,
	IdEstadio INTEGER,
	IdFase INTEGER,
	IdCampeonato INTEGER,
	Fecha Date,
	Goles1 INTEGER,
	Goles2 INTEGER,
	CONSTRAINT IdPais1 FOREIGN KEY (IdPais1) REFERENCES Pais(Id),
	CONSTRAINT IdPais2 FOREIGN KEY (IdPais2) REFERENCES Pais(Id),
	CONSTRAINT IdEstadio FOREIGN KEY (IdEstadio) REFERENCES Estadio(Id),
	CONSTRAINT IdFase FOREIGN KEY (IdFase) REFERENCES Fase(Id),
	CONSTRAINT IdCampeonato FOREIGN KEY (IdCampeonato) REFERENCES Campeonato(Id)
);

-- Insertar Fases
INSERT INTO Fase (Fase) VALUES ('Fase de Grupos');
INSERT INTO Fase (Fase) VALUES ('Cuartos de Final');
INSERT INTO Fase (Fase) VALUES ('Semifinal');
INSERT INTO Fase (Fase) VALUES ('Final');

-- Insertar Países
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Brasil', 'CBF', 'bandera_brasil.png', 'logo_cbf.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Argentina', 'AFA', 'bandera_argentina.png', 'logo_afa.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('España', 'RFEF', 'bandera_espana.png', 'logo_rfef.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Francia', 'FFF', 'bandera_francia.png', 'logo_fff.png');

-- Insertar Ciudades
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Río de Janeiro', 1);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Buenos Aires', 2);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Madrid', 3);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('París', 4);

-- Insertar Estadios
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Maracanã', 75000, 1, 'foto_maracana.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Monumental', 70000, 2, 'foto_monumental.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Santiago Bernabéu', 81000, 3, 'foto_bernabeu.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Stade de France', 80000, 4, 'foto_stade_de_france.png');

-- Insertar Campeonatos
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Copa América', 1, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Copa América', 2, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Eurocopa', 3, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Eurocopa', 4, 2024);

-- Insertar Grupos
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo A', 1);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo B', 2);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo C', 3);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo D', 4);

-- Insertar Países en Grupos
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (1, 1); -- Brasil en Grupo A
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (1, 2); -- Argentina en Grupo A
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (3, 3); -- España en Grupo C
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (4, 4); -- Francia en Grupo D

-- Insertar Fases
INSERT INTO Fase (Fase) VALUES ('Fase de Grupos');
INSERT INTO Fase (Fase) VALUES ('Cuartos de Final');
INSERT INTO Fase (Fase) VALUES ('Semifinal');
INSERT INTO Fase (Fase) VALUES ('Final');

-- Insertar Países
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Brasil', 'CBF', 'bandera_brasil.png', 'logo_cbf.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Argentina', 'AFA', 'bandera_argentina.png', 'logo_afa.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('España', 'RFEF', 'bandera_espana.png', 'logo_rfef.png');
INSERT INTO Pais (Pais, Entidad, Bandera, LogoEntidad) VALUES ('Francia', 'FFF', 'bandera_francia.png', 'logo_fff.png');

-- Insertar Ciudades
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Río de Janeiro', 1);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Buenos Aires', 2);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('Madrid', 3);
INSERT INTO Ciudad (Ciudad, IdPais) VALUES ('París', 4);

-- Insertar Estadios
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Maracanã', 75000, 1, 'foto_maracana.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Monumental', 70000, 2, 'foto_monumental.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Santiago Bernabéu', 81000, 3, 'foto_bernabeu.png');
INSERT INTO Estadio (Estadio, Capacidad, IdCiudad, Foto) VALUES ('Stade de France', 80000, 4, 'foto_stade_de_france.png');

-- Insertar Campeonatos
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Copa América', 1, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Copa América', 2, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Eurocopa', 3, 2024);
INSERT INTO Campeonato (Campeonato, IdPais, Ano) VALUES ('Eurocopa', 4, 2024);

-- Insertar Grupos
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo A', 1);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo B', 2);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo C', 3);
INSERT INTO Grupo (Grupo, IdCampeonato) VALUES ('Grupo D', 4);

-- Insertar Países en Grupos
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (1, 1); -- Brasil en Grupo A
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (1, 2); -- Argentina en Grupo A
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (3, 3); -- España en Grupo C
INSERT INTO GrupoPais (IdGrupo, IdPais) VALUES (4, 4); -- Francia en Grupo D

-- Insertar Encuentros
INSERT INTO Encuentro (IdPais1, IdPais2, IdEstadio, IdFase, IdCampeonato, Fecha, Goles1, Goles2) 
VALUES (1, 2, 1, 1, 1, '2024-06-10', 3, 1); -- Brasil vs Argentina en fase de grupos
INSERT INTO Encuentro (IdPais1, IdPais2, IdEstadio, IdFase, IdCampeonato, Fecha, Goles1, Goles2) 
VALUES (3, 4, 3, 1, 3, '2024-06-11', 2, 2); -- España vs Francia en fase de grupos
INSERT INTO Encuentro (IdPais1, IdPais2, IdEstadio, IdFase, IdCampeonato, Fecha, Goles1, Goles2) 
VALUES (1, 4, 4, 2, 1, '2024-06-20', 1, 0); -- Brasil vs Francia en cuartos de final
INSERT INTO Encuentro (IdPais1, IdPais2, IdEstadio, IdFase, IdCampeonato, Fecha, Goles1, Goles2) 
VALUES (2, 3, 2, 2, 2, '2024-06-21', 0, 1); -- Argentina vs España en cuartos de final

CREATE OR REPLACE FUNCTION ftablaposicionesgrupo(id_campeonato INT)
RETURNS TABLE (
    id BIGINT,
    pais VARCHAR,
    pJ INT,
    pG INT,
    pE INT,
    pP INT,
    gF INT,
    gC INT,
    puntos INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        CAST(p.id AS BIGINT) AS id,
        p.pais AS pais,
        CAST(COUNT(e.id) AS INTEGER) AS pJ,
        CAST(SUM(CASE WHEN (e.goles1 > e.goles2 AND e.idpais1 = p.id) OR (e.goles2 > e.goles1 AND e.idpais2 = p.id) THEN 1 ELSE 0 END) AS INTEGER) AS pG,
        CAST(SUM(CASE WHEN e.goles1 = e.goles2 THEN 1 ELSE 0 END) AS INTEGER) AS pE,
        CAST(SUM(CASE WHEN (e.goles1 < e.goles2 AND e.idpais1 = p.id) OR (e.goles2 < e.goles1 AND e.idpais2 = p.id) THEN 1 ELSE 0 END) AS INTEGER) AS pP,
        CAST(SUM(CASE WHEN e.idpais1 = p.id THEN e.goles1 WHEN e.idpais2 = p.id THEN e.goles2 ELSE 0 END) AS INTEGER) AS gF,
        CAST(SUM(CASE WHEN e.idpais1 = p.id THEN e.goles2 WHEN e.idpais2 = p.id THEN e.goles1 ELSE 0 END) AS INTEGER) AS gC,
        CAST((SUM(CASE WHEN (e.goles1 > e.goles2 AND e.idpais1 = p.id) OR (e.goles2 > e.goles1 AND e.idpais2 = p.id) THEN 3 ELSE 0 END) +
              SUM(CASE WHEN e.goles1 = e.goles2 THEN 1 ELSE 0 END)) AS INTEGER) AS puntos
    FROM 
        Pais p
    LEFT JOIN 
        Encuentro e ON (p.id = e.idpais1 OR p.id = e.idpais2) AND e.idcampeonato = id_campeonato
    GROUP BY 
        p.id, p.pais
    ORDER BY 
        puntos DESC, gF - gC DESC, gF DESC;
END;
$$ LANGUAGE plpgsql;
