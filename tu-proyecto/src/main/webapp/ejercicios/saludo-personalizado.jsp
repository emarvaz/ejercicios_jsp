<!DOCTYPE html>

<html lang="es-ES">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Saludo personalizado</title>
    </head>

    <body>
        <main>
            <form action="saludo-personalizado.jsp" method="post">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre">
                <br>
                <br>
                <label for="apellidos">Apellidos</label>
                <input type="text" id="apellidos" name="apellidos">
                <br>
                <br>
                <input type="submit">
                <input type="reset">
            </form>
            <br>

            <%
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");

                if (nombre != null && apellidos != null) {
                    out.println("¡Hola " + nombre + " " + apellidos + "!");
                }
            %>
            
            <br><br>
            <a href="../index.jsp">Volver</a>
        </main>
    </body>
</html>
