<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h1>
            <xsl:value-of select="/pokeDAW/pokemon/nombre"/>
        </h1>  
            <h3>Tipo=<xsl:value-of select="/pokeDAW/pokemon/@tipo"/></h3>
        <xsl:if test="/pokeDAW/pokemon/@tipo='planta'">
        <p>Este pokemon es de tipo planta</p>
        </xsl:if>
        <xsl:if test="/pokeDAW/pokemon/estado/nivel=5">
        <p>Este pokemon tien un nivel igual a 5</p>
        </xsl:if>
        <xsl:if test="/pokeDAW/pokemon/estado/nivel &gt;='5'">
        <p>Este pokemon tien un nivel mayor a 5</p>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>

