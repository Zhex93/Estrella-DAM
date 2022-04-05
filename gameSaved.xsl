<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            
            <head>
                <title>Estrella DAM</title>

                <link rel="stylesheet" href="html/css/style.css"/>
                <link rel="icon" href="html/favicon.ico"/>
            </head>

            <div id="fondo-video">
                <video width="1920" height="1080">
                    <source src="html/img/cinematic.mp4" type="video/mp4"/>
                </video>
            </div>

            <body>
                <section class="tabla-partida">
                    <h1>Estadísticas del coche</h1>
                    <div class="tabla-titulo">
                        <table>
                            <tr>
                                <th>Número</th>
                                <th>Piloto</th>
                                <th>Coche</th>
                                <th>Tiempo</th>
                                <th>Vueltas</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tabla-titulo-encabezado">
                        <table>
                            <xsl:for-each select="EstrellaDAM/carrera/pilotos/piloto">
                                <tr>
                                    <td><xsl:value-of select="@id"/></td>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="coche/numcoche"/></td>
                                    <td><xsl:value-of select="intervalo"/></td>
                                    <td><xsl:value-of select="EstrellaDAM/carrera/vuelta"/></td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </section>

                <!-- <section class="tabla-coche">
                    <h1>Estadísticas del coche</h1>
                    <div class="tabla-titulo">
                        <table>
                            <tr>
                                <th>Número</th>
                                <th>Piloto</th>
                                <th>Coche</th>
                                <th>Tiempo</th>
                                <th>Vueltas</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tabla-titulo-encabezado">
                        <table>
                            <tr>
                                <td>69</td>
                                <td>Sergio </td>
                                <td>mcx1</td>
                                <td>+2.01</td>
                                <td>-0.36%</td>
                            </tr>
                            <tr>
                                <td>94</td>
                                <td>Luis</td>
                                <td>mcx1</td>
                                <td>-0.01</td>
                                <td>-1.36%</td>
                            </tr>
                            <tr>
                                <td>101</td>
                                <td>Miguelito</td>
                                <td>mcx1</td>
                                <td>+0.01</td>
                                <td>+1.36%</td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>Moya</td>
                                <td>mcx1</td>
                                <td>-1.01</td>
                                <td>+2.36%</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Christian</td>
                                <td>mcx1</td>
                                <td>+2.01</td>
                                <td>-0.36%</td>
                            </tr>
                        </table>
                    </div>
                </section>

                <section class="tabla-piloto">
                    <h1>Estadísticas del piloto</h1>
                    <div class="tabla-titulo">
                        <table>
                            <tr>
                                <th>Número</th>
                                <th>Piloto</th>
                                <th>Coche</th>
                                <th>Tiempo</th>
                                <th>Vueltas</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tabla-titulo-encabezado">
                        <table>
                            <tr>
                                <td>69</td>
                                <td>Sergio </td>
                                <td>mcx1</td>
                                <td>+2.01</td>
                                <td>-0.36%</td>
                            </tr>
                            <tr>
                                <td>94</td>
                                <td>Luis</td>
                                <td>mcx1</td>
                                <td>-0.01</td>
                                <td>-1.36%</td>
                            </tr>
                            <tr>
                                <td>101</td>
                                <td>Miguelito</td>
                                <td>mcx1</td>
                                <td>+0.01</td>
                                <td>+1.36%</td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>Moya</td>
                                <td>mcx1</td>
                                <td>-1.01</td>
                                <td>+2.36%</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>Christian</td>
                                <td>mcx1</td>
                                <td>+2.01</td>
                                <td>-0.36%</td>
                            </tr>
                        </table>
                    </div>
                </section> -->

                <!-- <div class="made-with-birra">
                Made with<img class="img-birra"src="img/birra.png" alt="Birra">by <a target="_blank" href="#">Estrella DAM</a>
                </div> -->
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>