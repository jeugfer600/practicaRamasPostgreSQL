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