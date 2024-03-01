CREATE TABLE juego(
                      idJuego SERIAL PRIMARY KEY,
                      titulo varchar(35),
                      descripcion varchar(255),
                      plataforma varchar(70),
                      favorito boolean,
                      jugarMasTarde boolean
);

CREATE TABLE partida(
                        idPartida SERIAL PRIMARY KEY,
                        review varchar(255),
                        puntuacion int,
                        tiempoJuego float,
                        id_juego int,
                        Foreign Key (id_juego)
                            references juego (idJuego)
);

INSERT INTO juego (titulo, descripcion, plataforma, favorito, JugarMasTarde) VALUES ('EA Sport 24', 'Juego de simulacion de futbol', 'PS5', true, true);

INSERT INTO juego (titulo, descripcion, plataforma, favorito, JugarMasTarde) VALUES ('PES24', 'Juego de simulacion de futbol', 'PS4' , false, false);

INSERT INTO juego (titulo, descripcion, plataforma, favorito, JugarMasTarde) VALUES ('CALL OF DUTY', 'Juego guerra', 'PS5', false, true);

INSERT INTO juego (titulo, descripcion, plataforma, favorito, JugarMasTarde) VALUES ('GTA5', ' Accion', 'PC' , true, false);

INSERT INTO juego (titulo, descripcion, plataforma, favorito, JugarMasTarde) VALUES ('F1 2024', 'Carrera', 'PC' , true, false);


INSERT INTO partida (review, puntuacion, tiempoJuego, id_juego) VALUES ('review1', 150, 50, 1);

INSERT INTO partida (review, puntuacion, tiempoJuego, id_juego) VALUES ('review2', 25 ,  75, 2);

INSERT INTO partida (review, puntuacion, tiempoJuego, id_juego) VALUES ('review3', 800, 125, 3);

INSERT INTO partida (review, puntuacion, tiempoJuego, id_juego) VALUES ('review4', 500, 200, 4);

INSERT INTO partida (review, puntuacion, tiempoJuego, id_juego) VALUES ('review5', 410, 100, 5);