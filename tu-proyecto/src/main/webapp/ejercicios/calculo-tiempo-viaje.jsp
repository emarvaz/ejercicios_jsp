<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Cálculo del tiempo de viaje</title>
    </head>

    <body>
        <main>
            <form action="calculo-tiempo-viaje.jsp" method="post">
                <label for="distancia">Distancia a recorrer (Km): </label>
                <input type="text" name="distancia">
                <br>
                <br>
                <label for="velocidad">Velocidad promedio (Km/h): </label>
                <input type="text" name="velocidad">
                <br>
                <br>
                <input type="submit">
                <input type="reset">
            </form>

            <%
                String distanciaStr = request.getParameter("distancia");
                String velocidadStr = request.getParameter("velocidad");

                if (distanciaStr != null && velocidadStr != null) {
                    double distancia = Double.parseDouble(distanciaStr);
                    double velocidad = Double.parseDouble(velocidadStr);
                    out.println("El viaje durará " + (distancia / velocidad) + " horas.");
                }
            %>

            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
