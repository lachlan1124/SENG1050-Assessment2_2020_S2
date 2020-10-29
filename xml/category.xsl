<?xml version = "1.0" encoding = "UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"> </meta>
                <title>goHoliday's great holiday packages</title>
                <link rel="stylesheet" href="../style.css"> </link>
                <style>
                </style>
            </head>

            <body>
                <div class = "nav">
                    <ul>
                       <li> <a href="../index.html">Home</a> </li>
                       <li> <a href="beachPackages.xml">Beach holidays</a></li>
                       <li> <a href="SnowPackages.xml">Snow holidays</a></li>
                       <li> <a href="../pages/holidaySuggestion.html">Holiday Suggestions</a></li>
                    </ul>
                </div>

                <hr/>
                <xsl:for-each select="holidayPackages/holidayPackage">
                <xsl:sort select="packageName"/> 
                    <div class = "packages">

                        <h2> <xsl:value-of select="packageName"/> </h2>

                        <p><xsl:value-of select="description"/></p>

                        <a href=<xsl:value-of select = "picturePath"></a>
                        <hr/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 