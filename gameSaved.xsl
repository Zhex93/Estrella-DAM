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

                <section class="tabla-coche">
                    <h1>Estadísticas del coche</h1>
                    <div class="tabla-titulo">
                        <table>
                            <tr>
                                <th>Velocidad</th>
                                <th>Batería</th>
                                <th>Marcha</th>
                                <th>RPM</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tabla-titulo-encabezado">
                        <table>
                            <xsl:for-each select="EstrellaDAM/carrera/pilotos/piloto/coche/Infocoche">
                                <tr>
                                    <td>
                                        <xsl:value-of select="velocidad"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="bateria"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="marcha"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="RPM"/>
                                    </td>
                                </tr>

                            </xsl:for-each>
                        </table>
                    </div>
                </section>

                <section>
                    <section class="tabla-piloto">
                        <h1>Estadísticas del piloto</h1>
                        <div class="tabla-titulo">
                            <table>
                                <tr>
                                    <th>Número coche</th>
                                    <th>Modelo coche</th>
                                    <th>Piloto</th>
                                </tr>
                            </table>
                        </div>
                        <div class="tabla-titulo-encabezado">
                            <table>
                                <xsl:for-each select="EstrellaDAM/carrera/pilotos/piloto">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="coche/numcoche"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="coche/modelo"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                    </section>
                </section>

                <section class="tabla-partida">
                    <h1>Estadísticas del coche</h1>
                    <div class="tabla-titulo">
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th>Puesto</th>
                                <th>Intervalo</th>
                                <th>Vueltas</th>
                                <th>Media</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tabla-titulo-encabezado">
                        <table>
                            <xsl:for-each select="EstrellaDAM/carrera/pilotos/piloto">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="puesto/@posc"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="intervalo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="/EstrellaDAM/carrera/vuelta"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="tiempomedio"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </section>



                <div class="made-with-birra">
                Made with <img class="img-birra" src="html/img/birra.png" alt="Birra"/>
by <a target="_blank" href="https://www.estrelladamm.com/">Estrella DAM</a>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>