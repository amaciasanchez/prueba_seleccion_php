<?php
require_once 'database.php';

session_start();
require_once 'app/controllers/PokemonController.php';

$controller = new PokemonController();
$pokemons = $controller->getHeaviestPokemon();

// Obtener mensaje de feedback si existe
$message = null;
$messageType = null;
if (isset($_SESSION['pokemon_message'])) {
    $message = $_SESSION['pokemon_message'];
    $messageType = $_SESSION['pokemon_message_type'] ?? 'success';
    unset($_SESSION['pokemon_message']);
    unset($_SESSION['pokemon_message_type']);
}

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
        <!-- Poner el mensaje del feedback -->
        <?php if ($message): ?>
            <div id="message" style="margin: 10px 0; padding: 15px; border-radius: 4px; <?php echo $messageType === 'success' ? 'background-color: #d4edda; color: #155724;' : 'background-color: #f8d7da; color: #721c24;'; ?>">
                <?php echo htmlspecialchars($message); ?>
            </div>
        <?php endif; ?>

        <main>
            <table>
                <thead>
                <tr>
                    <th>Imagen</th>
                    <th>Nombre</th>
                    <th>Número</th>
                    <th>Altura</th>
                    <th>Peso</th>
                    <th>Salud</th>
                </tr>
                </thead>
                <tbody>
                <?php if (empty($pokemons)): ?>
                    <tr>
                        <td colspan="6" style="text-align: center;">No hay Pokemon registrados...</td>
                    </tr>
                <?php else: ?>
                    <?php foreach ($pokemons as $pokemon): ?>
                        <tr>
                            <td>
                                <img src="<?php echo htmlspecialchars($pokemon['url']); ?>"
                                     alt="<?php echo htmlspecialchars($pokemon['name']); ?>"
                                     class="pokemon-sprite">
                            </td>
                            <td><?php echo htmlspecialchars(ucfirst($pokemon['name'])); ?></td>
                            <td><?php echo htmlspecialchars($pokemon['number']); ?></td>
                            <td><?php echo htmlspecialchars($pokemon['height']); ?> cm</td>
                            <td><?php echo htmlspecialchars($pokemon['weight']); ?> kg</td>
                            <td><?php echo htmlspecialchars($pokemon['health']); ?> HP</td>
                        </tr>
                    <?php endforeach; ?>
                <?php endif; ?>
                </tbody>
            </table>
        </main>
    </div>

    <!-- Modal para nuevo Pokemon -->
    <div id="pokemonModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Registrar Nuevo Pokemon</h2>
            <form id="newPokemonForm" method="POST" action="app/router/CreatePokemon.php">
                <div class="form-group">
                    <label for="name">Nombre:</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="number">Número:</label>
                    <input type="number" id="number" name="number" min="1" required>
                </div>

                <div class="form-group">
                    <label for="height">Altura (cm):</label>
                    <input type="number" id="height" name="height" step="0.1" min="0.1" required>
                </div>

                <div class="form-group">
                    <label for="weight">Peso (kg):</label>
                    <input type="number" id="weight" name="weight" step="0.1" min="0.1" required>
                </div>

                <div class="form-group">
                    <label for="health">Salud (HP):</label>
                    <input type="number" id="health" name="health" min="1" value="100" required>
                </div>

                <div class="form-group">
                    <label for="url">URL de la Imagen:</label>
                    <input type="url" id="url" name="url" placeholder="https://..." required>
                </div>

                <button type="submit" class="btn">Guardar</button>
            </form>
        </div>
    </div>

    <script>
        // Script básico para el modal
        var modal = document.getElementById("pokemonModal");
        var btn = document.getElementById("newPokemonBtn");
        var span = document.getElementsByClassName("close")[0];
        var form = document.getElementById("newPokemonForm");

        // Abrir modal
        btn.onclick = function() {
            modal.style.display = "block";
            form.reset();
        }

        // Cerrar modal con X
        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>

</html>