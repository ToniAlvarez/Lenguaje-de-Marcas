"Coches azules de metalizados de cordoba",
 doc("concesionario_cordoba.xml")/concesionario/coche[color="Azul" and color/@metalizado="S"]/marca/text(),
 "Coches azules metalizados de malaga",
 doc("concesionario_malaga.xml")/concesionario/coche[color="Azul" and color/@metalizado="S"]/marca/text(),
 "Coches azules metalizados de Cordoba y malaga",
 /concesionario/coche[color="Azul" and color/@metalizado="S"]/marca/text()
 