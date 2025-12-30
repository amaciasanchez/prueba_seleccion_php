<?php
require_once __DIR__ . '/../../database.php';

class PokemonRepository
{
    private $pdo;

    public function __construct()
    {
        $this->pdo = getDbConnection();
    }

    /**
     * Obtiene los Pokemon más pesados ordenados por peso descendente
     * @param int $limit Número de registros a obtener
     * @return array
     */
    public function findHeaviest($limit = 25)
    {
        try {
            $sql = "SELECT * FROM pokemons ORDER BY weight DESC LIMIT :limit";
            $stmt = $this->pdo->prepare($sql);

            $params = [':limit' => $limit];

            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Error en PokemonRepository::findHeaviest: " . $e->getMessage());
            return [];
        }
    }

    /**
     * Guarda un nuevo Pokemon en la base de datos
     * @param array $data Datos del Pokemon
     * @return int|false ID del Pokemon creado o false en caso de error
     */
    public function save($data)
    {
        try {
            $sql = "INSERT INTO pokemons (name, height, number, health, weight, url, createdAt, updatedAt) 
                    VALUES (:name, :height, :number, :health, :weight, :url, NOW(), NOW())";

            $stmt = $this->pdo->prepare($sql);

            $params = [
                ':name' => $data['name'],
                ':height' => $data['height'],
                ':number' => $data['number'],
                ':health' => $data['health'],
                ':weight' => $data['weight'],
                ':url' => $data['url']
            ];

            if ($stmt->execute($params)) {
                return (int)$this->pdo->lastInsertId();
            }
            return false;
        } catch (PDOException $e) {
            error_log("Error en PokemonRepository::save: " . $e->getMessage());
            return false;
        }
    }
}

