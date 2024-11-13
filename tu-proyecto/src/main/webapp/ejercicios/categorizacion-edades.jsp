<!DOCTYPE html>
<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Categorizaci�n por edades</title>
    </head>

    <body>
        <main>
            <form action="categorizacion-edades.jsp" method="post">
                <label for="edad">Introduce tu edad: </label>
                <input type="text" name="edad">
                <br>
                <br>
                <input type="submit">
                <input type="reset">
            </form>

            <%
                String edadStr = request.getParameter("edad");

                if (edadStr != null) {
                    int edad = Integer.parseInt(edadStr);

                    if (edad < 0) {
                        out.println("Todavía no has nacido, espabila chaval.");
                    } else if (edad < 12) {
                        out.println("Eres un infante.");
                    } else if (edad >= 12 && edad < 17) {
                        out.println("Eres un adolescente.");
                    } else if (edad >= 18 && edad < 60) {
                        out.println("Eres un adulto.");
                    } else if (edad >= 60) {
                        out.println("Eres un anciano.");
                    } else {
                        out.println("Error, la edad no es válida");
                    }
                }
            %>

            <br><br>
            <div><a href="../index.jsp">Volver</a></div>
        </main>
    </body>
</html>
