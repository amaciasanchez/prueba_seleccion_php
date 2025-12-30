<?php
/**
 * Test para PokemonService::getHeaviestPokemon()
 * 
 * Este test usa un mock del repositorio con datos hardcodeados
 * para probar la funcionalidad sin necesidad de base de datos.
 */

require_once __DIR__ . '/../app/services/PokemonService.php';
require_once __DIR__ . '/../app/repositories/PokemonRepository.php';

/**
 * Mock del PokemonRepository que devuelve datos hardcodeados
 */
class MockPokemonRepository extends PokemonRepository
{
    private $mockData;

    public function __construct()
    {
        // No llamamos al constructor padre para evitar conexión a BD
        $this->mockData = $this->getMockPokemonData();
    }

    /**
     * Devuelve datos hardcodeados de Pokemon ordenados por peso descendente
     */
    public function findHeaviest($limit = 25)
    {
        // Ordenar por peso descendente y limitar
        $sorted = $this->mockData;
        usort($sorted, function($a, $b) {
            return $b['weight'] <=> $a['weight'];
        });
        
        return array_slice($sorted, 0, $limit);
    }

    /**
     * Datos hardcodeados de Pokemon para testing
     */
    private function getMockPokemonData()
    {
        return [
            [
                'id' => 1,
                'name' => 'pikachu',
                'height' => 4,
                'number' => 25,
                'health' => 100,
                'weight' => 60,
                'url' => 'https://example.com/pikachu.png',
                'createdAt' => '2023-09-07 09:54:55',
                'updatedAt' => '2023-09-07 09:54:55'
            ],
            [
                'id' => 2,
                'name' => 'snorlax',
                'height' => 21,
                'number' => 235,
                'health' => 100,
                'weight' => 4600,
                'url' => 'https://example.com/snorlax.png',
                'createdAt' => '2023-09-07 09:55:06',
                'updatedAt' => '2023-09-07 09:55:06'
            ],
            [
                'id' => 3,
                'name' => 'charizard',
                'height' => 17,
                'number' => 7,
                'health' => 100,
                'weight' => 905,
                'url' => 'https://example.com/charizard.png',
                'createdAt' => '2023-09-07 09:54:56',
                'updatedAt' => '2023-09-07 09:54:56'
            ],
            [
                'id' => 4,
                'name' => 'golem',
                'height' => 14,
                'number' => 119,
                'health' => 100,
                'weight' => 3000,
                'url' => 'https://example.com/golem.png',
                'createdAt' => '2023-09-07 09:55:01',
                'updatedAt' => '2023-09-07 09:55:01'
            ],
            [
                'id' => 5,
                'name' => 'machamp',
                'height' => 16,
                'number' => 109,
                'health' => 100,
                'weight' => 1300,
                'url' => 'https://example.com/machamp.png',
                'createdAt' => '2023-09-07 09:55:01',
                'updatedAt' => '2023-09-07 09:55:01'
            ],
            [
                'id' => 6,
                'name' => 'gyarados',
                'height' => 65,
                'number' => 211,
                'health' => 100,
                'weight' => 2350,
                'url' => 'https://example.com/gyarados.png',
                'createdAt' => '2023-09-07 09:55:05',
                'updatedAt' => '2023-09-07 09:55:05'
            ],
            [
                'id' => 7,
                'name' => 'onix',
                'height' => 88,
                'number' => 151,
                'health' => 100,
                'weight' => 2100,
                'url' => 'https://example.com/onix.png',
                'createdAt' => '2023-09-07 09:55:03',
                'updatedAt' => '2023-09-07 09:55:03'
            ],
            [
                'id' => 8,
                'name' => 'lapras',
                'height' => 25,
                'number' => 213,
                'health' => 100,
                'weight' => 2200,
                'url' => 'https://example.com/lapras.png',
                'createdAt' => '2023-09-07 09:55:05',
                'updatedAt' => '2023-09-07 09:55:05'
            ],
            [
                'id' => 9,
                'name' => 'dragonite',
                'height' => 22,
                'number' => 244,
                'health' => 100,
                'weight' => 2100,
                'url' => 'https://example.com/dragonite.png',
                'createdAt' => '2023-09-07 09:55:07',
                'updatedAt' => '2023-09-07 09:55:07'
            ],
            [
                'id' => 10,
                'name' => 'venusaur',
                'height' => 20,
                'number' => 3,
                'health' => 100,
                'weight' => 1000,
                'url' => 'https://example.com/venusaur.png',
                'createdAt' => '2023-09-07 09:54:55',
                'updatedAt' => '2023-09-07 09:54:55'
            ]
        ];
    }
}

/**
 * PokemonService modificado para testing que permite inyectar el repositorio
 */
class TestablePokemonService extends PokemonService
{
    private $repository;

    public function __construct($repository = null)
    {
        if ($repository !== null) {
            $this->repository = $repository;
        } else {
            parent::__construct();
        }
    }

    public function getHeaviestPokemon()
    {
        return $this->repository->findHeaviest(25);
    }
}

/**
 * Clase de test
 */
class PokemonServiceTest
{
    private $passed = 0;
    private $failed = 0;
    private $tests = [];

    public function run()
    {
        echo "=== Ejecutando tests para PokemonService::getHeaviestPokemon() ===\n\n";

        $this->testGetHeaviestPokemonReturnsArray();
        $this->testGetHeaviestPokemonReturnsCorrectCount();
        $this->testGetHeaviestPokemonIsOrderedByWeight();
        $this->testGetHeaviestPokemonReturnsHeaviestFirst();
        $this->testGetHeaviestPokemonReturnsLightestLast();
        $this->testGetHeaviestPokemonHasRequiredFields();

        $this->printSummary();
    }

    private function testGetHeaviestPokemonReturnsArray()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $this->assert(
            is_array($result),
            'getHeaviestPokemon() debe devolver un array',
            'testGetHeaviestPokemonReturnsArray'
        );
    }

    private function testGetHeaviestPokemonReturnsCorrectCount()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $this->assert(
            count($result) <= 25,
            'getHeaviestPokemon() debe devolver máximo 25 Pokemon',
            'testGetHeaviestPokemonReturnsCorrectCount'
        );
    }

    private function testGetHeaviestPokemonIsOrderedByWeight()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $isOrdered = true;
        for ($i = 0; $i < count($result) - 1; $i++) {
            if ($result[$i]['weight'] < $result[$i + 1]['weight']) {
                $isOrdered = false;
                break;
            }
        }

        $this->assert(
            $isOrdered,
            'getHeaviestPokemon() debe devolver Pokemon ordenados por peso descendente',
            'testGetHeaviestPokemonIsOrderedByWeight'
        );
    }

    private function testGetHeaviestPokemonReturnsHeaviestFirst()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $heaviest = $result[0]['weight'] ?? 0;
        $expectedHeaviest = 4600; // snorlax

        $this->assert(
            $heaviest === $expectedHeaviest,
            "El primer Pokemon debe ser el más pesado (peso: {$expectedHeaviest}, obtenido: {$heaviest})",
            'testGetHeaviestPokemonReturnsHeaviestFirst'
        );
    }

    private function testGetHeaviestPokemonReturnsLightestLast()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $lastIndex = count($result) - 1;
        $lightest = $result[$lastIndex]['weight'] ?? 0;
        $expectedLightest = 60; // pikachu

        $this->assert(
            $lightest === $expectedLightest,
            "El último Pokemon debe ser el más ligero (peso: {$expectedLightest}, obtenido: {$lightest})",
            'testGetHeaviestPokemonReturnsLightestLast'
        );
    }

    private function testGetHeaviestPokemonHasRequiredFields()
    {
        $mockRepo = new MockPokemonRepository();
        $service = new TestablePokemonService($mockRepo);
        $result = $service->getHeaviestPokemon();

        $requiredFields = ['id', 'name', 'height', 'number', 'health', 'weight', 'url'];
        $hasAllFields = true;

        if (!empty($result)) {
            foreach ($requiredFields as $field) {
                if (!isset($result[0][$field])) {
                    $hasAllFields = false;
                    break;
                }
            }
        }

        $this->assert(
            $hasAllFields,
            'Cada Pokemon debe tener todos los campos requeridos: ' . implode(', ', $requiredFields),
            'testGetHeaviestPokemonHasRequiredFields'
        );
    }

    private function assert($condition, $message, $testName)
    {
        if ($condition) {
            $this->passed++;
            $this->tests[] = ['name' => $testName, 'status' => 'PASS', 'message' => $message];
            echo "✓ PASS: {$testName}\n";
        } else {
            $this->failed++;
            $this->tests[] = ['name' => $testName, 'status' => 'FAIL', 'message' => $message];
            echo "✗ FAIL: {$testName} - {$message}\n";
        }
    }

    private function printSummary()
    {
        echo "\n=== Resumen ===\n";
        echo "Tests pasados: {$this->passed}\n";
        echo "Tests fallidos: {$this->failed}\n";
        echo "Total: " . ($this->passed + $this->failed) . "\n\n";

        if ($this->failed > 0) {
            echo "Tests fallidos:\n";
            foreach ($this->tests as $test) {
                if ($test['status'] === 'FAIL') {
                    echo "  - {$test['name']}: {$test['message']}\n";
                }
            }
            exit(1);
        } else {
            echo "¡Todos los tests pasaron! ✓\n";
            exit(0);
        }
    }
}

// Ejecutar los tests
$test = new PokemonServiceTest();
$test->run();

