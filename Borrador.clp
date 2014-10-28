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
        (allowed-values "Accion" "Aventuras" "Rol" "Casual" "Simuladores")
        )
    (single-slot subgenero
        (type STRING)
        (allowed-values "FPS" "Lucha" "3PS" "Plataformas" "Fantasia" "Terror" "MMORPG" "Puzle" "Animales" "Deporte" "MOBA" "Aventura Grafica" "Educativo" "Historico" "RPG" "Musica")
        )
    (single-slot punto_vista
        (type INTEGER)
        (allowed-values 1 2 3 4) ;;1 = primera persona 2 = tercera persona 3 = vista desde el cielo (Poner este para tetris, pacman y demas) 4 = vista isometrica
        (create-accessor read-write)
        )
    (multislot multijugador
        (type STRING)
        (allowed-values "Online" "Local")
        (cardinality 0 1)
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
        (allowed-values 1970 1960 1980 1990 2000 2010)
        (create-accessor read-write)
        )
    (single-slot company
        (type STRING)
        (allowed-values "SEGA" "Capcom" "Electronic Arts" "Rockstar Games" "Nintendo" "Ubisoft" "Sony" "Konami" "Activision" "Blizzard" "Naughty Dog" "Square Enix" "Valve" "Bethesda" "2K" "Monolith")
        (create-accessor read-write)
        )
    (multislot plataforma
        (type STRING)
        (allowed-values "PC" "XBOX" "XBOX 360" "XBOX ONE" "PSX" "PS2" "PS3" "PS4" "PSP" "PSVITA" "GAMEBOY" "GAMEBOY COLOR" "GAMEBOY ADVANCE" "NES" "SNES" "N64" "NDS" "N3DS" "WII" "WII-U" "IPHONE")
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
        (subgenero "MMORPG")
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
        (subgenero "MOBA")
        (punto_vista 2)
        (multijugador "Online")
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
        (subgenero "Lucha")
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
        (subgenero "Plataformas")
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
    ([juego12] of JUEGO
        (nombre "Minecraft")
        (genero "Rol")
        (subgenero "MMORPG")
        (punto_vista 1,2,3)
        (multijugador "Online")
        (precio 19.95)
        (edad 12)
        (mundo_abierto 1)
        (generacion 2014)
        (company "Mojang")
        (plataforma "PC, XBOX 360, XBOX ONE, PS3, PS4")
        (duracion -1)
        (descripcion "En Minecraft se nos presenta un mundo creado a base de cubos en 3D en el que el usuario dispone de una amplia libertad para crear sus propias construcciones. El videojuego es considerado todo un fenómeno social por la cantidad de jugadores, posibilidades y versiones que presenta.")
        (pagina "http://www.minecraft.net")
        )
    ([juego13] of JUEGO
        (nombre "Ryse: Son of Rome")
        (genero "Accion")
        (subgenero "Lucha")
        (punto_vista 2)
        (multijugador "Local")
        (precio 34.95)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2000)
        (company "Koch Media")
        (plataforma "PC, XBOX ONE")
        (duracion 480)
        (descripcion "La antaño exclusiva de Xbox One desarrollada por CryTek, los creadores de Crysis, desembarca en PC con soporte para resolución 4K y todos los contenidos descargables incluidos ahora en su embalaje. Un título de acción pura y dura donde libraremos encarnizadas batallas mientras luchamos contra la invasión bárbara y devolvemos la gloria a Roma.")
        (pagina "http://www.kochmedia.com/es/")
        )
    ([juego14] of JUEGO
        (nombre "Assassins Creed")
        (genero "Aventura")
        (subgenero "Historico")
        (punto_vista 2)
        (multijugador "Local, Online")
        (precio 64.95)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2000)
        (company "Ubisoft")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion -1)
        (descripcion "Videojuego de la popular saga de acción y aventuras Assassin's Creed destinada en exclusiva a la nueva generación. El título se ambienta en el París del siglo XVIII, recreando con todo lujo de detalles escenarios reales como la Catedral de Notre Dame o el río Sena que recorre la capital gala.")
        (pagina "http://ubisoft.com")
        )
    ([juego15] of JUEGO
        (nombre "Final Fantasy VII")
        (genero "ROL")
        (subgenero "RPG")
        (punto_vista 2)
        (precio 7.00)
        (edad 13)
        (mundo_abierto 1)
        (generacion 1990)
        (company "Square Enix")
        (plataforma "PC, PSX")
        (duracion -1)
        (descripcion "Revisión del clásico Final Fantasy VII que incluye abundantes mejoras como una serie de características on-line, la presencia de 36 logros, cloud-saving y algo llamado 'Character Booster', una herramienta que nos permitirá 'aumentar nuestros niveles HP, MP y Gil hasta su máximo con sólo hacer click en un botón y permitiéndonos disfrutar de la aventura'")
        (pagina "http://eu.square-enix.com/en/home")
        )
    ([juego16] of JUEGO
        (nombre "Cooking Mama")
        (genero "Casual")
        (subgenero "Educativo")
        (punto_vista 1)
        (multijugador "Local")
        (precio 9.99)
        (edad 0)
        (mundo_abierto 0)
        (generacion 2000)
        (company "505 Games")
        (plataforma "3DS")
        (duracion 60)
        (descripcion "Esta madre tiene una manera muy especial de preparar un pavo relleno, métete con ella en la cocina y ¡disfruta!")
        (pagina "http://505games.com/")
        )
    ([juego17] of JUEGO
        (nombre "Resident Evil")
        (genero "Accion")
        (subgenero "3PS")
        (punto_vista 2)
        (multijugador "Online" "Local")
        (precio 29.99)
        (edad 18)
        (mundo_abierto 0)
        (generacion 2000)
        (company "Capcom")
        (plataforma "PC" "XBOX 360" "PS2" "WII")
        (duracion 840)
        (descripcion "Saga de terror creada por Capcom, que en esta ocasión traslada su desarrollo hasta una misteriosa localización europea desde la que Leon S. Kennedy, el protagonista, deberá rescatar a la hija del presidente de los Estados Unidos de unos aldeanos aparentemente convertidos en zombis.")
        (pagina "http://www.capcom-europe.com/")
        )
    ([juego18] of JUEGO
        (nombre "Far Cry 4")
        (genero "Accion")
        (subgenero "FPS")
        (punto_vista 1)
        (multijugador "Online" "Local")
        (precio 60.00)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2010)
        (company "Ubisoft")
        (plataforma "PC" "XBOX 360" "XBOX ONE" "PS3" "PS4")
        (duracion 55)
        (descripcion "cción en primera persona con enorme libertad que se ambienta en la recóndita región de Kyrat, una peligrosa y salvaje región de la cordillera del Himalaya, donde lucharemos contra el régimen de un rey déspota que se ha erigido él mismo como amo y señor de sus dominios.")
        (pagina "http://www.farcrygame.com")
        )
    ([juego19] of JUEGO
        (nombre "The Witcher Battle Arena")
        (genero "ROL")
        (subgenero "MOBA")
        (punto_vista 2)
        (precio 0.00)
        (edad 18)
        (mundo_abierto 1)
        (generacion 2010)
        (company "CD Projekt RED")
        (plataforma "Android","Iphone","Ipad")
        (duracion 55)
        (descripcion "Geralt de Rivia recibe su propio MOBA con The Witcher Battle Arena. Exclusivo en plataformas móviles, invita a seis jugadores a disputar batallas por territorios en el mundo creado por Andrzej Sapkowski.")
        (pagina "http://thewitcher.com/twba")
        )
    ([juego20] of JUEGO
        (nombre "Guitar Hero")
        (genero "Casual")
        (subgenero "Musica")
        (punto_vista 3)
        (multijugador "Local", "Online")
        (precio 26.95)
        (edad 12)
        (mundo_abierto 0)
        (generacion 2000)
        (company "Activision Blizzard")
        (plataforma "XBOX 360" "PS3" "WII")
        (duracion -1)
        (descripcion "Saga Guitar Hero entre cuya imponente lista de temas musicales se encuentran los Rolling Stones, The White Stripes, Kings of Leon, Tom Petty, Bob Dylan, Johnny Cash, Santana, Vampire Weekend, Beastie Boys, Coldplay, Duran Duran, Gorrillaz, Jimmy Eat World, Muse y The Raconteurs.")
        (pagina "http://www.guitarhero.com")
        )
    ([juego21] of JUEGO
        (nombre "Valiant Herats: The Great War")
        (genero "Accion")
        (subgenero "Plataformas")
        (punto_vista 2)
        (multijugador "Local")
        (precio 00.00)
        (edad 12)
        (mundo_abierto 1)
        (generacion 2000)
        (company "Ubisoft")
        (plataforma "Iphone" "PC" "XBOX 360" "XBOX ONE")
        (duracion 480)
        (descripcion "En esta aventura puzle que mezcla elementos de sigilo seguiremos el devenir de cinco personajes de diferentes nacionalidades que intentan sobrevivir a uno de los eventos más devastadores de la historia: la Primera Guerra Mundial.")
        (pagina "http://valianthearts.ubi.com/game/es-es/home/index.aspx")
        )
    )

;;Definicion de funcion para mostrar por pantalla
(defmessage-handler JUEGO imprime ()
    (printout t "Titutlo: ")
    (printout t ?self:nombre)
    (printout t crlf)
    (printout t "Genero: ")
    (printout t ?self:genero)
    (printout t crlf)
    (printout t "Subgenero: ")
    (printout t ?self:subgenero)
    (printout t crlf)
    (if (> (length$ ?self:multijugador) 0) then
        (printout t ?self:multijugador)
    else
        (printout t "Multijugador: No")
        )
    (printout t crlf)
    (printout t "Precio: ")
    (printout t ?self:precio)
    (printout t crlf)
    (printout t "Descripcion: ")
    (printout t ?self:descripcion)
    (printout t crlf)
    (printout t "Pagina de consulta: ")
    (printout t ?self:pagina)
    (printout t crlf)
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
        (modify ?sg (subgen (ask-question "Seleccione el subgenero deseado (Fantasia) -> " Fantasia fantasia)))
        )
    )

(deftemplate punto_vista
    (slot pv)
    )

(deffacts punto_vista_fact
    (punto_vista (pv desconocido))
    )

(defrule seleccion_PV
    (declare (salience 9))
    ?p <- (punto_vista (pv desconocido))
    =>
    (modify ?p (pv (ask-question "Seleccione punto de vista deseado 1)1ª 2)3ª 3)Vista aerea 4)Isometrica -> " 1 2 3 4)))
    )

(deftemplate multi
    (multislot mj)
    )

(deffacts multi_fact
    (multi (mj desconocido))
    )

(defrule seleccion_multi
    (declare (salience 8))
    ?m <- (multi (mj desconocido))
    =>
    (if (si-o-no-p "Desea que sue juego posea multijugador (s/n) -> ") then
        (bind ?a (ask-question "Selccione modo multijugador (Online|Local) -> " online local Online Local))
        (if (or(eq a? "local")(eq a? "Local")) then
            (if (si-o-no-p "Desea que su juego posea tambien multijugador Online (s/n) -> ") then
                (modify ?m (mj Local Online))
                )
            else
                (modify ?m (mj Local))
        else
            (if(si-o-no-p "Desea que su juego posea tambien multijugador Local (s/n) -> ") then
                (modify ?m (mj Local Online))
                )
            else
                (modify ?m (mj Online))
            )
        )
    )

(deftemplate precio
    (slot pc)
    )

(deffacts precio_fact
    (precio (pc desconocido))
    )

(defrule seleccion_precio
    (declare (salience 7))
    ?p <- (precio (pc desconocido))
    =>
    (printout t "Cuanto dinero esta dispuesto a gastarse? -> ")
    (bind ?a (read))
    (modify ?p (pc ?a))
    )

(deftemplate edad
    (slot ed)
    )

(deffacts edad_fact
    (edad (ed desconocido))
    )

(defrule seleccion_edad
    (declare (salience 6))
    ?e <- (edad (ed desconocido))
    =>
    (bind ?a (ask-question "Seleccione la edad recomendada para su jeugo (0|3|12|16|18) -> " 0 3 12 16 18))
    (modify ?e (ed ?a))
    )

(deftemplate mundo
    (slot ma)
    )

(deffacts mundo_fact
    (mundo (ma desconocido))
    )

(defrule seleccion_mundo
    (declare (salience 5))
    ?m <- (mundo (ma desconocido))
    =>
    (if (si-o-no-p "Desea que su juego tenga opcion de punto abierto? (s/n) -> ") then
            (modify ?m (ma 1))
        else
            (modify ?m (ma 0))
        )
    )

(deftemplate generacion
    (slot ge)
    )

(deffacts generacion_fact
    (generacion (ge desconocido))
    )

(defrule seleccion_generacion
    (declare (salience 4))
    ?g <- (generacion (ge desconocido))
    =>
    (bind ?a (ask-question "Seleccione la generacion de juegos que desea (1970s|1980s|1990s|2000s|2010s) -> " 1970 1980 1990 2000 2010))
    (modify ?g (ge ?a))
    )

(deftemplate company
    (slot com)
    )

(deffacts company_fact
    (company (com desconocido))
    )

(defrule seleccion_company
    (declare (salience 3))
    ?c <- (company (com desconocido))
    =>
    (bind ?a (ask-question "Introduzca una compañia valida (Utilice _ para representar los espacios) -> " SEGA Capcom Electronic_Arts Rockstar_Games Nintendo Ubisoft Sony Konami Activision Blizzard Naughty_Dog Square_Enix Valve Bethesda 2K Monolith))
    (modify ?c (com ?a))
    )

(deftemplate plataforma
    (slot plat)
    )

(deffacts plataforma_fact
    (plataforma (plat desconocido))
    )

(defrule seleccion_plataforma
    (declare (salience 2))
    ?p <- (plataforma (plat desconocido))
    =>
    (bind ?a (ask-question "Introduzca la plataforma para su juego (Utilice _ para representar los espacios) -> " PC XBOX XBOX_360 XBOX_ONE PSX PS2 PS3 PS4 PSP PSVITA GAMEBOY GAMEBOY_COLOR GAMEBOY_ADVANCE NES SNES N64 NDS N3DS WII WII-U IPHONE))
    (modify ?p (plat ?a))
    )


(deftemplate duracion
    (slot dur)
    )

(deffacts duracion_fact
    (duracion (dur desconocido))
    )

(defrule seleccion_duracion
    (declare (salience 1))
    ?d <- (duracion (dur desconocido))
    =>
    (printout t "Introduzca la duracion que le gustaria que tuviera su juego -> ")
    (bind ?a (read))
    (modify ?d (dur ?a))
    )

(defrule impresion_final
    (precio(pc ?p))
    =>
    (do-for-all-instances ((?ju1 JUEGO))
        (<= (send ?ju1 get-precio) ?p)
        (send ?ju1 imprime)
        )
    )