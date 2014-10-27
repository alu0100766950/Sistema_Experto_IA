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
(defmodule MAIN (export ?ALL))
(defmodule preguntas_definicion "Modulo de preguntas tipo de usuario"
  (import MAIN ?ALL)
  (export ?ALL)
  )

(deftemplate genero_usuario
    (slot gen)
    )

(deftemplate subgenero_usuario
    (slot subgen)
    )

(deffacts genero_subgenero
    (genero_usuario (gen desconocido))
    (subgenero_usuario (subgen desconocido))
    )

(defrule seleccion_genero_subgenero
    (declare (salience 10))
    ?g <- (genero_usuario (gen desconocido))
    ?sg <- (subgenero_usuario(subgen desconocido))
    =>
    (if (eq (ask-question "Seleccione el genero deseado" Accion Aventura Rol Casual) Accion)
    then
        (modify ?g (gen Accion))
        (modify ?sg (subgen (ask-question "Seleccione el subgenero deseado" FPS 3PS Plataformas Lucha)))
        )
    (if (eq (ask-question "Seleccione el genero deseado" Accion Aventura Rol Casual) Aventura)
    then
        (modify ?g (gen Aventura))
        (modify ?sg (subgen (ask-question "Seleccione el subgenero deseado" Fantasia)))
        )
    )



