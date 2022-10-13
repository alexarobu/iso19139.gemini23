<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gco="http://www.isotc211.org/2005/gco"
    xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:srv="http://www.isotc211.org/2005/srv"
    exclude-result-prefixes="srv">
    
    <xsl:output method="xml" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>


    
    <xsl:strip-space elements="*"/>
    
    <!-- Template for Copy data -->
    <xsl:template name="copyData" match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- remove PostGIS protocol resources -->
    <xsl:template match="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine[gmd:CI_OnlineResource/gmd:protocol/gco:CharacterString='DB:POSTGIS']" priority="1000">
        <xsl:message>=== Stripping PostGreSQL connection strings ===</xsl:message>
    </xsl:template>


</xsl:stylesheet>