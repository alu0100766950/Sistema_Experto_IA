(defclass PARADA "Definición de la clase PARADA"
    (is-a USER)
    (role concrete)
    (slot parada (type STRING)(create-accessor read-write)) ;Nombre de la parada 
    (slot n_parada) ;Numero asignado a la parada 
    (multislot parada_siguiente (type INSTANCE)(allowed-classes PARADA))
    (multislot nodo (type INSTANCE)(allowed-classes LINEA))
    )

(definstances paradas
    ;;Paradas de la Linea 204
	(Anchieta of PARADA (parada "Anchieta") (n_parada 1) (parada_siguiente Cruz_Piedra Museo_Ciencia San_Juan Estacion_Guaguas_Antigua Astrofisico_Francisco_Sanchez ))
    (Cruz_Piedra of PARADA (parada "Cruz de Piedra") (n_parada 2) (parada_siguiente Calvo_Sotelo Lora_Tamayo))
    (Calvo_Sotelo of PARADA (parada "Calvo Sotelo") (n_parada 3) (parada_siguiente Ayuntamiento))
    (Ayuntamiento of PARADA (parada "Ayuntamiento") (n_parada 4) (parada_siguiente El_Cristo Quintin_Benito))
    (El_Cristo of PARADA (parada "El Cristo") (n_parada 5) (parada_siguiente El_Bronco Trinidad))
    (El_Bronco of PARADA (parada "Camino El Bronco") (n_parada 6) (parada_siguiente Lomo_Largo))
    (Lomo_Largo of PARADA (parada "Lomo Largo") (n_parada 7) (parada_siguiente La_Rua))
    (La_Rua of PARADA (parada "La Rua") (n_parada 8) (parada_siguiente Achaman))
    (Achaman of PARADA (parada "Achaman") (n_parada 9) (parada_siguiente Chincanayros))
    (Chincanayros of PARADA (parada "Chincanayros") (n_parada 10) (parada_siguiente El_Rayo_1))
    (El_Rayo_1 of PARADA (parada "El Rayo 1") (n_parada 11) (parada_siguiente El_Rayo_2))
    (El_Rayo_2 of PARADA (parada "El Rayo 2") (n_parada 12) (parada_siguiente El_Pino_1))
    (El_Pino_1 of PARADA (parada "El Pino 1") (n_parada 13) (parada_siguiente El_Pino_2))
    (El_Pino_2 of PARADA (parada "El Pino 1") (n_parada 14) (parada_siguiente Pozo_Cabildo) )
    (Pozo_Cabildo of PARADA (parada "Pozo Cabildo") (n_parada 15) (parada_siguiente Enrique_Romeu Paseo_Oramas))
    (Enrique_Romeu of PARADA (parada "Enrique Romeu") (n_parada 16) (parada_siguiente Turina))
    (Turina of PARADA (parada "Turina") (n_parada 17) (parada_siguiente Granados))
    (Granados of PARADA (parada "Granados") (n_parada 18) (parada_siguiente  Falla_1))
    (Falla_1 of PARADA (parada "Falla 1") (n_parada 19) (parada_siguiente Falla_2))
    (Falla_2 of PARADA (parada "Falla 2") (n_parada 20) (parada_siguiente Tabares_Bartlet))
    (Tabares_Bartlet of PARADA (parada "Tabares Bartlet") (n_parada 21) (parada_siguiente Concepcion_Salazar_1))
    (Concepcion_Salazar_1 of PARADA (parada "Concepcion Salazar 1") (n_parada 22) (parada_siguiente El_Cristo))
    (Trinidad of PARADA (parada "Trinidad") (n_parada 23) (parada_siguiente Anchieta))
    ;;Paradas de la Linea 219
    (Lora_Tamayo of PARADA (parada "Lora Tamayo") (n_parada 24) (parada_siguiente El_Cardonal Casa_Venezuela))
    (El_Cardonal of PARADA (parada "El Cardonal") (n_parada 25) (parada_siguiente Anchieta))
    ;;Paradas de la Linea 253
    (Museo_Ciencia of PARADA (parada "Museo de la Ciencia") (n_parada 26) (parada_siguiente Los_Menceyes))
    (Los_Menceyes of PARADA (parada "Los Menceyes") (n_parada 27) (parada_siguiente Gracia))
    (Gracia of PARADA (parada "Gracia") (n_parada 28) (parada_siguiente El_Dragon))
    (El_Dragon of PARADA (parada "El Dragon") (n_parada 29) (parada_siguiente La_Verdellada))
    (La_Verdellada of PARADA (parada "La Verdellada") (n_parada 30) (parada_siguiente El_Puente))
    (El_Puente of PARADA (parada "El Puente") (n_parada 31) (parada_siguiente Cruz_Piedra))
    (Quintin_Benito of PARADA (parada "Quintin Benito") (n_parada 32) (parada_siguiente Silvero_Alonso))
    (Silvero_Alonso of PARADA (parada "Silvero Alonso") (n_parada 33) (parada_siguiente Los_Bolos))
    (Los_Bolos of PARADA (parada "Los Bolos") (n_parada 34) (parada_siguiente Estacion_Guaguas_Antigua))
    (Estacion_Guaguas_Antigua of PARADA (parada "Estacion de Guaguas Antigua") (n_parada 35) (parada_siguiente San_Benito Anchieta La_Villa_1))
    (San_Benito of PARADA (parada "San Benito") (n_parada 36) (parada_siguiente Guardia_Civil Juana_la_Blanca Marcos_Redondo Anchieta))
    ;;Paradas de la Linea 217
    (Casa_Venezuela of PARADA (parada "Casa Venezuela") (n_parada 37) (parada_siguiente Casa_Venezuela))
    ;;Paradas de la Linea 271
    (San_Juan of PARADA (parada "San Juan") (n_parada 38) (parada_siguiente Catedral))
    (Catedral of PARADA (parada "Catedral") (n_parada 39) (parada_siguiente Juan_de_Vera))
    (Juan_de_Vera of PARADA (parada "Juan de Vera") (n_parada 40) (parada_siguiente Republica_Argentina_2))
    (Republica_Argentina_2 of PARADA (parada "Republica Argentina 2") (n_parada 41) (parada_siguiente Concepcion_Salazar_2))
    (Mercedes_1 of PARADA (parada "Mercedes 1") (n_parada 42) (parada_siguiente Mercedes_1))
    (Mercedes_2 of PARADA (parada "Mercedes 2") (n_parada 43) (parada_siguiente Mercedes_3))
    (Mercedes_3 of PARADA (parada "Mercedes 3") (n_parada 44) (parada_siguiente Mercedes_4))
    ;;Paradas de la Linea 224
    (Guardia_Civil of PARADA (parada "Guardia Civil") (n_parada 45) (parada_siguiente Valle_de_Guerra Amanecer_1 San_Benito))
    (Valle_de_Guerra of PARADA (parada "Valle de Guerra") (n_parada 46) (parada_siguiente Guardia_Civil))
    (Juana_la_Blanca of PARADA (parada "Juana la Blanca") (n_parada 47) (parada_siguiente 6_Diciembre Estacion_Guaguas_Antigua))
    ;;Paradas de la Linea 203
	(La_Villa_1 of PARADA (parada "La Villa 1") (n_parada 48) (parada_siguiente La_Villa_Colegio))
	(La_Villa_Colegio of PARADA (parada "La Villa Colegio") (n_parada 49) (parada_siguiente La_Villa_2))
	(La_Villa_2 of PARADA (parada "La Villa 2") (n_parada 50) (parada_siguiente La_Villa_3))
	(La_Villa_3 of PARADA (parada "La Villa 3") (n_parada 51) (parada_siguiente San_Lazaro))
	(San_Lazaro of PARADA (parada "San Lazaro") (n_parada 52) (parada_siguiente San_Benito))
	(Amanecer_1 of PARADA (parada "Amanecer 1") (n_parada 53) (parada_siguiente Amanecer_2))
	(Amanecer_2 of PARADA (parada "Amanecer 2") (n_parada 54) (parada_siguiente Tornero))
	(Tornero of PARADA (parada "Tornero") (n_parada 55) (parada_siguiente Las_Gavias_2))
	(Las_Gavias_1 of PARADA (parada "Las Gavias 1") (n_parada 56) (parada_siguiente Las_Gavias_2))
	(Las_Gavias_2 of PARADA (parada "Las Gavias 2") (n_parada 57) (parada_siguiente Miguel_Melo))
	(Miguel_Melo of PARADA (parada "Miguel Melo") (n_parada 58) (parada_siguiente Juana_la_Blanca))
	(6_Diciembre of PARADA (parada "6 de Diciembre") (n_parada 59) (parada_siguiente El_Juego))
	(El_Juego of PARADA (parada "El Juego") (n_parada 60) (parada_siguiente Trinidad))
	;;Paradas de la Linea 260
	(Astrofisico_Francisco_Sanchez of PARADA (parada "Astrofisico Francisco Sanchez") (n_parada 61) (parada_siguiente Baldios))
	(Baldios of PARADA (parada "Baldios") (n_parada 62) (parada_siguiente Andres_Rosado))
	(Andres_Rosado of PARADA (parada "Andres Rosado") (n_parada 63) (parada_siguiente Llano_del_Moro))
	(Llano_del_Moro of PARADA (parada "Llano del Moro") (n_parada 64))
	;;Paradas de la Linea 270
	(Marcos_Redondo of PARADA (parada "Marcos Redondo") (n_parada 65) (parada_siguiente Paseo_Oramas))
	(Paseo_Oramas of PARADA (parada "Paseo Oramas") (n_parada 66) (parada_siguiente Pozo_Cabildo))
	;;Añadidos
	(Los_Menceyes of PARADA (parada "Los Menceyes") (n_parada 67) (parada_siguiente Gracia))
	(Republica_Argentina_1 of PARADA (parada "Republica Argentina 1") (n_parada 68) (parada_siguiente Mercedes_4))
	(Concepcion_Salazar_2 of PARADA (parada "Concepcion Salazar 2") (n_parada 69) (parada_siguiente Mercedes_1))
    (Mercedes_4 of PARADA (parada "Las Mercedes 4") (n_parada 70))
    )

(defclass LINEA "Definición de paradas por LINEA"
    (is-a USER)
    (multislot paradas_linea)
    )

(definstances lineas
    (L_204 of LINEA (paradas_linea Anchieta Cruz_Piedra Calvo_Sotelo Ayuntamiento El_Cristo El_Bronco Lomo_Largo La_Rua Achaman Chincanayros El_Rayo_1 El_Rayo_2 El_Pino_1 El_Pino_2 Pozo_Cabildo Enrique_Romeu Turina Granados Falla_1 Falla_2 Tabares_Bartlet Concepcion_Salazar_1 El_Cristo Anchieta))
    (L_209 of LINEA (paradas_linea Anchieta Cruz_Piedra Lora_Tamayo El_Cardonal Anchieta))
    (L_253 of LINEA (paradas_linea Anchieta Museo_Ciencia Los_Menceyes Gracia El_Dragon La_Verdellada El_Puente Cruz_Piedra Calvo_Sotelo Ayuntamiento Quintin_Benito Silvero_Alonso Los_Bolos Estacion_Guaguas_Antigua San_Benito Anchieta))
    (L_217 of LINEA (paradas_linea Anchieta Cruz_Piedra Lora_Tamayo Casa_Venezuela El_Cardonal Anchieta))
    (L_271 of LINEA (paradas_linea Anchieta San_Juan Catedral Juan_de_Vera Republica_Argentina Concepcion_Salazar_2 Mercedes_1 Mercedes_2 Mercedes_3 Mercedes_4))
	(L_224 of LINEA (paradas_linea Anchieta Estacion_Guaguas_Antigua San_Benito Guardia_Civil Valle_de_Guerra Guardia_Civil San_Benito Juana_la_Blanca Estacion_Guaguas_Antigua Anchieta))
	(L_203 of LINEA (paradas_linea Anchieta Estacion_Guaguas_Antigua La_Villa_1 La_Villa_Colegio La_Villa_2 La_Villa_3 San_Lazaro San_Benito Guardia_Civil Amanecer_1 Amanecer_2 Tornero Las_Gavias_1 Las_Gavias_2 Miguel_Melo Juana_la_Blanca 6_Diciembre El_Juego Trinidad Anchieta))
	(L_260 of LINEA (paradas_linea Anchieta Astrofisico Baldios Andres_Rosado Llano))
	(L_270 of LINEA (paradas_linea Anchieta Estacion_Guaguas_Antigua San_Benito Marcos_Redondo Paseo_Oramas Pozo_Cabildo Republica_Argentina_1 Mercedes_4))
    )

(deffacts salida_llegada
    (parada-requerida desconocida)
    )


(deffunction captura_inicio "Muestreo y captura de opciones del usuario para inicio" ()
    (declare (salience 10))
    ?numero <- 
    ;Muestreo de posibles inicios
    (do-for-all-instances ((?par1 PARADA))
        (> (length$ (send ?par1 get-parada_siguiente)) 0)
        (printout t (send ?par1 get-n_parada)")"(send ?par1 get-parada) crlf)
        )
    ;Selección de parada de inicio
    (printout t "Seleccione parada -> ")
    (bind ?numero (read))
    (assert (parada_i ?numero))
    )

(deffunction captura_fin "Muestreo y captura de opciones del usuario para fin" ()
    ;Muestreo de posibles finales
    (do-for-all-instances ((?par1 PARADA))
        (printout t (send ?par1 get-n_parada)")"(send ?par1 get-parada) crlf)
        )
    ;Selección de parada de fin
    (printout t "Seleccione parada a la que desea llegar-> ")
    (bind ?numero (read))
    (assert (parada_f ?numero))
    )