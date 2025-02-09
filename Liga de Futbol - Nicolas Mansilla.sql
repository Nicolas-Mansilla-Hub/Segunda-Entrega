CREATE DATABASE ligax;
USE ligax;

CREATE TABLE entrenador(
id_entrenador INT PRIMARY KEY,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
nacionalidad VARCHAR (30),
edad INT,
experiencia VARCHAR (150)
);

CREATE TABLE dirige (
    ID INT PRIMARY KEY,
    id_entrenador INT NOT NULL,
    id_equipo INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador),
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo),
    CHECK (fecha_fin IS NULL OR fecha_fin > fecha_inicio)
);

CREATE TABLE equipo(
id_equipo INT PRIMARY KEY,
nombre VARCHAR (30) NOT NULL,
pais VARCHAR (30),
cantidad_de_jugadores INT,
presupuesto FLOAT
);

CREATE TABLE juega (
    ID INT PRIMARY KEY,
    id_futbolista INT NOT NULL,
    id_equipo INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    FOREIGN KEY (id_futbolista) REFERENCES futbolista(id_futbolista),
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo),
    CHECK (fecha_fin IS NULL OR fecha_fin > fecha_inicio)
);


CREATE TABLE futbolista(
id_futbolista INT PRIMARY KEY,
nombre VARCHAR (30) NOT NULL,
apellido VARCHAR (30) NOT NULL,
nacionalidad VARCHAR (30),
edad INT,
altura FLOAT,
peso FLOAT,
posicion VARCHAR (30),
salario FLOAT
);

INSERT INTO entrenador VALUES
(1, 'Pep', 'Guardiola', 'España', 52, 'Ganador en múltiples ligas'),
(2, 'Jürgen', 'Klopp', 'Alemania', 55, 'Estilo intenso'),
(3, 'Carlo', 'Ancelotti', 'Italia', 64, 'Experiencia en Champions League con diversos clubes'),
(4, 'José', 'Mourinho', 'Portugal', 60, 'Estratega defensivo con varios títulos internacionales'),
(5, 'Xavi', 'Hernández', 'España', 43, 'Cambio el juego de posesión, de la escuela de guardiola'),
(6, 'Julian', 'Nagelsmann', 'Alemania', 36, 'Innovador y joven'),
(7, 'Marcelo', 'Gallardo', 'Argentina', 47, 'Juego ofensivo y posesivo'),
(8, 'Thomas', 'Tuchel', 'Alemania', 50, 'Tácticas organizadas y adaptabilidad'),
(9, 'Stefano', 'Pioli', 'Italia', 53, 'Juego disciplinado y una defensa ordenada'),
(10, 'Antonio', 'Conte', 'Italia', 52, 'Disciplina táctica, estilo Calcio'),
(11, 'Mikel', 'Arteta', 'España', 41, 'Implementa un estilo ofensivo'),
(12, 'Diego', 'Simeone', 'Argentina', 56, 'Intensidad y pasión, fiel estilo argentino'),
(13, 'Nestor', 'Gorosito', 'Argentino', 56, 'Conservador'),
(14, 'Erik', 'ten Hag', 'Países Bajos', 48, 'Meticuloso y estratégico'),
(15, 'Gustavo', 'Alfaro', 'ARgentina', 66, 'Combina pasión y disciplina defensiva');

INSERT INTO equipo VALUES
(1, 'Manchester City', 'Inglaterra', 25, 650.0),
(2, 'Liverpool', 'Inglaterra', 30, 600.0),
(3, 'Real Madrid', 'España', 26, 700.0),
(4, 'FC Barcelona', 'España', 27, 680.0),
(5, 'Bayern Munich', 'Alemania', 22, 650.0),
(6, 'Borussia Dortmund', 'Alemania', 25, 500.0),
(7, 'Paris Saint-Germain', 'Francia', 25, 750.0),
(8, 'AS Roma', 'Italia', 27, 520.0),
(9, 'AC Milan', 'Italia', 26, 500.0),
(10, 'Inter Milan', 'Italia', 25, 530.0),
(11, 'Arsenal', 'Inglaterra', 28, 520.0),
(12, 'Atletico Madrid', 'España', 24, 540.0),
(13, 'Benfica', 'Portugal', 25, 400.0),
(14, 'Ajax', 'Países Bajos', 26, 450.0),
(15, 'FC Porto', 'Portugal', 28, 420.0);

INSERT INTO futbolista VALUES
(1, 'Lionel', 'Messi', 'Argentina', 36, 1.74, 77.0, 'Delantero', 150.0),
(2, 'Mohamed', 'Salah', 'Egipto', 31, 1.75, 71.0, 'Delantero', 140.0),
(3, 'Vinícius', 'Júnior', 'Brasil', 23, 1.76, 73.0, 'Delantero', 130.0),
(4, 'Robert', 'Lewandowski', 'Polonia', 34, 1.85, 80.0, 'Delantero', 120.0),
(5, 'Harry', 'Kane', 'Inglaterra', 29, 1.88, 86.0, 'Delantero', 150.0),
(6, 'Marco', 'Reus', 'Alemania', 32, 1.80, 76.0, 'Mediocampista', 100.0),
(7, 'Kylian', 'Mbappé', 'Francia', 24, 1.78, 73.0, 'Delantero', 160.0),
(8, 'Federico', 'Chiesa', 'Italia', 26, 1.75, 70.0, 'Delantero/Mediocampista', 110.0),
(9, 'Julian', 'Alvarez', 'ARgentina', 24, 1.80, 77.0, 'Delantero', 100.0),
(10, 'Lautaro', 'Martínez', 'Argentina', 26, 1.74, 75.0, 'Delantero', 105.0),
(11, 'Cristiano', 'Ronaldo', 'Portugal', 40, 1.85, 70.0, 'Delantero', 170.0),
(12, 'João', 'Félix', 'Portugal', 22, 1.83, 75.0, 'Delantero', 95.0),
(13, 'Darwin', 'Núñez', 'Uruguay', 24, 1.84, 78.0, 'Delantero', 100.0),
(14, 'Virgil', 'Van Dij', 'Países Bajos', 29, 1.90, 82.0, 'Defensor', 85.0),
(15, 'Luka', 'Modric', 'Croacia', 38, 1.78, 80.0, 'Mediocampista', 90.0);

INSERT INTO dirige VALUES
(1, 1, 1, '2009-07-01', NULL),      
(2, 2, 2, '2017-10-08', NULL),      
(3, 3, 3, '2021-06-01', NULL),      
(4, 4, 8, '2018-07-01', NULL),      
(5, 5, 4, '2021-11-01', NULL),      
(6, 6, 5, '2022-07-01', NULL),      
(7, 7, 6, '2022-01-15', NULL),      
(8, 8, 7, '2022-08-01', NULL),      
(9, 9, 9, '2019-10-15', NULL),      
(10, 10, 10, '2021-09-01', NULL),    
(11, 11, 11, '2019-12-01', NULL),    
(12, 12, 12, '2011-12-01', NULL),    
(13, 13, 13, '2020-06-01', NULL),    
(14, 14, 14, '2022-05-01', NULL),    
(15, 15, 15, '2017-08-01', NULL);    

INSERT INTO juega VALUES
(1, 1, 1, '2022-07-01', NULL),      
(2, 2, 2, '2020-07-01', NULL),      
(3, 3, 3, '2018-08-01', NULL),      
(4, 4, 4, '2022-08-01', NULL),      
(5, 5, 5, '2023-07-01', NULL),      
(6, 6, 6, '2019-07-01', NULL),      
(7, 7, 7, '2017-07-01', NULL),      
(8, 8, 8, '2021-08-01', NULL),      
(9, 9, 9, '2019-08-01', NULL),      
(10, 10, 10, '2020-07-01', NULL),    
(11, 11, 11, '2021-07-01', NULL),    
(12, 12, 12, '2020-08-01', NULL),    
(13, 13, 13, '2022-01-01', NULL),    
(14, 14, 14, '2021-09-01', NULL),    
(15, 15, 15, '2021-06-01', NULL);    

CREATE VIEW vista_entrenador_equipo AS
SELECT 
    d.ID AS id_asignacion,
    e.nombre AS entrenador_nombre,
    e.apellido AS entrenador_apellido,
    eq.nombre AS equipo_nombre,
    d.fecha_inicio,
    d.fecha_fin
FROM dirige d
JOIN entrenador e ON d.id_entrenador = e.id_entrenador
JOIN equipo eq ON d.id_equipo = eq.id_equipo
WHERE d.fecha_fin IS NULL;

SELECT * FROM vista_entrenador_equipo;

CREATE VIEW vista_futbolista_equipo AS
SELECT 
    j.ID AS id_juega,
    f.nombre AS futbolista_nombre,
    f.apellido AS futbolista_apellido,
    eq.nombre AS equipo_nombre,
    j.fecha_inicio,
    j.fecha_fin
FROM juega j
JOIN futbolista f ON j.id_futbolista = f.id_futbolista
JOIN equipo eq ON j.id_equipo = eq.id_equipo
WHERE j.fecha_fin IS NULL;

SELECT * FROM vista_futbolista_equipo;

DELIMITER $$
CREATE FUNCTION fn_promedio_salario_equipo(p_id_equipo INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE avg_salario FLOAT;
    SELECT AVG(f.salario) INTO avg_salario
    FROM juega j
    JOIN futbolista f ON j.id_futbolista = f.id_futbolista
    WHERE j.id_equipo = p_id_equipo AND j.fecha_fin IS NULL;
    RETURN avg_salario;
END$$
DELIMITER ;

SELECT fn_promedio_salario_equipo(1) AS PromedioSalarioEquipo1;

DELIMITER $$
CREATE FUNCTION fn_dias_contrato(p_id_asignacion INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE dias INT;
    DECLARE inicio DATE;
    DECLARE fin DATE;
    
    SELECT fecha_inicio, fecha_fin INTO inicio, fin
    FROM dirige
    WHERE ID = p_id_asignacion;
    
    IF fin IS NULL THEN
        SET fin = CURDATE();
    END IF;
    
    SET dias = DATEDIFF(fin, inicio);
    RETURN dias;
END$$
DELIMITER ;

SELECT fn_dias_contrato(1) AS DiasContratoAsignacion1;

DELIMITER $$
CREATE PROCEDURE sp_asignar_futbolista_a_equipo(
    IN p_id_futbolista INT,
    IN p_id_equipo INT,
    IN p_fecha_inicio DATE
)
BEGIN
    INSERT INTO juega (ID, id_futbolista, id_equipo, fecha_inicio, fecha_fin)
    VALUES (
        (SELECT COALESCE(MAX(ID), 0) + 1 FROM juega),
        p_id_futbolista,
        p_id_equipo,
        p_fecha_inicio,
        NULL
    );
END$$
DELIMITER ;

CALL sp_asignar_futbolista_a_equipo(1, 2, CURDATE());

DELIMITER $$
CREATE PROCEDURE sp_actualizar_salario_futbolista(
    IN p_id_futbolista INT,
    IN p_nuevo_salario FLOAT
)
BEGIN
    UPDATE futbolista
    SET salario = p_nuevo_salario
    WHERE id_futbolista = p_id_futbolista;
END$$
DELIMITER ;

CALL sp_actualizar_salario_futbolista(1, 180.0);

DELIMITER $$
CREATE TRIGGER trg_after_insert_juega
AFTER INSERT ON juega
FOR EACH ROW
BEGIN
    IF NEW.fecha_fin IS NULL THEN
        UPDATE equipo
        SET cantidad_de_jugadores = cantidad_de_jugadores + 1
        WHERE id_equipo = NEW.id_equipo;
    END IF;
END$$
DELIMITER ;

INSERT INTO juega (ID, id_futbolista, id_equipo, fecha_inicio, fecha_fin)
VALUES ((SELECT COALESCE(MAX(ID), 0) + 1 FROM juega), 2, 3, CURDATE(), NULL);

DELIMITER $$
CREATE TRIGGER trg_after_update_juega
AFTER UPDATE ON juega
FOR EACH ROW
BEGIN
    IF OLD.fecha_fin IS NULL AND NEW.fecha_fin IS NOT NULL THEN
        UPDATE equipo
        SET cantidad_de_jugadores = cantidad_de_jugadores - 1
        WHERE id_equipo = NEW.id_equipo;
    END IF;
END$$
DELIMITER ;

UPDATE juega 
SET fecha_fin = CURDATE() 
WHERE ID = (SELECT MIN(ID) FROM juega WHERE fecha_fin IS NULL);