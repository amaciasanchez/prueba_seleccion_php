<?php
require_once __DIR__ . '/../repositories/PokemonRepository.php';

class PokemonService
{
    private $repository;

    public function __construct()
    {
        $this->repository = new PokemonRepository();
    }

    /**
     * Obtiene los Pokemon más pesados
     * @return array
     */
    public function getHeaviestPokemon()
    {
        return $this->repository->findHeaviest(25);
    }

    /**
     * Crea un nuevo Pokemon con validación
     * @param array $data
     * @return array
     */
    public function createPokemon($data)
    {
        // Validar campos requeridos
        $required = ['name', 'height', 'number', 'health', 'weight', 'url'];
        foreach ($required as $field) {
            if (!isset($data[$field]) || $data[$field] === '' || $data[$field] === null) {
                return [
                    'success' => false,
                    'message' => "El campo {$field} es requerido"
                ];
            }
        }

        // Validar tipos, rangos y URL
        $validationError = $this->validatePokemonData($data);
        if ($validationError !== null) {
            return $validationError;
        }

        // Intentar guardar
        $pokemonId = $this->repository->save($data);

        if ($pokemonId) {
            return [
                'success' => true,
                'message' => 'Pokemon creado exitosamente',
                'pokemon_id' => $pokemonId
            ];
        } else {
            return [
                'success' => false,
                'message' => 'Error al guardar el Pokemon en la base de datos'
            ];
        }
    }

    /**
     * Valida los tipos, rangos y formato de los datos del Pokemon
     * @param array $data
     * @return array|null
     */
    private function validatePokemonData($data)
    {
        // Validar altura
        if (!is_numeric($data['height']) || floatval($data['height']) <= 0) {
            return [
                'success' => false,
                'message' => 'La altura debe ser un número mayor a 0'
            ];
        }

        // Validar peso
        if (!is_numeric($data['weight']) || floatval($data['weight']) <= 0) {
            return [
                'success' => false,
                'message' => 'El peso debe ser un número mayor a 0'
            ];
        }

        // Validar número
        if (!is_numeric($data['number']) || intval($data['number']) <= 0) {
            return [
                'success' => false,
                'message' => 'El número debe ser un entero mayor a 0'
            ];
        }

        // Validar salud
        if (!is_numeric($data['health']) || intval($data['health']) <= 0) {
            return [
                'success' => false,
                'message' => 'La salud debe ser un entero mayor a 0'
            ];
        }

        // Validar URL
        if (!filter_var($data['url'], FILTER_VALIDATE_URL)) {
            return [
                'success' => false,
                'message' => 'La URL de la imagen no es válida'
            ];
        }

        return null;
    }
}

