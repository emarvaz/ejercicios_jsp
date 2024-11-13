<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Día de la semana</title>
    </head>

    <body>
        <main>
            <form action="dia-de-la-semana.jsp" method="post">
                <label for="numero">Introduce un número del 1 al 7: </label>
                <input type="text" name="numero">
                <br>
                <br>
                <input type="submit">
                <input type="reset">
            </form>

            <%
                String numeroStr = request.getParameter("numero");

                if (numeroStr != null) {
                    int numero = Integer.parseInt(numeroStr);

                    switch (numero) {
                        case 1:
                            out.println("El " + numero + " es lunes.");
                            break;
                        case 2:
                            out.println("El " + numero + " es martes.");
                            break;
                        case 3:
                            out.println("El " + numero + " es miércoles.");
                            break;
                        case 4:
                            out.println("El " + numero + " es jueves.");
                            break;
                        case 5:
                            out.println("El " + numero + " es viernes.");
                            break;
                        case 6:
                            out.println("El " + numero + " es sábado.");
                            break;
                        case 7:
                            out.println("El " + numero + " es domingo.");
                            break;
                        default:
                            out.println("Error, " + numero + " no es un día de la semana.");
                    }
                }
            %>

            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
