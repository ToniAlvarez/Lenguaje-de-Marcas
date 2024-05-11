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
        <xsl:apply-templates/>
    </xsl:template>

    <!-- java -jar saxon-he.12.4.jar -s:pokemon.xml -xsl:prueba-.xslt -o:prueba.html
    PS C:\Users\MEDAC\Desktop\pruebaXSLT> java -jar .\explicacion\saxon-he-12.4.jar -s:.\explicacion\pokemon.xml -xsl:.\explicacion\pokemon.xslt -o:.\explicacion\prueba.html
     -->
</xsl:package>


<!-- 
&lt; - Menor que <
&gt; - Mayor que >
&amp; - Ampersand &
&quot; - Comillas dobles "
&apos; - Apóstrofe ' 





La función sort en XSLT se utiliza para ordenar elementos o nodos en un documento XML según ciertos criterios. Esto es útil cuando necesitas presentar los datos en un orden específico dentro de tu salida HTML o XML.

La sintaxis básica para utilizar la función sort en XSLT es la siguiente:

xml
Copy code
<xsl:for-each select="elementos">
  <xsl:sort select="criterio" order="asc|desc"/>
  <!-- Aquí va el contenido que se va a procesar -->
</xsl:for-each>
Donde:

elementos es la expresión XPath que selecciona los elementos que se van a ordenar.
criterio es la expresión XPath que especifica el criterio de ordenación.
order especifica el orden en el que se deben ordenar los elementos, ya sea ascendente (asc) o descendente (desc).
Por ejemplo, supongamos que tienes un documento XML con una lista de libros y quieres ordenarlos por su título de forma ascendente:

xml
Copy code
<libros>
  <libro>
    <titulo>El Gran Gatsby</titulo>
    <autor>F. Scott Fitzgerald</autor>
  </libro>
  <libro>
    <titulo>Cien años de soledad</titulo>
    <autor>Gabriel García Márquez</autor>
  </libro>
  <!-- Otros libros -->
</libros>
Podrías utilizar xsl:sort para ordenar los libros por título de la siguiente manera:

xml
Copy code
<xsl:for-each select="libro">
  <xsl:sort select="titulo" order="asc"/>
  <!-- Aquí va el contenido que se va a procesar, como la generación de HTML para cada libro -->
</xsl:for-each>
Esto producirá una salida donde los libros se presentarán en orden alfabético ascendente según su título.

En resumen, sort en XSLT te permite controlar el orden en el que se procesan y presentan los elementos de tu XML, lo que es útil para generar resultados ordenados de manera específica.




-->

