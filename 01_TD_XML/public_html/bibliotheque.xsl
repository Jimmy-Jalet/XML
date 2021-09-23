<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : bibliotheque.xsl
    Created on : 16 septembre 2021, 15:10
    Author     : jjalet
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="bibliotheque">
        <html>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="allee">
         
        <b>Allée
            <xsl:value-of select="@numero" />
        </b>
        <br/>
        <hr/>
        <xsl:apply-templates />
        <br/>
   
    </xsl:template>
    <xsl:template match="rayon">
        <b>Rayon
            <xsl:value-of select="@numero" />
        </b>
        <br/>
        <br/>
        <table>
            <td>
                <b>Categorie de l'ouvrage</b>
            </td>
            <td>
                <b>Titre</b>
            </td>
            <td>
                <b>Auteur</b>
            </td>
            <td>
                <b>Numero</b>
            </td>
            <tr>
                <xsl:apply-templates />
            </tr>
        </table>
    </xsl:template>
    <xsl:template match="ouvrage">
        <td>
            <xsl:value-of select="@types" />
        </td>
        <td>
            <xsl:value-of select="titre" />
        </td>
    </xsl:template>

</xsl:stylesheet>
