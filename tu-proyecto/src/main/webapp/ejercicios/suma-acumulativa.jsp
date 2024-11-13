<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Suma acumulativa</title>
    </head>

    <body>
        <main>
            <form action="suma-acumulativa.jsp" method="post">
                <label for="numero">Introduce un número: </label>
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
                    int suma = 0;

                    for (int i = 1; i <= numero; i++) {
                        suma += i;
                    }

                    out.println("La suma de todos los números hasta " + numero + " es: " + suma);
                }
            %>

            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
