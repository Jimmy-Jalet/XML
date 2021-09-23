<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : JeuxOlympiques.xsl
    Created on : 23 septembre 2021, 15:32
    Author     : jjalet
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>JeuxOlympiques</title>
                <link href="JeuxOlypiques.css" type="text/css" rel="stylesheet" />
            </head>
            <body>
                <xsl:apply-templates /> 
            </body>
        </html>
    </xsl:template>
    <xsl:template match="tableau">
        <table>	
            <tr>
                <th> Pays </th>
                <th> Or </th>
                <th> Argent </th>
                <th> Bronze </th>
            </tr>
            
        </table>	
    </xsl:template>
    <xsl:template match="lignes">
        <tr>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    <xsl:template match="pays">
        <tr>
            <td>
                <xsl:value-of select="@nomDePays" />
            </td>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    <xsl:template match="medailles">
        <td class="medailles">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    

</xsl:stylesheet>
