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

                    .packages 
                    {
                        margin-left: 1cm;
                        margin-right: 1cm;
                        
                    }
                    
                    .packages h1 
                    {
                        text-decoration: underline;
                    }

                    .packages h3 
                    {
                        text-align: center;
                    }

                    .imageHeader
                    {
                        
                        background-position: center;
                        background-repeat: no-repeat;
                        background-size: cover;
                        width: 100%;
                        height: 200px;

                    }

                </style>


            </head>

            <body>
            
   <!--Provides navigation for the user-->
                <div class = "nav">
                    <ul>
                       <li> <a href="../index.html">Home</a> </li>
                       <li> <a href="beachPackages.xml">Beach holidays</a></li>
                       <li> <a href="SnowPackages.xml">Snow holidays</a></li>
                       <li> <a href="../pages/holidaySuggestion.html">Holiday Suggestions</a></li>
                    </ul>
                </div>

                   <!-- the content divs are where most of the homepage content is formated-->
                <div class = "contentBackground">
                    <div class = "content">


                    <xsl:for-each select="holidayPackages/holidayPackage">
                    <xsl:sort select="packageName"/> 
                    
                        <div class = "packages">
                            <div class = "tripInfo">
                            <h1> <xsl:value-of select="packageName"/> </h1>
                            <div class = "imageHeader" style = "background-image: url({picturePath});">

                            </div>
                            
                            <p><xsl:value-of select="description"/></p>

                            <h3>Trip Infomation: </h3> 
                            <p>Number of nights: <xsl:value-of select="numberOfNights"/> </p>
                            <p>Base package cost <xsl:value-of select="cost"/> </p>
                            </div>
                            <div class = "accommodation">
                                <h3>Accommodation Options:</h3>
                                <xsl:for-each select="accommodationOptions">
                                    <h4><xsl:value-of select="accommodationName"/></h4>
                                    <p>Accommodation location: <xsl:value-of select="location"/></p>
                                    <p>Additional Cost: <xsl:value-of select="additionalCost"/></p>
                                </xsl:for-each>
                            </div>

                            <div class = "flights">
                                <h3>Flight Options</h3>

                                <xsl:for-each select = "flightOption">

                                    <h4> <xsl:value-of select="airplaneCompany"/> </h4>

                                    <p>Additonal cost: <xsl:value-of select="additionalCost"/></p>
                                </xsl:for-each>

                            </div>

                            <div class = "carRent">
                                <h3>Car Rentals</h3>
                                <xsl:for-each select = "carRentOption">
                                    <h4> <xsl:value-of select="carRentCompany"/> </h4>
                                    <p>Additonal cost: <xsl:value-of select="additionalCost"/></p>
                                    <h5>Car options: </h5>
                                    <xsl:for-each select="availableCars">
                                        <p><xsl:value-of select="text()"/></p>
                                    </xsl:for-each>
                                    
                                </xsl:for-each>
                            </div>
                            <div class = "reviews">
                            <h3>Reviews</h3>
                            <p>Popularity : <xsl:value-of select="popularity"/> / 5</p>
                            <xsl:for-each select="reviews">      
                                
                                    <h4><xsl:value-of select="@person"/> </h4>
                                    <p><xsl:value-of select="text()"/></p>
                                
                            </xsl:for-each>
                            </div>
                       

                        
                        </div>


                    
                    </xsl:for-each>
                    </div>
                </div>
    
    <!-- Copyright information-->
    <div class = "copyright">
        <footer>
           <p> <a href="../pages/privacyPolicy.html" style="text-decoration: none;color: #35AD6D; margin-right:1%;">Privacy Policy</a> <a href="../pages/Terms.html" style="text-decoration: none;color: #35AD6D; margin-right:1%;">Terms and Conditions</a> <a href="../pages/About.html" style="text-decoration: none;color: #35AD6D;margin-right:1%;">About Us</a> <a href="../pages/Contact.html" style="text-decoration: none;color: #35AD6D; margin-right:1%;">Contact Us</a>© Copyright 2020 Lachlan Marler | C3351542 | C3351542@uon.edu.au</p>
        </footer>
     </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 