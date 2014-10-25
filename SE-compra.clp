;;; Prototipo de Sistema Experto para la recomendacion de compra de un PC
;;; Asignatura: Inteligencia Artificial - FIB - UPC
;;; Curso 2004/2005 2o Cuatrimestre

;;; ---Ontologia

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Capacidad
;+		(comment "Capacidad de almacenamiento del componente en Gbytes")
		(type SYMBOL)
		(allowed-values 20Gb 40Gb 80Gb 160Gb 200Gb 320Gb 240Gb)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Distribucion
;+		(comment "Version del SO")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Fabricante
;+		(comment "Fabricante del componente")
		(type STRING)
		(default "generico")
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_monitor
;+		(comment "Tipo del monitor")
		(type SYMBOL)
		(allowed-values CRT LCD)
		(default CRT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Grabador
;+		(comment "Es una unidad grabadora")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Frecuencia
;+		(comment "Frecuencia de reloj de la CPU")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Software
;+		(comment "Software que necesita el PC")
		(type INSTANCE)
;+		(allowed-classes Soft)
		(create-accessor read-write))
	(single-slot Placa
;+		(comment "Placa base del PC")
		(type INSTANCE)
;+		(allowed-classes Placa_base)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Procesador
;+		(comment "Tipo de procesador del PC")
		(type INSTANCE)
;+		(allowed-classes CPU)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dispositivos_de_Almacenamiento
;+		(comment "Dispositivos de almacenamiento del PC")
		(type INSTANCE)
;+		(allowed-classes Almacenamiento)
		(create-accessor read-write))
	(single-slot Memoria
;+		(comment "Tamaño de la memoria")
		(type SYMBOL)
		(allowed-values 256Mb 512Mb 1Gb 2Gb 4Gb 8Gb 16Gb)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Num_puertos
;+		(comment "Numero de puertos del router")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conector
;+		(comment "Tipo de conexion que usa el dispositivo")
		(type SYMBOL)
		(allowed-values USB Serie Paralelo inalambrico PS-2 IDE SCSI Serial_ATA PCI PCMCIA)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conectores_IDE
;+		(comment "Numero de conectores IDE")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puertos_USB
;+		(comment "numero de puertos USB")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puertos_Firewire
;+		(comment "Numero de puertos firewire")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Slots_PCI
;+		(comment "Numero de slots PCI")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Slots_AGP
;+		(comment "Numero de slots AGP")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conectores_Serial_ATA
;+		(comment "Numero de conectores serial ATA")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Pulgadas
;+		(comment "Pulgadas del monitor")
		(type SYMBOL)
		(allowed-values 15p 17p 19p 21p 14p)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Memoria_Video
;+		(comment "Tamaño de la memoria de video")
		(type SYMBOL)
		(allowed-values 32Mb 64Mb 128Mb 256Mb)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo_impresora
;+		(comment "Tipo de impresora")
		(type SYMBOL)
		(allowed-values Inyeccion Laser)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Dispositivos_de_Entrada
;+		(comment "Dispositivos de entrada del PC")
		(type INSTANCE)
;+		(allowed-classes Entrada)
		(create-accessor read-write))
	(multislot Dispositivos_de_Salida
;+		(comment "Dispositivos de salida del PC")
		(type INSTANCE)
;+		(allowed-classes Salida)
		(create-accessor read-write))
	(multislot Dispositivos_de_Comunicacion
;+		(comment "Dispositivos de comunicacion del PC")
		(type INSTANCE)
;+		(allowed-classes Comunicacion)
		(create-accessor read-write))
	(single-slot Modelo
;+		(comment "Modelo de la CPU")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Precio
;+		(comment "Precio del componente")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Version
;+		(comment "SOs sobre los que se ejecuta el software")
		(type SYMBOL)
		(allowed-values Windows Linux)
		(create-accessor read-write))
	(single-slot Tipo_raton
;+		(comment "Tipo de raton")
		(type SYMBOL)
		(allowed-values bola optico)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Programa
;+		(comment "Nombre del programa")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Tipo_red
;+		(comment "Tipo de tecnologia de red")
		(type SYMBOL)
		(allowed-values Ethernet WiFi)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Duracion
;+		(comment "Duracion de la bateria en horas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_bateria
;+		(comment "Tipo de bateria del PC")
		(type INSTANCE)
;+		(allowed-classes Bateria)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass componente "Componentes de un PC"
	(is-a USER)
	(role concrete)
	(single-slot Precio
;+		(comment "Precio del componente")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Soft "Elementos Software"
	(is-a componente)
	(role concrete))

(defclass SO "Sistema operativo"
	(is-a Soft)
	(role concrete)
	(single-slot Distribucion
;+		(comment "Version del SO")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Linux "SO Linux"
	(is-a SO)
	(role concrete))

(defclass Windows "SO Windows"
	(is-a SO)
	(role concrete))

(defclass Aplicacion "Aplicaciones software"
	(is-a Soft)
	(role concrete)
	(multislot Version
;+		(comment "SOs sobre los que se ejecuta el software")
		(type SYMBOL)
		(allowed-values Windows Linux)
		(create-accessor read-write))
	(single-slot Programa
;+		(comment "Nombre del programa")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Juegos "Aplicaciones ludicas"
	(is-a Aplicacion)
	(role concrete))

(defclass Ofimatica "Programas o suites para edicion, hojas de calculop, presentaciones, etc"
	(is-a Aplicacion)
	(role concrete))

(defclass Disenyo_Grafico "Aplicaciones para el diseño grafico"
	(is-a Aplicacion)
	(role concrete))

(defclass Base_de_Datos "SGBDs"
	(is-a Aplicacion)
	(role concrete))

(defclass Contabilidad "Aplicaciones de contabilidad"
	(is-a Aplicacion)
	(role concrete))

(defclass Hard "Elementos hardware"
	(is-a componente)
	(role concrete)
	(single-slot Fabricante
;+		(comment "Fabricante del componente")
		(type STRING)
		(default "generico")
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Comunicacion "Dispositiv de comunicacionn"
	(is-a Hard)
	(role concrete)
	(single-slot Conector
;+		(comment "Tipo de conexion que usa el dispositivo")
		(type SYMBOL)
		(allowed-values USB Serie Paralelo inalambrico PS-2 IDE SCSI Serial_ATA PCI PCMCIA)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Modem "Modem telefonico"
	(is-a Comunicacion)
	(role concrete))

(defclass Tarjeta_red "Tarjeta de red"
	(is-a Comunicacion)
	(role concrete)
	(single-slot Tipo_red
;+		(comment "Tipo de tecnologia de red")
		(type SYMBOL)
		(allowed-values Ethernet WiFi)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass ADSL "Dispositivos ADSL"
	(is-a Comunicacion)
	(role concrete))

(defclass Modem_ADSL "Modem ADSL"
	(is-a ADSL)
	(role concrete))

(defclass Router_ADSL "Router ADSL"
	(is-a ADSL)
	(role concrete)
	(single-slot Num_puertos
;+		(comment "Numero de puertos del router")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Router "Router de red"
	(is-a Comunicacion)
	(role concrete)
	(single-slot Num_puertos
;+		(comment "Numero de puertos del router")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass CPU "Cpu del PC"
	(is-a Hard)
	(role concrete)
	(single-slot Frecuencia
;+		(comment "Frecuencia de reloj de la CPU")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Modelo
;+		(comment "Modelo de la CPU")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass CPU_portatil "CPUs para portatiles"
	(is-a CPU)
	(role concrete))

(defclass CPU_workstation "CPUs para workstations"
	(is-a CPU)
	(role concrete))

(defclass CPU_servidor "CPUs para servidores"
	(is-a CPU)
	(role concrete))

(defclass CPU_domestico "CPUs para PCs domesticos"
	(is-a CPU)
	(role concrete))

(defclass Placa_base "Placa base del PC"
	(is-a Hard)
	(role concrete)
	(single-slot Conectores_IDE
;+		(comment "Numero de conectores IDE")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puertos_USB
;+		(comment "numero de puertos USB")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puertos_Firewire
;+		(comment "Numero de puertos firewire")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Slots_PCI
;+		(comment "Numero de slots PCI")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Slots_AGP
;+		(comment "Numero de slots AGP")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Conectores_Serial_ATA
;+		(comment "Numero de conectores serial ATA")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Salida "Dispositivos de salida"
	(is-a Hard)
	(role concrete))

(defclass Monitor "Monitor"
	(is-a Salida)
	(role concrete)
	(single-slot Tipo_monitor
;+		(comment "Tipo del monitor")
		(type SYMBOL)
		(allowed-values CRT LCD)
		(default CRT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Pulgadas
;+		(comment "Pulgadas del monitor")
		(type SYMBOL)
		(allowed-values 15p 17p 19p 21p 14p)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tarjeta_video "Tarjeta de video"
	(is-a Salida)
	(role concrete)
	(single-slot Memoria_Video
;+		(comment "Tamaño de la memoria de video")
		(type SYMBOL)
		(allowed-values 32Mb 64Mb 128Mb 256Mb)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tarjeta_sonido "Tarjeta de sonido"
	(is-a Salida)
	(role concrete))

(defclass Altavoces "Altavoces"
	(is-a Salida)
	(role concrete))

(defclass Impresora "Impresora"
	(is-a Salida)
	(role concrete)
	(single-slot Conector
;+		(comment "Tipo de conexion que usa el dispositivo")
		(type SYMBOL)
		(allowed-values USB Serie Paralelo inalambrico PS-2 IDE SCSI Serial_ATA PCI PCMCIA)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_impresora
;+		(comment "Tipo de impresora")
		(type SYMBOL)
		(allowed-values Inyeccion Laser)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Entrada "Dispositivos de entrada"
	(is-a Hard)
	(role concrete)
	(single-slot Conector
;+		(comment "Tipo de conexion que usa el dispositivo")
		(type SYMBOL)
		(allowed-values USB Serie Paralelo inalambrico PS-2 IDE SCSI Serial_ATA PCI PCMCIA)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Teclado "Teclado"
	(is-a Entrada)
	(role concrete))

(defclass Scanner "Scanner"
	(is-a Entrada)
	(role concrete))

(defclass Raton "raton"
	(is-a Entrada)
	(role concrete)
	(single-slot Tipo_raton
;+		(comment "Tipo de raton")
		(type SYMBOL)
		(allowed-values bola optico)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tableta_Grafica "Tableta grafica"
	(is-a Entrada)
	(role concrete))

(defclass Almacenamiento "Dispositivos de almacenamiento"
	(is-a Hard)
	(role concrete)
	(single-slot Conector
;+		(comment "Tipo de conexion que usa el dispositivo")
		(type SYMBOL)
		(allowed-values USB Serie Paralelo inalambrico PS-2 IDE SCSI Serial_ATA PCI PCMCIA)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Para_portatil
;+		(comment "Es para portatil?")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass DVD "DVD"
	(is-a Almacenamiento)
	(role concrete)
	(single-slot Grabador
;+		(comment "Es una unidad grabadora")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass CDROM "CDROM"
	(is-a Almacenamiento)
	(role concrete)
	(single-slot Grabador
;+		(comment "Es una unidad grabadora")
		(type SYMBOL)
		(allowed-values Si No)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Disco_flexible "Disquetera"
	(is-a Almacenamiento)
	(role concrete))

(defclass Disco_duro "Disco duro"
	(is-a Almacenamiento)
	(role concrete)
	(single-slot Capacidad
;+		(comment "Capacidad de almacenamiento del componente en Gbytes")
		(type SYMBOL)
		(allowed-values 20Gb 40Gb 80Gb 160Gb 200Gb 320Gb 240Gb)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bateria "Bateria para portatil"
	(is-a Hard)
	(role concrete)
	(single-slot Duracion
;+		(comment "Duracion de la bateria en horas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass PC "Clase generica para elaborar la recomendacion"
	(is-a USER)
	(role concrete)
	(multislot Software
;+		(comment "Software que necesita el PC")
		(type INSTANCE)
;+		(allowed-classes Soft)
		(create-accessor read-write))
	(single-slot Placa
;+		(comment "Placa base del PC")
		(type INSTANCE)
;+		(allowed-classes Placa_base)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Procesador
;+		(comment "Tipo de procesador del PC")
		(type INSTANCE)
;+		(allowed-classes CPU)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dispositivos_de_Almacenamiento
;+		(comment "Dispositivos de almacenamiento del PC")
		(type INSTANCE)
;+		(allowed-classes Almacenamiento)
		(create-accessor read-write))
	(single-slot Memoria
;+		(comment "Tamaño de la memoria")
		(type SYMBOL)
		(allowed-values 256Mb 512Mb 1Gb 2Gb 4Gb 8Gb 16Gb)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Dispositivos_de_Entrada
;+		(comment "Dispositivos de entrada del PC")
		(type INSTANCE)
;+		(allowed-classes Entrada)
		(create-accessor read-write))
	(multislot Dispositivos_de_Salida
;+		(comment "Dispositivos de salida del PC")
		(type INSTANCE)
;+		(allowed-classes Salida)
		(create-accessor read-write))
	(multislot Dispositivos_de_Comunicacion
;+		(comment "Dispositivos de comunicacion del PC")
		(type INSTANCE)
;+		(allowed-classes Comunicacion)
		(create-accessor read-write)))

(defclass Portatil "PC portatil"
	(is-a PC)
	(role concrete)
	(single-slot Tipo_bateria
;+		(comment "Tipo de bateria del PC")
		(type INSTANCE)
;+		(allowed-classes Bateria)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Servidor "Servidor"
	(is-a PC)
	(role concrete))

(defclass Sobremesa
	(is-a PC)
	(role concrete))

(defclass Workstation "Estacion de trabajo"
	(is-a Sobremesa)
	(role concrete))

(defclass Domestico "PC domestico"
	(is-a Sobremesa)
	(role concrete))
	
(definstances compra
([ia04052q-prot_Instance_0] of  Ofimatica

	(Precio 0.0)
	(Programa "OpenOffice")
	(Version Windows Linux))

([ia04052q-prot_Instance_100] of  CPU_domestico

	(Fabricante "Intel")
	(Frecuencia 2.4)
	(Modelo "Celeron")
	(Precio 50.0))

([ia04052q-prot_Instance_10000] of  Tarjeta_red

	(Conector PCMCIA)
	(Fabricante "generico")
	(Precio 60.0)
	(Tipo_red WiFi))

([ia04052q-prot_Instance_10002] of  Tarjeta_red

	(Conector PCI)
	(Fabricante "generico")
	(Precio 50.0)
	(Tipo_red WiFi))

([ia04052q-prot_Instance_10003] of  Bateria

	(Duracion 8)
	(Fabricante "generico")
	(Precio 200.0))

([ia04052q-prot_Instance_10004] of  Bateria

	(Duracion 10)
	(Fabricante "generico")
	(Precio 400.0))

([ia04052q-prot_Instance_10005] of  Disco_duro

	(Capacidad 200Gb)
	(Conector Serial_ATA)
	(Fabricante "IBM")
	(Para_portatil No)
	(Precio 120.0))

([ia04052q-prot_Instance_101] of  CPU_domestico

	(Fabricante "Intel")
	(Frecuencia 2.6)
	(Modelo "Celeron")
	(Precio 70.0))

([ia04052q-prot_Instance_102] of  CPU_portatil

	(Fabricante "Intel")
	(Frecuencia 2.4)
	(Modelo "Mobile")
	(Precio 80.0))

([ia04052q-prot_Instance_103] of  CPU_portatil

	(Fabricante "AMD")
	(Frecuencia 2.6)
	(Modelo "Mobile-Athlon")
	(Precio 80.0))

([ia04052q-prot_Instance_2] of  Bateria

	(Duracion 3)
	(Fabricante "generico")
	(Precio 100.0))

([ia04052q-prot_Instance_20000] of  Disco_flexible

	(Fabricante "generico")
	(Para_portatil Si)
	(Precio 20.0))

([ia04052q-prot_Instance_20001] of  Modem

	(Conector PCMCIA)
	(Fabricante "generico")
	(Precio 40.0))

([ia04052q-prot_Instance_20002] of  Monitor

	(Fabricante "generico")
	(Para_portatil Si)
	(Precio 300.0)
	(Pulgadas 15p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_20005] of  Monitor

	(Fabricante "generico")
	(Para_portatil Si)
	(Precio 200.0)
	(Pulgadas 14p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_20006] of  DVD

	(Conector IDE)
	(Fabricante "generico")
	(Grabador no)
	(Para_portatil Si)
	(Precio 100.0))

([ia04052q-prot_Instance_20007] of  DVD

	(Conector IDE)
	(Fabricante "generico")
	(Grabador si)
	(Para_portatil Si)
	(Precio 150.0))

([ia04052q-prot_Instance_20008] of  Teclado

	(Conector USB)
	(Fabricante "generico")
	(Precio 30.0))

([ia04052q-prot_Instance_20009] of  Raton

	(Conector USB)
	(Fabricante "generico")
	(Para_portatil Si)
	(Precio 30.0)
	(Tipo_raton optico))

([ia04052q-prot_Instance_20010] of  CDROM

	(Conector IDE)
	(Fabricante "generico")
	(Grabador si)
	(Para_portatil Si)
	(Precio 50.0))

([ia04052q-prot_Instance_20011] of  CDROM

	(Conector IDE)
	(Fabricante "Sony")
	(Grabador si)
	(Para_portatil No)
	(Precio 40.0))

([ia04052q-prot_Instance_20012] of  CDROM

	(Conector IDE)
	(Fabricante "generico")
	(Grabador no)
	(Para_portatil Si)
	(Precio 30.0))

([ia04052q-prot_Instance_20013] of  Tarjeta_sonido

	(Fabricante "generico")
	(Precio 70.0))

([ia04052q-prot_Instance_20014] of  Tarjeta_video

	(Fabricante "ATI-mobile")
	(Memoria_Video 32Mb)
	(Para_portatil Si)
	(Precio 100.0))

([ia04052q-prot_Instance_20015] of  Tarjeta_video

	(Fabricante "ATI-mobile")
	(Memoria_Video 64Mb)
	(Para_portatil Si)
	(Precio 150.0))

([ia04052q-prot_Instance_20016] of  Monitor

	(Fabricante "Sony")
	(Para_portatil No)
	(Precio 1000.0)
	(Pulgadas 21p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_20017] of  Monitor

	(Fabricante "Sony")
	(Para_portatil No)
	(Precio 300.0)
	(Pulgadas 17p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_20018] of  Monitor

	(Fabricante "Sony")
	(Para_portatil No)
	(Precio 250.0)
	(Pulgadas 15p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_20019] of  Modem

	(Conector PCI)
	(Fabricante "generico")
	(Precio 20.0))

([ia04052q-prot_Instance_20020] of  Tarjeta_red

	(Conector PCMCIA)
	(Fabricante "generico")
	(Precio 50.0)
	(Tipo_red Ethernet))

([ia04052q-prot_Instance_20021] of  Modem_ADSL

	(Conector USB)
	(Fabricante "generico")
	(Precio 50.0))

([ia04052q-prot_Instance_20022] of  Router

	(Fabricante "generico")
	(Num_puertos 4)
	(Precio 100.0))

([ia04052q-prot_Instance_20023] of  Placa_base

	(Conectores_IDE 2)
	(Conectores_Serial_ATA 1)
	(Fabricante "generico")
	(Para_portatil Si)
	(Precio 200.0)
	(Puertos_Firewire 0)
	(Puertos_USB 2)
	(Slots_AGP 1)
	(Slots_PCI 2))

([ia04052q-prot_Instance_3] of  Disco_duro

	(Capacidad 40Gb)
	(Conector IDE)
	(Fabricante "Seagate")
	(Para_portatil Si)
	(Precio 200.0))

([ia04052q-prot_Instance_37] of  CPU_domestico

	(Fabricante "Intel")
	(Frecuencia 2.8)
	(Modelo "Pentium")
	(Precio 250.0))

([ia04052q-prot_Instance_38] of  CPU_domestico

	(Fabricante "Intel")
	(Frecuencia 3.0)
	(Modelo "Pentium")
	(Precio 500.0))

([ia04052q-prot_Instance_39] of  CPU_domestico

	(Fabricante "intel")
	(Frecuencia 3.2)
	(Modelo "Pentium")
	(Precio 750.0))

([ia04052q-prot_Instance_41] of  CPU_servidor

	(Fabricante "Intel")
	(Frecuencia 3.4)
	(Modelo "Pentium Xeon")
	(Precio 1200.0))

([ia04052q-prot_Instance_42] of  CPU_servidor

	(Fabricante "Intel")
	(Frecuencia 3.2)
	(Modelo "Pentium Xeon")
	(Precio 1000.0))

([ia04052q-prot_Instance_43] of  CPU_servidor

	(Fabricante "Intel")
	(Frecuencia 3.6)
	(Modelo "Pentium Xeon")
	(Precio 1600.0))

([ia04052q-prot_Instance_44] of  CPU_domestico

	(Fabricante "AMD")
	(Frecuencia 2.8)
	(Modelo "Athlon")
	(Precio 100.0))

([ia04052q-prot_Instance_45] of  CPU_domestico

	(Fabricante "AMD")
	(Frecuencia 3.0)
	(Modelo "Athlon")
	(Precio 200.0))

([ia04052q-prot_Instance_46] of  CPU_domestico

	(Fabricante "AMD")
	(Frecuencia 3.2)
	(Modelo "Athlon")
	(Precio 300.0))

([ia04052q-prot_Instance_47] of  CPU_servidor

	(Fabricante "AMD")
	(Frecuencia 3.2)
	(Modelo "Opteron")
	(Precio 600.0))

([ia04052q-prot_Instance_48] of  CPU_servidor

	(Fabricante "AMD")
	(Frecuencia 3.4)
	(Modelo "Opteron")
	(Precio 800.0))

([ia04052q-prot_Instance_49] of  CPU_servidor

	(Fabricante "AMD")
	(Frecuencia 3.6)
	(Modelo "Opteron")
	(Precio 1000.0))

([ia04052q-prot_Instance_51] of  Placa_base

	(Conectores_IDE 1)
	(Conectores_Serial_ATA 2)
	(Fabricante "ASUS")
	(Para_portatil No)
	(Precio 100.0)
	(Puertos_Firewire 0)
	(Puertos_USB 8)
	(Slots_AGP 1)
	(Slots_PCI 3))

([ia04052q-prot_Instance_52] of  Monitor

	(Fabricante "Sony")
	(Para_portatil No)
	(Precio 500.0)
	(Pulgadas 19p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_53] of  Monitor

	(Fabricante "LG")
	(Para_portatil No)
	(Precio 200.0)
	(Pulgadas 15p)
	(Tipo_monitor LCD))

([ia04052q-prot_Instance_54] of  Tarjeta_video

	(Fabricante "nVidia")
	(Memoria_Video 128Mb)
	(Para_portatil No)
	(Precio 150.0))

([ia04052q-prot_Instance_55] of  Tarjeta_video

	(Fabricante "nVidia")
	(Memoria_Video 64Mb)
	(Para_portatil No)
	(Precio 100.0))

([ia04052q-prot_Instance_56] of  Tarjeta_video

	(Fabricante "ATI")
	(Memoria_Video 64Mb)
	(Para_portatil No)
	(Precio 75.0))

([ia04052q-prot_Instance_57] of  Tarjeta_video

	(Fabricante "ATI")
	(Memoria_Video 128Mb)
	(Para_portatil No)
	(Precio 100.0))

([ia04052q-prot_Instance_58] of  Tarjeta_sonido

	(Fabricante "Creative")
	(Precio 50.0))

([ia04052q-prot_Instance_59] of  DVD

	(Conector IDE)
	(Fabricante "LG")
	(Grabador no)
	(Para_portatil No)
	(Precio 25.0))

([ia04052q-prot_Instance_60] of  DVD

	(Conector IDE)
	(Fabricante "LG")
	(Grabador si)
	(Para_portatil No)
	(Precio 75.0))

([ia04052q-prot_Instance_61] of  Disco_flexible

	(Fabricante "generico")
	(Para_portatil No)
	(Precio 15.0))

([ia04052q-prot_Instance_62] of  Disco_duro

	(Capacidad 160Gb)
	(Conector Serial_ATA)
	(Fabricante "Seagate")
	(Para_portatil No)
	(Precio 100.0))

([ia04052q-prot_Instance_63] of  Disco_duro

	(Capacidad 80Gb)
	(Conector IDE)
	(Fabricante "Seagate")
	(Para_portatil Si)
	(Precio 60.0))

([ia04052q-prot_Instance_100] of  Disco_duro

	(Capacidad 80Gb)
	(Conector IDE)
	(Fabricante "Seagate")
	(Para_portatil No)
	(Precio 40.0))
	
([ia04052q-prot_Instance_64] of  Linux

	(Distribucion "RedHat Enterprise")
	(Precio 100.0))

([ia04052q-prot_Instance_68] of  Linux

	(Distribucion "Debian")
	(Precio 5.0))

([ia04052q-prot_Instance_69] of  Linux

	(Distribucion "Mandrake")
	(Precio 50.0))

([ia04052q-prot_Instance_70] of  Linux

	(Distribucion "Fedora Core")
	(Precio 0.0))

([ia04052q-prot_Instance_71] of  Linux

	(Distribucion "Suse")
	(Precio 50.0))

([ia04052q-prot_Instance_72] of  Altavoces

	(Fabricante "generico")
	(Precio 10.0))

([ia04052q-prot_Instance_73] of  Impresora

	(Conector USB)
	(Fabricante "HP")
	(Precio 300.0)
	(Tipo_impresora Laser))

([ia04052q-prot_Instance_74] of  Impresora

	(Conector USB)
	(Fabricante "Canon")
	(Precio 120.0)
	(Tipo_impresora Inyeccion))

([ia04052q-prot_Instance_75] of  Impresora

	(Conector USB)
	(Fabricante "Epson")
	(Precio 90.0)
	(Tipo_impresora Inyeccion))

([ia04052q-prot_Instance_76] of  Impresora

	(Conector USB)
	(Fabricante "HP")
	(Precio 100.0)
	(Tipo_impresora Inyeccion))

([ia04052q-prot_Instance_77] of  Tarjeta_red

	(Conector PCI)
	(Fabricante "generico")
	(Precio 25.0)
	(Tipo_red Ethernet))

([ia04052q-prot_Instance_78] of  Modem

	(Conector USB)
	(Fabricante "3com")
	(Precio 50.0))

([ia04052q-prot_Instance_79] of  Teclado

	(Conector inalambrico)
	(Fabricante "Microsoft")
	(Precio 90.0))

([ia04052q-prot_Instance_80] of  Scanner

	(Conector USB)
	(Fabricante "Canon")
	(Precio 60.0))

([ia04052q-prot_Instance_81] of  Disco_duro

	(Capacidad 20Gb)
	(Conector USB)
	(Fabricante "LG")
	(Para_portatil Si)
	(Precio 120.0))

([ia04052q-prot_Instance_87] of  CPU_portatil

	(Fabricante "Intel")
	(Frecuencia 2.6)
	(Modelo "Mobile")
	(Precio 100.0))

([ia04052q-prot_Instance_88] of  CPU_workstation

	(Fabricante "AMD")
	(Frecuencia 3.2)
	(Modelo "Athlon64")
	(Precio 200.0))

([ia04052q-prot_Instance_89] of  Router_ADSL

	(Conector inalambrico)
	(Fabricante "3Com")
	(Num_puertos 4)
	(Precio 90.0))

([ia04052q-prot_Instance_90] of  Raton

	(Conector inalambrico)
	(Fabricante "Microsoft")
	(Para_portatil No)
	(Precio 50.0)
	(Tipo_raton optico))

([ia04052q-prot_Instance_92] of  CDROM

	(Conector IDE)
	(Fabricante "Sony")
	(Grabador no)
	(Para_portatil No)
	(Precio 25.0))

([ia04052q-prot_Instance_93] of  Juegos

	(Precio 50.0)
	(Programa "Quake III")
	(Version Windows))

([ia04052q-prot_Instance_95] of  Ofimatica

	(Precio 300.0)
	(Programa "Microsoft Office")
	(Version Windows))

([ia04052q-prot_Instance_96] of  Disenyo_Grafico

	(Precio 600.0)
	(Programa "Photoshop")
	(Version Windows))

([ia04052q-prot_Instance_97] of  Base_de_Datos

	(Precio 3000.0)
	(Programa "Oracle 10i")
	(Version Windows Linux))

([ia04052q-prot_Instance_98] of  Base_de_Datos

	(Precio 0.0)
	(Programa "MySQL")
	(Version Windows Linux))

([ia04052q-prot_Instance_99] of  CPU_portatil

	(Fabricante "AMD")
	(Frecuencia 2.4)
	(Modelo "Mobile-Athlon")
	(Precio 60.0))

([SO_Windows] of  Windows

	(Distribucion "WinXP")
	(Precio 120.0))
)


;;; --- REGLAS
(defmodule MAIN (export ?ALL))

;;; ----------------
;;; Message handler para imprimir el resultado

;;; Recorre todos los elementos del slot que recibe como parametro
(deffunction imprime-todo (?v)
  (if (> (length$ ?v) 0) then
   (loop-for-count (?i 1 (length ?v))
     (send (nth$ ?i ?v) print)
	 (printout t crlf)
   )
 )
)

;;; Message handler especifico par portatiles
;;; Llama al message handler del padre y luego imprime 
;;; el slot bateria
(defmessage-handler Portatil imprime primary ()
  (call-next-handler)
  (printout t "Bateria: " crlf)
  (send ?self:Tipo_bateria print)
  (printout t crlf)
)

;;; Message handler para la clase PC, 
;;; imprime todos los slots de la clase
(defmessage-handler PC imprime primary ()
 (printout t "Procesador: " crlf)
 (send ?self:Procesador print)
 (printout t crlf) 
 (printout t "Placa Base: " crlf)
 (send ?self:Placa print)
 (printout t crlf) 
 (printout t "Memoria: " ?self:Memoria crlf crlf)
 (printout t "Software: " crlf)
 (imprime-todo ?self:Software)
 (printout t "Dispositivos de almacenamiento: " crlf)
 (imprime-todo ?self:Dispositivos_de_Almacenamiento)
 (printout t "Dispositivos de entrada: " crlf)
 (imprime-todo ?self:Dispositivos_de_Entrada)
 (printout t "Dispositivos de salida:" crlf)
 (imprime-todo ?self:Dispositivos_de_Salida)
 (printout t "Dispositivos de comunicacion: " crlf)
 (imprime-todo ?self:Dispositivos_de_Comunicacion)
)

;;; ----------------------------------------------------------
;;; Template del resultado
(deftemplate consejo "Lista de PCs que cumplen las caracteristicas deseadas"
  (slot PC)
)

;;;-----------------------------------
;;; Funciones para preguntar cosas 

;;; Obtiene una respuesta de entre un conjunto de respuestas posibles
(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
   )
   ?answer)

;;; Hace una pregunta a la que hay que responder si o no
(deffunction si-o-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE))

;;; ---------------------------------
;;; Otras funciones

;;; Halla la instancia con el minimo valor para un slot
;;; El primer parametro es la instancia
;;; El segundo parametro es el metodo que accede al slot
;;; El tercer parametro es el valor con el que inicializar la variable que busca
(deffunction minimum-slot (?li ?sl ?init)
 (bind ?min ?init)
 (loop-for-count (?i 1 (length ?li))
   (bind ?v (send (nth$ ?i ?li) ?sl))
   (if (< ?v ?min)
     then 
	  (bind ?min ?v)
	  (bind ?ins (nth$ ?i ?li))
	)
  )
 (return ?ins)
)

;;; Halla la instancia con el maximo valor para un slot
;;; El primer parametro es la instancia
;;; El segundo parametro es el metodo que accede al slot
;;; El tercer parametro es el valor con el que inicializar la variable que busca
(deffunction maximum-slot (?li ?sl ?init)
 (bind ?max ?init)
 (loop-for-count (?i 1 (length ?li))
   (bind ?v (send (nth$ ?i ?li) ?sl))
   (if (> ?v ?max)
     then 
	  (bind ?max ?v)
	  (bind ?ins (nth$ ?i ?li))
	)
  )
 (return ?ins)
)


;;;-----------------------
;;;---- REGLAS

(defrule presentacion "regla que presenta al sistema"
 (declare (salience 10))
  =>
  (printout t "------------------------------" crlf)
  (printout t "------ Sistema de Compra -----" crlf)
  (printout t "------------------------------" crlf)
  (printout t crlf)
  (focus preguntas-determinar-usuario )
)

(defrule resultado-consejo "Regla salida de consejo"
 (declare (salience 10))
 (consejo (PC ?r))
  =>
  (printout t "---------------------------------" crlf)
  (printout t "El PC que mejor se adapta a sus necesidades es: " crlf)
  (printout t crlf (class ?r) crlf crlf)
  (send ?r imprime)
  (printout t crlf)
  (halt)
)



;;; ----- Modulo Preguntas iniciales
;;; Hace un conjunto de preguntas que pretenden clasificar al usuario
;;; en cuatro categorias posibles (domestico, autonomo, pime y empresarial)
;;; Ademas recoge informacion particular de cada tipo
(defmodule preguntas-determinar-usuario "Modulo de preguntas tipo de usuario"
  (import MAIN ?ALL)
  (export ?ALL))
  
;;; Template que almacena el tipo de usuario
(deftemplate tipo-uso "tipo de uso del PC"
  (slot uso)
)

;;; Iniciamos el sistema con un tipo de uso desconocido
(deffacts tipo-usuario
 (tipo-uso (uso desconocido))
)


;;; Comprobamos si es un usario domestico
(defrule determinar-tipo-PC-1
 ?u <-(tipo-uso (uso desconocido))
=>
  (if  (si-o-no-p "Desea el PC para su uso particular? (s/n) ")
    then 
     (modify ?u (uso domestico))  	 
    else
     (if  (si-o-no-p "Desea el PC pasa su casa/familia? (s/n) ")
      then
      (modify ?u (uso domestico))
    )
  )
)

;;; Si es domestico nos interesa si necesita movilidad
;;; Si es domestico el las prestaciones del equipo no han de ser muy altas
(defrule determinar-tipo-PC-2
 (tipo-uso (uso domestico))
=>
  (if  (si-o-no-p "Tiene poco espacio para colocar su PC? (s/n) ")
    then 
    (if  (si-o-no-p "Desea poder mover su PC de ubicacion? (s/n) ")
      then
       (assert (movilidad))
    )
  )
  (assert (prestaciones bajas))
)

;;; Determinamos si es una Pyme
(defrule determinar-tipo-PC-3
  ?u <- (tipo-uso (uso desconocido))
=>
  (if  (si-o-no-p "Lo desea para su pequeño negocio? (s/n) ")
    then 
     (modify ?u (uso pyme))
 )
)

;;; Determinamos si es un autonomo o un profesional liberal
(defrule determinar-tipo-PC-4
  ?u <- (tipo-uso (uso desconocido))
=>
  (if  (si-o-no-p "Es un profesional liberal/autonomo? (s/n) ")
    then 
     (modify ?u (uso autonomo))
 )
)

;;; Si es una pyme no interesa saber la potencia que necesitan
(defrule determinar-tipo-PC-5
 (tipo-uso (uso pyme))
=>
  (if  (si-o-no-p "Necesita su PC solo para tareas de oficina/contabilidad? (s/n) ")
    then 
     (assert (prestaciones bajas))
    else
   (if  (si-o-no-p "Desea ademas usar programas especificos para la actividad de su empresa (diseño grafico, calculo de estructuras, ...)? (s/n) ")
    then 
     (assert (prestaciones altas))
    else
     (assert (prestaciones bajas))
  )
 )
)

;;; Determinamos si es un PC para una empresa grande
(defrule determinar-tipo-PC-6
  ?u <- (tipo-uso (uso desconocido))
=>
  (if  (si-o-no-p "Es el gestor de compras de una empresa grande? (s/n) ")
    then 
     (modify ?u (uso empresarial))
 )
)

;;; Si es una empresa queremos saber para que se usara el PC y con ello 
;;; determinamos su potencia
(defrule determinar-tipo-PC-7
 (tipo-uso (uso empresarial))
=>
  (if  (si-o-no-p "Desea un PC para las oficinas? (s/n) ")
    then 
     (assert (oficinas))
	 (assert (prestaciones bajas))
	else
	 (if (si-o-no-p "Lo desea para un empleado que necesita desplazarse? (s/n) ")
	 then
	 (assert (movilidad))
	 (assert (prestaciones bajas))
	 else
	 (if (si-o-no-p "Lo desea para tareas con altas necesidades (desarrollo de soft, diseño grafico, ...)? (s/n) ")
	  then
	  (assert (tareas-complejas))
	  (assert (prestaciones altas))
	  else
	  (if (si-o-no-p "Lo necesita para dar servicios (conectividad, bases de datos, servidor de aplicaciones, servidor de ficheros, ...)? (s/n) ")
       then 
	    (assert (servicios))
		(assert (prestaciones altas))
	  )
    ) 
   )
 )
)

;;; Si es un autonomo queremos saber si necesita movilidad y para que 
;;; quiere usar el PC
(defrule determinar-tipo-PC-8
 (tipo-uso (uso autonomo))
=>
  (if  (si-o-no-p "Su trabajo le obliga a desplazarse? (s/n) ")
    then 
     (assert (movilidad))
  )
  (if  (si-o-no-p "Lo desea para labores de edicion y contabilidad? (s/n) ")
    then 
     (assert (prestaciones bajas))
	 else
     (if  (si-o-no-p "Lo necesita para desarrollar su trabajo? (s/n) ")
      then 
     (assert (prestaciones altas))	 
	  else
	  (assert (prestaciones bajas))
    )
 )
)

;;; Saltamos al modulo de preguntas comunes
(defrule a-preguntas-comunes
 (declare (salience -1))
 =>
 (focus preguntas-comunes)
)


;;; Modulo de preguntas comunes
;;; Aqui se obtiene informacion comun a todas las recomendaciones
;;; Evidentemente las preguntas que hay aqui son bastante simples
;;; necesitareis añadir mas cosas si quereis dar consejos mejores
(defmodule preguntas-comunes "preguntas comunes a todos los usuarios"
 (import preguntas-determinar-usuario ?ALL)
 (export ?ALL)
)

;;; --- Sin identificar
;;; Si no hemos identificado al usuario no podemos hacer mucho
(defrule no-hay-consejo
 (declare (salience 20))
 (tipo-uso (uso desconocido))
 =>
  (printout t "---------------------------------" crlf)
  (printout t "Lo sentimos, pero la aplicacion no puede aconsejarle" crlf)
  (printout t crlf)
  (halt)
)

;;; Determinamos si quiere software libre o no
(defrule software-libre
 (declare (salience 10))
=>
  (if  (si-o-no-p "Es usted fan del software libre? (s/n) ")
    then 
     (assert (software-libre Si))
	else
     (assert (software-libre No))	 
  )
)

;;; Determinamos si el dinero es un impedimento
(defrule importancia-del-precio
 (declare (salience 10))
 (not (precio ?p))
 =>
 (if  (si-o-no-p "Es el precio importante? (s/n) ")
    then 
     (assert (precio Si))
    else
     (assert (precio No))
 )
)

;;; Desvio a modulo correspondiente
;;; En funcion de las preguntas que hagais y de los tipos de recomendaciones
;;; que hagais debereis añadir mas reglas

;;; --- Domesticos
(defrule a-modulo-domestico-1
 (tipo-uso (uso domestico))
 (not (movilidad))
 =>
(focus compra-de-domestico)
)

(defrule a-modulo-domestico-2
 (tipo-uso (uso pyme))
 (prestaciones bajas)
 =>
(focus compra-de-domestico)
)

;;; --- Portatiles

(defrule a-modulo-portatil-1
 (movilidad)
 =>
(focus compra-de-portatil)
)

;;; --- Workstations
(defrule a-modulo-oficina-workstation
 (not (movilidad))
 (prestaciones altas)
=>
(focus compra-de-oficina-workstation)
)


;;; --- Servidores
(defrule a-modulo-servidor
 (servicios)
=>
(focus compra-de-servidor)
)


;;;--------------------- PORTATILES
;;; Modulo de recomendacion de portatiles
;;; Estas preguntas son especificas para determinar las caracteristicas del
;;; portatil a recomendar

(defmodule compra-de-portatil "preguntas para determinar compra de portatiles"
 (import MAIN ?ALL)
 (import preguntas-determinar-usuario ?ALL)
 (import preguntas-comunes ?ALL)
 (export ?ALL)
 )

;;; Si el equipo es para uso domestico y va a estar siempre
;;; enchufado no importa la duracion de la bateria
(defrule domesticos-bateria
 (tipo-uso (uso domestico))
 =>
  (if  (si-o-no-p "El equipo va estar casi siempre enchufado? (s/n) ")
    then 
     (assert (duracion-bateria no-critico))
    else
     (assert (duracion-bateria critico))
 ) 
)

;;; Determinamos si quiere DVD
(defrule domesticos-DVD
 (tipo-uso (uso domestico))
 (precio No)
 =>
  (if  (si-o-no-p "Desea reproducir peliculas de DVD? (s/n) ")
    then 
     (assert (almacenamiento DVD))
    else
     (assert (almacenamiento CDROM))
 ) 
)

;;; Determinamos si quiere grabadora
(defrule grabadora 
 =>
   (if  (si-o-no-p "Desea hacer copias de seguridad en CD/DVD? (s/n) ")
    then 
     (assert (grabacion Si))
    else
     (assert (grabacion No))
 ) 
)

;;; Determinamos si le gustaria tener un raton externo
(defrule raton-externo
 =>
   (if  (si-o-no-p "Le es mas comodo usar un raton externo? (s/n) ")
    then 
     (assert (raton-externo Si))
    else
     (assert (raton-externo No))
 ) 
)

;;; Si el dinero es un problema decidimos poner componentes
;;; mas asequibles
(defrule todos-restriccion-de-precio
 (precio Si)
 =>
 (assert (almacenamiento CDROM))
 (assert (graficos bajo))
 (assert (memoria minimo))
)

;;; Si no son domesticos y no hay problema de dinero ponemos un DVD
;;; y una tarjeta grafica mejor
(defrule resto-DVD
 (tipo-uso (uso ~domestico))
 (precio No)
 =>
 (assert (almacenamiento DVD))
 (assert (graficos alto))
)

;;; Determinamos si le hace falta una aplicacion ofimatica
(defrule ofimatica
 =>
  (if  (si-o-no-p "Necesita una aplicacion ofimatica? (s/n) ")
    then 
     (assert (soft ofimatica))
 ) 
)

;;; Los usuarios no domesticos necesitan una buena bateria
(defrule resto-bateria
 (tipo-uso (uso ~domestico))
 =>
  (assert (duracion-bateria critico))
)

;;; Los usuarios domesticos y autonomos con poco dinero solo se
;;; podran conectar con modem
(defrule modem
 (precio Si)
 (tipo-uso (uso domestico|autonomo))
 =>
 (if  (si-o-no-p "Desea poder conectarse a internet? (s/n) ")
    then 
     (assert (comunicacion modem))
 )
)

;;; Los usuarios domesticos y autonomos con mas dinero pueden querer
;;; ADSL
(defrule ADSL
 (precio No)
 (tipo-uso (uso domestico|autonomo))
=>
  (if  (si-o-no-p "Desea poder conectarse a internet a alta velocidad? (s/n) ")
    then 
     (if  (si-o-no-p "Desea poder conectar otros equipos? (s/n) ")
       then 
       (assert (ADSL router))
	   else
	   (assert (ADSL modem))
     )
 )
)

;;; Los usuarios empresariales pueden querer conectarse a una red
(defrule WIFI-o-Ethernet
 (tipo-uso (uso empresarial))
 =>
  (if  (si-o-no-p "Desea poder conectar su equipo a una red? (s/n) ")
    then 
     (if  (si-o-no-p "Utilizara tecnologia inalambrica? (s/n) ")
       then 
       (assert (red WIFI))
	   else
	   (assert (red Ethernet))
     )
 )
)

;;; Determinamos las necesidades de almacenamiento de los usuarios no
;;; domesticos
(defrule no-domestico-almacenamiento-portatil
 (tipo-uso (uso ~domestico))
 (prestaciones altas)
=>
 (if  (si-o-no-p "Desea tener gran capacidad de almacenamiento? (s/n) ")
    then 
     (assert (almacenamiento-disco-duro alto))
    else
     (assert (almacenamiento-disco-duro bajo))
 )
 (if  (si-o-no-p "Desea tener almacenamiento portatil extra? (s/n) ")
    then 
     (assert (almacenamiento-externo Si))
 )
)

;;; Los usuarios domesticos o con pocas necesidades no necesitan mucha capacidad
;;; de almacenamiento
(defrule domestico-prestaciones-bajas-almacenamiento-portatil
 (or (tipo-uso (uso domestico))
    (prestaciones bajas))
=>
  (assert (almacenamiento-disco-duro bajo))
)

;;; Determinamos si importa el peso a los usuarios no domesticos
(defrule importancia-del-peso
 (tipo-uso (uso ~domestico))
 =>
 (if  (si-o-no-p "Le gustaria que el portatil tuviera poco peso? (s/n) ")
    then 
     (assert (peso Si))
    else
     (assert (peso No))
 )
)

;;; Cuando hemos acabado pasamos a configurar el equipo
(defrule todo-determinado
 (declare (salience -1))
 =>
 (focus configurar-portatil)
)
 
;;; Configuracion final del portatil con la informacion recolectada
(defmodule configurar-portatil "configuracion del portatil"
 (import MAIN ?ALL)
 (import compra-de-portatil ?ALL)
 (import preguntas-determinar-usuario ?ALL)
 (export ?ALL)
)

;;; Creamos la instancia sobre la que trabajaremos
(defrule crea-instancia-inicial
 (declare (salience 10))
 =>
 (make-instance [p] of Portatil)
)

;;; ----- Memoria
;;; Si el precio no importa entonces mas memoria
(defrule configura-memoria
 ?x <- (object (is-a Portatil))
 (precio ?p)
 =>
  (switch ?p
   (case No then (send ?x put-Memoria 512Mb))
   (case Si then (send ?x put-Memoria 256Mb))
 )
)

;;; ------ CPU
;;; Si el precio no importa entonces intel
;;; Si las prestaciones han de ser altas mas frecuencia de reloj
(defrule configura-CPU
 ?x <- (object (is-a Portatil))
 (precio ?p)
 (prestaciones ?pr)
 =>
 (if (eq ?p No) then 
   (bind ?cpu (find-all-instances ((?ins CPU_portatil)) (eq ?ins:Fabricante "Intel")))
   else
   (bind ?cpu (find-all-instances ((?ins CPU_portatil)) (eq ?ins:Fabricante "AMD")))
 )
 (if (eq ?pr altas) then
   (send ?x put-Procesador (maximum-slot ?cpu get-Frecuencia 0))
   else
   (send ?x put-Procesador (minimum-slot ?cpu get-Frecuencia 5))
 )
)

;;; ------ Bateria

;;; Configuramos la bateria
(defrule configura-bateria
 ?x <- (object (is-a Portatil))
 (duracion-bateria ?b)
 (precio ?p)
 =>
 ;;; Seleccionamos todas las baterias
 (bind ?bt (find-all-instances ((?ins Bateria)) TRUE))
 (switch ?b
   (case critico then 
    (switch ?p
     (case No then 
      ;;; Si no nos importa el dinero cogemos la que dure mas
      (send ?x put-Tipo_bateria (maximum-slot ?bt get-Duracion 0))
	 )
	 (case Si then 
	  ;;; Si nos importa el dinero cogemos una que dure entre 3 y 10 horas
	  (send ?x put-Tipo_bateria 
	    (find-instance ((?ins Bateria)) 
		   (and (> ?ins:Duracion 3) (< ?ins:Duracion 10))
		)
      )
	 )
    )
   )
   (case no-critico then 
    ;;; Si no nos importa la bateria cogemos la que dure menos
     (send ?x put-Tipo_bateria (minimum-slot ?bt get-Duracion 20))
   )
 )
)

;;; --------- Placa Base
;;; Cogemos cualquier placa base para portatiles
;;; Evidemente podriamos haber usado el precio o las
;;; prestaciones para decidir
(defrule placa-base-portatil
 ?x <- (object (is-a Portatil))
 =>
  (send ?x put-Placa
	    (find-instance ((?ins Placa_base)) (eq ?ins:Para_portatil Si)))

)

;;; ---------- Software
;;; Eleccion del software ofimatico
(defrule software-ofimatico
 ?x <- (object (is-a Portatil))
 (soft ofimatica)
 (software-libre ?sl)
 (precio ?p)
 =>
 ;;; Si se es fan del soft libre o se tiene poco dinero entonces OpenOffice
 (if (or (eq ?sl Si) (eq ?p Si)) then
   (slot-insert$ ?x  Software 1 (find-instance ((?ins Ofimatica)) (= ?ins:Precio 0)))
   else
    (slot-insert$ ?x  Software 1 (find-instance ((?ins Ofimatica)) (> ?ins:Precio 0)))
 )  
)

;;; Eleccion del sistema operativo
(defrule sistema-operativo
 ?x <- (object (is-a Portatil))
 (software-libre ?sl)
 (precio ?p)
 =>
 ;;; Si se es fan del soft libre o se tiene poco dinero entonces Linux
 (if (or (eq ?sl Si) (eq ?p Si)) then
   (slot-insert$ ?x  Software 1 (find-instance ((?ins Linux)) (= ?ins:Precio 0)))
   else
    (slot-insert$ ?x  Software 1 (find-instance ((?ins Windows)) (> ?ins:Precio 0)))
 )  
)

;;; -------- Dispositivos de salida

;;; Eleccion del monitor
(defrule monitor
  ?x <- (object (is-a Portatil))
 (peso ?ps)
 (precio ?p)
 =>
 ;;; Si se quiere poco peso o importa el precio 14p, si no 15p
 (if (or (eq ?ps Si) (eq ?p Si)) then
   (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Monitor)) 
	     (and (eq ?ins:Pulgadas 14p) (eq ?ins:Para_portatil Si))))
   else
    (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Monitor))
	     (and (eq ?ins:Pulgadas 15p) (eq ?ins:Para_portatil Si))))
 )
)

;;; Tarjeta de Video
(defrule tarjeta-grafica
  ?x <- (object (is-a Portatil))
 (graficos ?g)
 (precio ?p)
 =>
 ;;; Si las necesidades son bajas o hay poco dinero 32Mb, si no 64Mb
 (if (or (eq ?g bajo) (eq ?p Si)) then
   (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Tarjeta_video)) 
	     (and (eq ?ins:Memoria_Video 32Mb) (eq ?ins:Para_portatil Si))))
   else
    (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Tarjeta_video))
	     (and (eq ?ins:Memoria_Video 64Mb) (eq ?ins:Para_portatil Si))))
 )
)


;;; -------- Dispositivos de almacenamiento

;;; Almacenamiento para portatiles
;;; Si las necesidades son grandes 80Gb, si no 40Gb
;;; si importa el precio entonces el disco mas barato
(defrule almacenamiento
  ?x <- (object (is-a Portatil))
 (almacenamiento-disco-duro ?al)
 (precio ?p)
 =>
 (switch ?al
  (case alto then (bind ?c 80Gb))
  (case bajo then (bind ?c 40Gb))
 )
 (bind ?hd (find-all-instances ((?ins Disco_duro)) 
	 (and (eq ?ins:Conector IDE) (eq ?ins:Para_portatil Si) (eq ?ins:Capacidad ?c))))
 (if (eq ?p No) then
    (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (maximum-slot ?hd get-Precio 0))
     else
	(slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (minimum-slot ?hd get-Precio 1000))
 )
)

;;; Discos USB extra
;;; Si importa el precio entonces el mas barato
(defrule almacenamiento-externo
  ?x <- (object (is-a Portatil))
  (almacenamiento-externo Si)
  (precio ?p)
  =>
  (bind ?hd (find-all-instances ((?ins Disco_duro)) (eq ?ins:Conector USB)))
   (if (eq ?p No) then
    (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (maximum-slot ?hd get-Precio 0))
     else
	(slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (minimum-slot ?hd get-Precio 1000))
 )
)

;;; Elegimos un DVD o un CDROM
;;; La regla elige cualquiera, pero se pueden imponer mas condiciones
(defrule CDROM-o-DVD
  ?x <- (object (is-a Portatil))
  (almacenamiento ?al)
  (grabacion ?g)
  =>
   (if (eq ?al DVD) then
    (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
	    (find-instance ((?ins DVD)) (eq ?ins:Grabador ?g))
	)
     else
	(slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
    	(find-instance ((?ins CDROM)) (eq ?ins:Grabador ?g))
	)
 )

)

;;; Escogemos una disquetera si no nos importa el peso
(defrule configura-disquetera
 ?x <- (object (is-a Portatil))
 (peso No)
 =>
 (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
   (find-instance ((?ins Disco_flexible)) (eq ?ins:Para_portatil Si)))
)

;;; ------- Dispositivos de entrada
;;; Si se prefiere un raton externo le ponemos un raton para portatil
(defrule configura-raton-externo
 ?x <- (object (is-a Portatil))
 (raton-externo Si)
 =>
 (slot-insert$ ?x  Dispositivos_de_Entrada 1 
   (find-instance ((?ins Raton)) (eq ?ins:Para_portatil Si)))
)

;;; -------- Comunicaciones
;;; Tarjeta de red PCMCIA, ethernet o WiFi
(defrule configura-tarjeta-red
 ?x <- (object (is-a Portatil))
 (red ?r)
 =>
 (switch ?r
  (case WIFI then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Tarjeta_red)) 
	     (and (eq ?ins:Conector PCMCIA) (eq ?ins:Tipo_red WiFi)))))
  (case Ethernet then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Tarjeta_red)) 
	     (and (eq ?ins:Conector PCMCIA) (eq ?ins:Tipo_red Ethernet)))))		 
 )
)

;;; ADSL router o modem
(defrule configura-ADSL
 ?x <- (object (is-a Portatil))
 (ADSL ?r)
 =>
 (switch ?r
  (case router then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Router_ADSL)) TRUE)))
  (case modem then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Modem_ADSL)) TRUE)))
 )
)

;;; Modem PCMCIA
(defrule configura-modem
 ?x <- (object (is-a Portatil))
 (comunicacion modem)
 =>
  (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Modem)) (eq ?ins:Conector PCMCIA)))
)


;;; ------------

;;; Crea el template consejo con la solucion
(defrule solucion-portatil
 (declare (salience -1))
 ?x <- (object (is-a Portatil))
 =>
 (assert (consejo (PC ?x)))
)

;;;--------------------- DOMESTICOS
;;; Modulo de recomendacion de ordenadores domesticos
;;; Estas preguntas son especificas para determinar las caracteristicas del
;;; ordenador domestico a recomendar

(defmodule compra-de-domestico "preguntas para determinar compra de ordenadores domesticos"
 (import MAIN ?ALL)
 (import preguntas-determinar-usuario ?ALL)
 (import preguntas-comunes ?ALL)
 (export ?ALL)
 )

;;; Determinamos si quiere DVD
(defrule domesticos-DVD
 (tipo-uso (uso domestico))
 (precio No)
 =>
  (if  (si-o-no-p "Desea reproducir peliculas de DVD? (s/n) ")
    then 
     (assert (almacenamiento DVD))
    else
     (assert (almacenamiento CDROM))
 ) 
)

;;; Determinamos si quiere DVD
(defrule domesticos-DVD
 (tipo-uso (uso domestico))
 (precio No)
 =>
  (if  (si-o-no-p "Desea jugar a juegos de ultima generacion? (s/n) ")
    then 
     (assert (graficos alto))
    else
     (assert (graficos bajo))
 ) 
)

;;; Determinamos si quiere grabadora
(defrule grabadora 
 =>
   (if  (si-o-no-p "Desea hacer copias de seguridad en CD/DVD? (s/n) ")
    then 
     (assert (grabacion Si))
    else
     (assert (grabacion No))
 ) 
)

;;; Si el dinero es un problema decidimos poner componentes
;;; mas asequibles
(defrule todos-restriccion-de-precio
 (precio Si)
 =>
 (assert (almacenamiento CDROM))
 (assert (graficos bajo))
 (assert (memoria minimo))
)

;;; Los usuarios domesticos y autonomos con poco dinero solo se
;;; podran conectar con modem
(defrule modem
 (precio Si)
 (tipo-uso (uso domestico|autonomo))
 =>
 (if  (si-o-no-p "Desea poder conectarse a internet? (s/n) ")
    then 
     (assert (comunicacion modem))
 )
)

;;; Los usuarios domesticos y autonomos con mas dinero pueden querer
;;; ADSL
(defrule ADSL-1
 (precio No)
 (tipo-uso (uso domestico|autonomo))
=>
  (if  (si-o-no-p "Desea poder conectarse a internet a alta velocidad? (s/n) ")
    then 
     (if  (si-o-no-p "Desea poder conectar otros equipos? (s/n) ")
       then 
       (assert (ADSL router))
	   else
	   (assert (ADSL modem))
     )
 )
)

;;; Los usuarios pyme necesitan ADSL
(defrule ADSL-2
 (tipo-uso (uso pyme))
=>
  (if  (si-o-no-p "Desea poder conectarse a internet a alta velocidad? (s/n) ")
    then 
     (if  (si-o-no-p "Desea poder conectar otros equipos? (s/n) ")
       then 
       (assert (ADSL router))
	   else
	   (assert (ADSL modem))
     )
 )
)

;;; Determinamos si le hace falta una aplicacion ofimatica
(defrule ofimatica
 =>
  (if  (si-o-no-p "Necesita una aplicacion ofimatica? (s/n) ")
    then 
     (assert (soft ofimatica))
 ) 
)


;;; Determinamos si le hace falta una aplicacion de contabilidad
;;; si es un usuario no domestico
(defrule contabilidad
 (tipo-uso (uso ~domestico))
 =>
  (if  (si-o-no-p "Necesita una aplicacion de contabilidad? (s/n) ")
    then 
     (assert (soft contabilidad))
 ) 
)


;;; Los usuarios domesticos o con pocas necesidades no necesitan mucha capacidad
;;; de almacenamiento
(defrule domestico-prestaciones-bajas-almacenamiento
 (or (tipo-uso (uso domestico))
    (prestaciones bajas))
=>
  (assert (almacenamiento-disco-duro bajo))
)

;;; Determinamos las necesidades de almacenamiento de los usuarios no
;;; domesticos
(defrule no-domestico-almacenamiento
 (tipo-uso (uso ~domestico))
 (prestaciones altas)
=>
 (if  (si-o-no-p "Desea tener gran capacidad de almacenamiento? (s/n) ")
    then 
     (assert (almacenamiento-disco-duro alto))
    else
     (assert (almacenamiento-disco-duro bajo))
 )
 (if  (si-o-no-p "Desea tener almacenamiento portatil extra? (s/n) ")
    then 
     (assert (almacenamiento-externo Si))
 )
)

;;; Cuando hemos acabado pasamos a configurar el equipo
(defrule todo-determinado
 (declare (salience -1))
 =>
 (focus configurar-domestico)
)

;;; Configuracion final del ordenador domestico con la informacion recolectada
(defmodule configurar-domestico "configuracion del ordenador domestico"
 (import MAIN ?ALL)
 (import compra-de-domestico ?ALL)
 (import preguntas-determinar-usuario ?ALL)
 (export ?ALL)
)

;;; Creamos la instancia sobre la que trabajaremos
(defrule crea-instancia-inicial
 (declare (salience 10))
 =>
 (make-instance [p] of Domestico)
)

;;; ----- Memoria
;;; Si el precio no importa entonces mas memoria
(defrule configura-memoria
 ?x <- (object (is-a Domestico))
 (precio ?p)
 =>
  (switch ?p
   (case No then (send ?x put-Memoria 512Mb))
   (case Si then (send ?x put-Memoria 256Mb))
 )
)

;;; ------ CPU
;;; Si el precio no importa entonces intel
;;; Si las prestaciones han de ser altas mas frecuencia de reloj
(defrule configura-CPU
 ?x <- (object (is-a Domestico))
 (precio ?p)
 (prestaciones ?pr)
 =>
 (if (eq ?p No) then 
   (bind ?cpu (find-all-instances ((?ins CPU_domestico)) (eq ?ins:Fabricante "Intel")))
   else
   (bind ?cpu (find-all-instances ((?ins CPU_domestico)) (eq ?ins:Fabricante "AMD")))
 )
 (if (eq ?pr altas) then
   (send ?x put-Procesador (maximum-slot ?cpu get-Frecuencia 0))
   else
   (send ?x put-Procesador (minimum-slot ?cpu get-Frecuencia 5))
 )
)



;;; --------- Placa Base
;;; Cogemos cualquier placa base para portatiles
;;; Evidemente podriamos haber usado el precio o las
;;; prestaciones para decidir
(defrule placa-base-portatil
 ?x <- (object (is-a Domestico))
 =>
  (send ?x put-Placa
	    (find-instance ((?ins Placa_base)) (eq ?ins:Para_portatil No)))

)

;;; ---------- Software
;;; Eleccion del software ofimatico
(defrule software-ofimatico
 ?x <- (object (is-a Domestico))
 (soft ofimatica)
 (software-libre ?sl)
 (precio ?p)
 =>
 ;;; Si se es fan del soft libre o se tiene poco dinero entonces OpenOffice
 (if (or (eq ?sl Si) (eq ?p Si)) then
   (slot-insert$ ?x  Software 1 (find-instance ((?ins Ofimatica)) (= ?ins:Precio 0)))
   else
    (slot-insert$ ?x  Software 1 (find-instance ((?ins Ofimatica)) (> ?ins:Precio 0)))
 )  
)

;;; Eleccion del sistema operativo
(defrule sistema-operativo
 ?x <- (object (is-a Domestico))
 (software-libre ?sl)
 (precio ?p)
 (uso ?u)
 =>
 (if (eq ?u pyme) then ;;; Las pymes pueden usar linux
  ;;; Si se es fan del soft libre o se tiene poco dinero entonces Linux
  (if (or (eq ?sl Si) (eq ?p Si)) then
    (slot-insert$ ?x  Software 1 (find-instance ((?ins Linux)) (= ?ins:Precio 0)))
    else
     (slot-insert$ ?x  Software 1 (find-instance ((?ins Windows)) (> ?ins:Precio 0)))
  )
 else ;;; Los usuarios domesticos solo usan Windows
  (slot-insert$ ?x  Software 1 (find-instance ((?ins Windows)) (> ?ins:Precio 0)))
 ) 
)

;;; -------- Dispositivos de salida

;;; Eleccion del monitor
(defrule monitor
  ?x <- (object (is-a Domestico))
 (precio ?p)
 =>
 ;;; Si importa el precio 15p, si no 17p
 (if (eq ?p Si) then
   (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Monitor)) 
	     (and (eq ?ins:Pulgadas 15p) (eq ?ins:Para_portatil No))))
   else
    (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Monitor))
	     (and (eq ?ins:Pulgadas 17p) (eq ?ins:Para_portatil No))))
 )
)

;;; Tarjeta de Video
(defrule tarjeta-grafica
  ?x <- (object (is-a Domestico))
 (graficos ?g)
 (precio ?p)
 =>
 ;;; Si las necesidades son bajas o hay poco dinero 32Mb, si no 64Mb
 (if (or (eq ?g bajo) (eq ?p Si)) then
   (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Tarjeta_video)) 
	     (and (eq ?ins:Memoria_Video 32Mb) (eq ?ins:Para_portatil No))))
   else
    (slot-insert$ ?x  Dispositivos_de_Salida 1 
     (find-instance ((?ins Tarjeta_video))
	     (and (eq ?ins:Memoria_Video 64Mb) (eq ?ins:Para_portatil No))))
 )
)


;;; -------- Dispositivos de almacenamiento

;;; Almacenamiento para domesticos
;;; Si las necesidades son grandes 200Gb, si no 80Gb
;;; si importa el precio entonces el disco mas barato
(defrule almacenamiento
  ?x <- (object (is-a Domestico))
 (almacenamiento-disco-duro ?al)
 (precio ?p)
 =>
 (switch ?al
  (case alto then (bind ?c 200Gb))
  (case bajo then (bind ?c 80Gb))
 )
 (bind ?hd (find-all-instances ((?ins Disco_duro)) 
	 (and (eq ?ins:Conector IDE) (eq ?ins:Para_portatil No) (eq ?ins:Capacidad ?c))))
 (if (eq ?p No) then
    (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (maximum-slot ?hd get-Precio 0))
     else
	(slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 (minimum-slot ?hd get-Precio 1000))
 )
)


;;; Elegimos un DVD o un CDROM
;;; La regla elige cualquiera, pero se pueden imponer mas condiciones
(defrule CDROM-o-DVD
  ?x <- (object (is-a Domestico))
  (almacenamiento ?al)
  (grabacion ?g)
  =>
   (if (eq ?al DVD) then
    (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
	    (find-instance ((?ins DVD)) (eq ?ins:Grabador ?g))
	)
     else
	(slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
    	(find-instance ((?ins CDROM)) (eq ?ins:Grabador ?g))
	)
 )

)

;;; Escogemos una disquetera 
(defrule configura-disquetera
 ?x <- (object (is-a Domestico))
 (almacenamiento disquetera)
 =>
 (slot-insert$ ?x  Dispositivos_de_Almacenamiento 1 
   (find-instance ((?ins Disco_flexible)) (eq ?ins:Para_portatil No)))
)


;;; -------- Comunicaciones
;;; Tarjeta de red PCMCIA, ethernet o WiFi
(defrule configura-tarjeta-red
 ?x <- (object (is-a Domestico))
 (red ?r)
 =>
 (switch ?r
  (case WIFI then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Tarjeta_red)) 
	     (and (eq ?ins:Conector PCI) (eq ?ins:Tipo_red WiFi)))))
  (case Ethernet then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Tarjeta_red)) 
	     (and (eq ?ins:Conector PCI) (eq ?ins:Tipo_red Ethernet)))))		 
 )
)

;;; ADSL router o modem
(defrule configura-ADSL
 ?x <- (object (is-a Domestico))
 (ADSL ?r)
 =>
 (switch ?r
  (case router then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Router_ADSL)) TRUE)))
  (case modem then
    (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Modem_ADSL)) TRUE)))
 )
)

;;; Modem
(defrule configura-modem
 ?x <- (object (is-a Domestico))
 (comunicacion modem)
 =>
  (slot-insert$ ?x  Dispositivos_de_Comunicacion 1 
      (find-instance ((?ins Modem)) (eq ?ins:Conector USB)))
)


;;; ------------

;;; Crea el template consejo con la solucion
(defrule solucion-domestico
 (declare (salience -1))
 ?x <- (object (is-a Domestico))
 =>
 (assert (consejo (PC ?x)))
)
