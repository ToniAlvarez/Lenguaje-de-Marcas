<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
   
   <xsl:output method="xml" omit-xml-declaration="no" indent="yes"/> 
   
   <xsl:template match="/">
      <xsl:element name="mis_pokemon">
         <xsl:element name="pokemon">
            <xsl:element name="bicho">
               <xsl:value-of select="/pokeDAW/pokemon/nombre"/>
            </xsl:element>
            <xsl:element name="tipo">
               <xsl:value-of select="/pokeDAW/pokemon/@tipo"/>
            </xsl:element>
            <xsl:element name="fase">
               <xsl:attribute name="fuerza">
                  <xsl:value-of select="/pokeDAW/pokemon/estado/fuerza" />
               </xsl:attribute>    
               <xsl:value-of select="/pokeDAW/pokemon/estado/faseEvolucion"/>
            </xsl:element>
              </xsl:element>
      </xsl:element>
      </xsl:template>
</xsl:stylesheet>

