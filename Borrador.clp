;;Para sacar la información de los juegos http://www.3djuegos.com/ está que te cagas

(defclass JUEGO "Definición de la clase JUEGO"
    (is-a USER)
    (role concrete)
    (single-slot nombre
        (type STRING)
        (create-accessor read-write)
        )
    (single-slot genero 
        (type STRING)
        (allowed-values "Accion" "Aventuras" "Rol" "Casual") ;;Continuar poniendo más generos si se desea
        )
    (single-slot subgenero
        (type STRING)
        (allowed-values "FPS" "Lucha" "3PS" "Plataformas" "Fantasia") ;;Continuar poniendo todos los subgeneros juntos
        )
    (single-slot punto_vista
        (type INTEGER)
        (allowed-values 1 2 3 4) ;;1 = primera persona 2 = tercera persona 3 = vista desde el cielo (Poner este para tetris, pacman y demas) 4 = vista isometrica
        (create-accessor read-write)
        )
    (single-slot multijugador
        (type STRING)
        (allowed-values "Online" "Local")
        (create-accessor read-write)
        )
    (single-slot precio
        (type FLOAT)
        (create-accessor read-write)
        )
    (single-slot edad
        (type INTEGER)
        (allowed-values 0 3 12 16 18) ;;0 = Todos los publicos
        (create-accessor read-write)
        )
    (single-slot mundo_abierto
        (type INTEGER)
        (allowed-values 0 1)
        (create-accessor read-write)
        )
    (single-slot generacion
        (type INTEGER)
        (allowed-values 1970 1960 1980 1990 2000)
        (create-accessor read-write)
        )
    (single-slot company
        (type STRING)
        (allowed-values "SEGA" "Capcom" "Electronic Arts" "Rockstar Games" "Nintendo" "Ubisoft" "Sony" "Konami" "Activision" "Blizzard" "Naughty Dog" "Square Enix" "Valve" "Bethesda" "2K" "Monolith")
        (create-accessor read-write)
        )
    (multislot plataforma
        (type STRING)
        (allowed-values "PC" "XBOX" "XBOX 360" "XBOX ONE" "PSX" "PS2" "PS3" "PS4" "PSP" "PSVITA" "GAMEBOY" "GAMEBOY COLOR" "GAMEBOY ADVANCE" "NES" "SNES" "N64" "NDS" "N3DS" "WII" "WII-U")
        (create-accessor read-write)
        )
    (single-slot duracion
        (type INTEGER)
        (create-accessor read-write)
        )
    (single-slot descripcion
        (type STRING)
        (create-accessor read-write)
        )
    (single-slot pagina
        (type STRING)
        (create-accessor read-write)
        )
    )

(definstances eleccion
    ([juego1] of JUEGO
        (nombre "Counter Strike: Global Offensive")
        (genero "Accion")
        (subgenero "FPS")
        (punto_vista 1)
        (multijugador "Online")
        (precio 20.00)
        (edad 18)
        (mundo_abierto 0)
        (generacion 2014)
        (company "Steam")
        (plataforma "PC")
        (duracion 15)
        (descripcion "La acción de Counter-Strike se desarrolla en rondas de una duración elegida por el que las crea, en la cual un equipo de terroristas (o TT's) se enfrenta a un equipo de antiterrorista (o CT's). El equipo victorioso es el que cumpla todos sus objetivos de victoria,")
        (pagina "http://www.counter-strike.net/")
        )
    ([juego2] of JUEGO
        (nombre "World Of Warcraft")
        (genero "Rol")
        (subgenero "MMORPEG")
        (punto_vista 2)
        (multijugador "Online")
        (precio 39.95)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2000)
        (company "Blizzard Entertainment")
        (plataforma "PC")
        (duracion 25)
        (descripcion "basado en el mundo de ficción y la historia de Warcraft donde se adopta el papel de un personaje virtual que interactúa con otros personajes y desarrolla situaciones en un ambiente fantástico como en un juego de rol.")
        (pagina "http://www.http://eu.battle.net/wow/es/")
        )
    ([juego3] of JUEGO
        (nombre "Tetris")
        (genero "Casual")
        (subgenero "Puzzle")
        (punto_vista 3)
        (multijugador "Local")
        (precio 00.00)
        (edad 13)
        (mundo_abierto 0)
        (generacion 2000)
        (company "Monolith")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion 25)
        (descripcion "Juego clasico de puzzle en el que el objetivo es evadir el fin de la partida consiguiendo la mayor puntuación posible")
        (pagina "http://tetris.com")
        )
    ([juego4] of JUEGO
        (nombre "My Best Friends - Cats And Dogs")
        (genero "Simuladores")
        (subgenero "Animales")
        (punto_vista 2)
        ;;Si algo no aparece en la definición del juego es que no lo tiene ejemplo aqui, este no tiene multijugador
        (precio 39.00)
        (edad 13)
        (mundo_abierto 0)
        (generacion 2010)
        (company "Nintendo")
        (plataforma "PC" "DS")
        (duracion 105)
        (descripcion "In My Best Friends: Dogs & Cats, you have the unique opportunity to play with and cuddle Dalmatian, Husky, German Shepherd and Retriever puppies and Siamese,")
        (pagina "http://www.MyBestFriends.com")
        )
    ([juego5] of JUEGO
        (nombre "The Evil Within")
        (genero "Aventuras")
        (subgenero "Terror")
        (punto_vista 2)
        (multijugador "Local")
        (precio 59.95)
        (edad 18)
        (mundo_abierto 0)
        (generacion 2014)
        (company "")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion 60)
        (descripcion "Una gran obra con supervivemcia, accion y exploracion")
        (pagina "http://theevilwithin.com/")
        )
    ([juego6] of JUEGO
        (nombre "Fifa 2014")
        (genero "Casual")
        (subgenero "Deporte")
        (punto_vista 2)
        (multijugador "Online" "Local")
        (precio 50.95)
        (edad 18)
        (mundo_abierto 0)
        (generacion 2014)
        (company "Electronic Arts Inc")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion 25)
        (descripcion "Demuestra tus habilidades en la dirección y lleva a tu equipo a ganarlo todo. tanto en modo partido como en modo entrenador")
        (pagina "http://www.easports.com/es/fifa")
        )
    ([juego7] of JUEGO
        (nombre "League Of Legends")
        (genero "Rol")
        (subgenero "Moba")
        (punto_vista 2)
        (mutijugador "Online")
        (precio 00.00)
        (edad 13)
        (mundo_abierto 0)
        (generacion 2010)
        (company "Riot Games")
        (plataforma "PC")
        (duracion 55)
        (descripcion "Es un juego en el que juegas en equipos de hasta 5 y tienes que destruir torretas, para llegar al Nexus y destruirlo y ganar la partida,")
        (pagina "http://euw.leagueoflegends.com/es")
        )
    ([juego8] of JUEGO
        (nombre "Heavy Rain")
        (genero "Aventuras")
        (subgenero "Aventura grafica")
        (punto_vista 2)
        ;;Si algo no aparece en la definición del juego es que no lo tiene ejemplo aqui, este no tiene multijugador
        (precio 19.95)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2010)
        (company "Quantic Dream")
        (plataforma "PS3")
        (duracion 155)
        (descripcion "El jugador maneja a los diferentes personajes pudiendo decidir cómo avanza la trama, decidir los giros argumentales de la misma e incluso el destino de sus protagonistas.")
        (pagina "http://www.ign.com/games/heavy-rain/ps3-811232")
        )
    ([juego9] of JUEGO
        (nombre "Tekken 6")
        (genero "Accion")
        (subgenero "Peleas")
        (punto_vista 3)
        (multijugador "Local")
        (precio 49.95)
        (edad 18)
        (mundo_abierto 0)
        (generacion 200)
        (company "EA")
        (plataforma "XBOX 360" "PS3")
        (duracion 10)
        (descripcion "Tras ganar el The King of Iron Fist Tournament 5, Jin es ahora el nuevo propietario de la Mishima Zaibatsu y aprovechándose de una crisis mundial, declara a la Mishima Zaibatsu nación independiente y comienza una guerra de conquista por todo el globo. ")
        (pagina "http://www.tekken.com")
        )
    ([juego10] of JUEGO
        (nombre "Super Mario Bros")
        (genero "Accion")
        (subgenero "Plataforma")
        (punto_vista 2)
        (multijugador "Local")
        (precio 00.00)
        (edad 12)
        (mundo_abierto 0)
        (generacion 1985)
        (company " Shigeru Miyamoto")
        (plataforma "PC" "NES")
        (duracion 225)
        (descripcion "El juego describe las aventuras de los hermanos Mario y Luigi, personajes que ya protagonizaron el arcade Mario Bros")
        (pagina "http://www.mario.com")
        )
    ([juego11] of JUEGO
        (nombre "La tierra media: Sombras de Mordor")
        (genero "Aventuras")
        (subgenero "Fantasia")
        (punto_vista 2)
        ;;Si algo no aparece en la definición del juego es que no lo tiene ejemplo aqui, este no tiene multijugador
        (precio 59.95)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2000)
        (company "Monolith")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion 25)
        (descripcion "Aventura ambientada en el universo de fantasía de El Señor de los Anillos que nos pone en la piel de un misterioso aventurero conocido como Talion, decidido a alcanzar las sombrías tierras de Mordor.")
        (pagina "http://www.3djuegos.com/17926/la-tierra-media-sombras-de-mordor/")
        )
    )

;;(defmodule MAIN (export ?ALL))

;;Definicion de funciones para captar opciones del usuario
;;Funcion para seleccionar entre varias opciones
(deffunction ask-question (?question $?allowed-values)
    (printout t ?question)
    (bind ?answer (read))
    (while (not (member ?answer ?allowed-values)) do
        (printout t ?question)
        (bind ?answer (read))
        )
    ?answer
    )
;;Funcion para seleccionar si o no
(deffunction si-o-no-p (?question)
    (bind ?response (ask-question ?question si no s n))
    (if (or (eq ?response si) (eq ?response s))
        then TRUE 
        else FALSE)
    )
;;Definicion de reglas
;;(defmodule preguntas_definicion "Modulo de preguntas tipo de usuario"
;;  (import MAIN ?ALL)
;;  (export ?ALL)
;;  )

(deftemplate genero_usuario
    (slot gen)
    )

(deftemplate subgenero_usuario
    (slot subgen)
    )

(deffacts genero_subgenero_fact
    (genero_usuario (gen desconocido))
    (subgenero_usuario (subgen desconocido))
    )

(defrule seleccion_genero_subgenero
    (declare (salience 10))
    ?g <- (genero_usuario (gen desconocido))
    ?sg <- (subgenero_usuario(subgen desconocido))
    =>
    (bind ?a (ask-question "Seleccione el genero deseado (Accion|Aventura|Rol|Casual) -> " Accion Aventura Rol Casual accion aventura rol casual))
    (if (or (eq ?a Accion)(eq ?a accion))
    then
        (modify ?g (gen ?a))
        (modify ?sg (subgen (ask-question "Seleccione el subgenero deseado (FPS|3PS|Plataformas|Lucha) -> " FPS 3PS Plataformas Lucha fps 3ps plataformas lucha)))
        )
    (if (or (eq ?a Aventura)(eq ?a aventura))
    then
        (modify ?g (gen ?a))
        (modify ?sg (subgen (ask-question "Seleccione el subgenero deseado (Fantasia)" Fantasia fantasia)))
        )
    )

(deftemplate punto_vista
    (slot pv)
    )

(deffacts punto_vista_fact
    (pv_usuario (pv_u desconocido))
    )

(defrule seleccion_PV
    (declare (salience 10))
    ?p <- (pv_usuario (pv_u desconocido))
    =>
    (modify ?p (pv_usuario (ask-question "Seleccione punto de vista deseado 1)1ª 2)3ª 3)Vista aerea 4)Isometrica")))
    )