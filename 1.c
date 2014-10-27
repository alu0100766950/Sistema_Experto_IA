(defrule paradainit
     (initial-fact)
=>
     (printout t "Introduce el numero de parada en la que te encuentras" crlf)
     (assert (inicio (read)))
     )

          (defrule paradafin
     (initial-fact)
=>
     (printout t "Introduce el numero de parada a la que quieres llegar" crlf)
     (assert (final (read)))
     )alu4465@exthost2:~/Desktop$ 
