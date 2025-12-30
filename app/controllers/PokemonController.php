<?php
require_once __DIR__ . '/../services/PokemonService.php';

class PokemonController
{
    private $service;

    public function __construct()
    {
        $this->service = new PokemonService();
    }

    /**
     * Listado de Pokemon de los 25 mas pesados
     * @return array
     */
    public function getHeaviestPokemon()
    {
        return $this->service->getHeaviestPokemon();
    }

    /**
     * Registrar nuevo Pokemon
     * Redirige a index.php con mensaje de feedback
     * @return void
     */
    public function createPokemon()
    {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: ../index.php');
            exit;
        }

        $result = $this->service->createPokemon($_POST);

        // Iniciar sesión para pasar el mensaje
        session_start();

        if ($result['success']) {
            $_SESSION['pokemon_message'] = $result['message'] ?? 'Pokemon creado';
            $_SESSION['pokemon_message_type'] = 'success';
        } else {
            $_SESSION['pokemon_message'] = $result['message'] ?? 'Error al crear el Pokemon';
            $_SESSION['pokemon_message_type'] = 'error';
        }

        // Redirigir a la página principal
        header('Location: ../index.php');
        exit;
    }
}

