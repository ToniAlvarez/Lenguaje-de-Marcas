<?xml version="1.0" encoding="UTF-8"?>
<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                         xmlns:xs="http://www.w3.org/2001/XMLSchema"
                         xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                         xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                         xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                         name="package-uri"
                         package-version="1.0"
                         exclude-result-prefixes="#all"
                         expand-text="yes"
                         version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:mode name="unnamed" />
    <xsl:template match="/*">
        <html> 
        <body>
        <h1>Estado del Concesionario</h1>
        <!-- barra de separacion -->
        <h2>Tenemos un total de 6 vehiculos</h2>
        <h2>Valorados en 122000 Euros (SIN IVA)</h2>
        <!-- barra de separacion -->
        <h2>Lista de vehículos ordenados por marca</h2>
        <table>
            <tr>
            <th style="color:green">Marca</th>
            <th style="color:green">Matricula</th>
            <th style="color:green">Metalizado</th>
            </tr>
            <tr>
            <td><xsl:value-of select="marca"/></td>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="metalizado"/></td>
            </tr>
        </table>
        </body>
        </html>
    </xsl:template>
</xsl:package>

<!--java -jar saxon-he-12.4.jar -s:concesionario.xml -xsl:concesionario.xslt -o:examen.html  

Por supuesto, vamos a solucionar el problema. Parece que el comando no puede encontrar el archivo JAR de Saxon-HE. Aquí hay algunos pasos para solucionarlo:

1. **Verificar la ubicación del archivo JAR:** Asegúrate de que el archivo JAR de Saxon-HE (`saxon-he-12.4.jar`) esté en la misma carpeta desde la que estás ejecutando el comando.
 Si no está ahí, cámbiate a la ubicación correcta o especifica la ruta completa al archivo JAR en el comando.

2. **Corregir el comando:** Asegúrate de que el nombre del archivo JAR esté escrito correctamente en el comando. También, asegúrate de que el comando esté usando la ruta correcta al
 archivo JAR. Por ejemplo, si el archivo JAR está en la misma carpeta desde la que estás ejecutando el comando, el comando debería ser algo así:

   ```
   java -jar saxon-he-12.4.jar -s:concesionario.xml -xsl:concesionario.xslt -o:examen.html
   ```

3. **Verificar la instalación de Java:** Asegúrate de que Java esté instalado correctamente en tu sistema y que el comando `java` esté disponible en tu terminal.

4. **Permisos de archivo:** Asegúrate de que tengas permiso para acceder y ejecutar el archivo JAR. Si estás trabajando en un sistema operativo que requiere permisos de administrador,
 intenta ejecutar el comando con permisos de administrador.

Prueba estos pasos y avísame si necesitas más ayuda.


-->
