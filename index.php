<?php
require_once 'database.php';

// TODO: Obtener la conexión a la base de datos
// $pdo = getDbConnection();

// TODO: Escribir la consulta SQL para obtener los 25 Pokemon más pesados

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pokedex del Profesor Oak</title>
    <link rel="stylesheet" href="assets/style.css">
</head>

<body>
    <div class="container">
        <header>
            <h1>Pokedex</h1>
            <button id="newPokemonBtn" class="btn">Nuevo Pokemon</button>
        </header>

        <main>
            <!-- TODO: Mostrar la tabla de Pokemon aquí -->
            <table>
                <thead>
                    <tr>
                        <th>Imagen</th>
                        <th>Nombre</th>
                        <th>Peso</th>
                        <!-- Añadir más columnas según sea necesario -->
                    </tr>
                </thead>
                <tbody>
                    <!-- Iterar sobre los resultados de la base de datos -->
                    <tr>
                        <td colspan="3" style="text-align: center;">Aquí aparecerán los Pokemon...</td>
                    </tr>
                </tbody>
            </table>
        </main>
    </div>

    <!-- Modal para nuevo Pokemon -->
    <div id="pokemonModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Registrar Nuevo Pokemon</h2>
            <form id="newPokemonForm">
                <!-- TODO: Añadir los campos del formulario -->
                <div class="form-group">
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <!-- Añadir más campos aquí -->

                <button type="submit" class="btn">Guardar</button>
            </form>
        </div>
    </div>

    <script>
        // Script básico para el modal
        var modal = document.getElementById("pokemonModal");
        var btn = document.getElementById("newPokemonBtn");
        var span = document.getElementsByClassName("close")[0];

        //Hacer funcionalidades basicas del modal.
        /* 
         AQUI
        */

        // TODO: Manejar el envío del formulario con AJAX o recarga de página
    </script>
</body>

</html>