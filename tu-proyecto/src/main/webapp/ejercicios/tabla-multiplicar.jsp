<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Tabla de multiplicar</title>
    </head>

    <body>
        <main>
            <form action="tabla-multiplicar.jsp" method="post">
                <label for="numero">Introduce un número entre el 1 y el 10: </label>
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
                    out.println("<h1>Tabla de multiplicar del " + numero + "</h1>");
                    out.println("<ul>");

                    for (int i = 1; i <= 10; i++) {
                        int resultado = numero * i;
                        out.println("<li>" + numero + " x " + i + " = " + resultado + "</li>");
                    }

                    out.println("</ul>");
                }
            %>

            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
