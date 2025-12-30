# Tests para PokemonService

Este directorio contiene tests unitarios para el servicio de Pokemon sin necesidad de base de datos.

## Test: getHeaviestPokemon()

El test `PokemonServiceTest.php` prueba el método `getHeaviestPokemon()` usando datos hardcodeados en lugar de la base de datos.

### Características

- Sin base de datos: Usa un mock del repositorio con datos hardcodeados
- Datos de prueba: 10 Pokemon con diferentes pesos para probar la funcionalidad
- 6 tests: Verifican diferentes aspectos del método

### Tests incluidos

1. testGetHeaviestPokemonReturnsArray: Verifica que devuelve un array
2. testGetHeaviestPokemonReturnsCorrectCount: Verifica que devuelve máximo 25 Pokemon
3. testGetHeaviestPokemonIsOrderedByWeight: Verifica que están ordenados por peso descendente
4. testGetHeaviestPokemonReturnsHeaviestFirst: Verifica que el más pesado está primero (Snorlax: 4600kg)
5. testGetHeaviestPokemonReturnsLightestLast: Verifica que el más ligero está último (Pikachu: 60kg)
6. testGetHeaviestPokemonHasRequiredFields: Verifica que cada Pokemon tiene todos los campos requeridos

### Datos hardcodeados

El mock incluye 10 Pokemon con los siguientes pesos (ordenados de mayor a menor):

1. Snorlax - 4600 kg
2. Golem - 3000 kg
3. Gyarados - 2350 kg
4. Lapras - 2200 kg
5. Onix - 2100 kg
6. Dragonite - 2100 kg
7. Machamp - 1300 kg
8. Venusaur - 1000 kg
9. Charizard - 905 kg
10. Pikachu - 60 kg

### Ejecutar los tests

```bash
# Ejecutar directamente el test
php tests/PokemonServiceTest.php

# O usando el script helper
php tests/run_tests.php
```

