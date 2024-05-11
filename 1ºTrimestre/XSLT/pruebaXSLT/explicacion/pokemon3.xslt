<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h2>Tenemos un total de <xsl:value-of select="count(//pokemon)"/> pokemons </h2>
        <xsl:for-each select="/pokeDAW/pokemon">
            <!-- <xsl:sort select="@tipo"/>  -->
            <h1> <xsl:value-of select="nombre"/> </h1>  
            <h3>Tipo=<xsl:value-of select="@tipo"/></h3>
            <xsl:choose>
                <xsl:when test="estado/fuerza &gt; 7">
                    <p>pokemon fuerte</p>
                </xsl:when>
                <xsl:when test="estado/fuerza &lt; 5">
                    <p>pokemon debil</p>
                </xsl:when>
                <xsl:otherwise>
                    <p>pokemon normal</p>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

