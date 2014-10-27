(deftemplate hechos-joseka
    (slot cualidad (type LEXEME))
    )


(deffacts definicion-de-hechos
    (hechos-joseka (cualidad desconocido))
    )


(defrule proposion
    (declare (salience  100))
    ?u <- (hechos-joseka (cualidad desconocido))
    =>
    (system clear)
    (printout t "Joseka es:" crlf)
    (printout t "tonto" crlf)
    (printout t "listo" crlf)
    (printout t "Elige tu respuesta: " crlf)
    (bind ?respuesta (read))
    (modify ?u (cualidad ?respuesta))
)

(defrule proposion-2
    ?u <- (hechos-joseka (cualidad ?a))
    =>
    (if (eq ?a listo)
        then
        (printout t "No me mientas, di la verdad" crlf)
        (modify ?u (cualidad desconocido))
    else
        (printout t "Asi me gusta, pensamos lo mismo" crlf)
    )
)

(deftemplate hechos
(slot penes))
