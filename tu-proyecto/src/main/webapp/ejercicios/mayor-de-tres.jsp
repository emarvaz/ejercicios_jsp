<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Mayor de tres</title>
    </head>

    <body>
        <main>
            <form action="mayor-de-tres.jsp" method="post">
                <label for="numero1">Primer número: </label>
                <input type="text" name="numero1">
                <br>
                <br>
                <label for="numero2">Segundo número: </label>
                <input type="text" name="numero2">
                <br>
                <br>
                <label for="numero3">Tercer número: </label>
                <input type="text" name="numero3">
                <br>
                <br>
                <input type="submit">
                <input type="reset">
            </form>

            <%
                String numero1Str = request.getParameter("numero1");
                String numero2Str = request.getParameter("numero2");
                String numero3Str = request.getParameter("numero3");

                if (numero1Str != null && numero2Str != null && numero3Str != null) {
                    int numero1 = Integer.parseInt(numero1Str);
                    int numero2 = Integer.parseInt(numero2Str);
                    int numero3 = Integer.parseInt(numero3Str);

                    if (numero1 > numero2 && numero1 > numero3) {
                        out.println(numero1 + " es el mayor.<br>");
                    } else if (numero2 > numero1 && numero2 > numero3) {
                        out.println(numero2 + " es el mayor.<br>");
                    } else if (numero3 > numero1 && numero3 > numero2) {
                        out.println(numero3 + " es el mayor.<br>");
                    }

                    int maximo = Math.max(numero1, Math.max(numero2, numero3));
                    out.println(maximo + " es el mayor mediante la función max().");
                }
            %>

            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
