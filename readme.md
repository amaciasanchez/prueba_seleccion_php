¡Hola joven entrenador!

Llegas pronto, soy el profesor Oak, y como vas a iniciar tu aventura Pokemon tengo que darte un Pokemon para que inicies tu aventura... pero por un motivo que desconozco no puedo ver mi listado de Pokemon, ni tampoco registrar nuevos Pokemon en la Pokedex y ¡tengo que abrir el laboratorio en 2 horas!

¿Cómo dices? ¿Qué sabes PHP y MySQL? me viene de perlas, la Pokedex necesita ser arreglada urgentemente, ¡qué suerte!

Primero de todo importa la base de datos `pokedex.sql` que encontrarás en la raíz del repo.
Ya he dejado preparado un fichero `config.php` con la configuración básica, asegúrate de que los datos de conexión (usuario, contraseña, base de datos) sean correctos para tu entorno local.

Usando todas las buenas prácticas de programador que conozcas, tienes como primera tarea mostrar un listado de los Pokemon que ya tengo registrados en la base de datos.

1. **Listado de Pokemon**:
   - Solo muéstrame los **25 más pesados**.
   - La tabla puede tener el formato que quieras, pero tienes que mostrar todos los datos relevantes.
   - Aquí te dejo algún un ejemplo:
     ![image](https://github.com/IMPACKTA/seleccion_impackta/assets/30071404/a120909a-3f84-4e5c-ba1c-d738f1c03ac1)

2. **Registrar nuevo Pokemon**:
   - Como segunda tarea deberás crear la funcionalidad para poder registrar un nuevo Pokemon.
   - Cuando le des al botón de "Nuevo Pokemon" de la esquina derecha superior:
     ![image](https://github.com/IMPACKTA/seleccion_impackta/assets/30071404/205340e1-b5be-4377-b0e2-6f334025e595)
   - Tiene que emerger una ventana tipo modal (ya hay un esqueleto en `index.php`), en la que pueda rellenar los datos del nuevo Pokemon que registraré.
   - Este modal tiene que tener, aparte de los inputs necesarios para crear un nuevo Pokemon, un botón para cerrarse y otro para guardar los cambios.

3. **Feedback y Actualización**:
   - Cuando se haya creado el Pokemon se me tiene que notificar (con un simple alert basta o un mensaje en pantalla).
   - También se tiene que actualizar la tabla que has hecho al principio con el nuevo Pokemon (si cumple la condición de ser de los más pesados, o simplemente recargando la lista).

¡Eso es todo, muchas gracias!

### Detalles Técnicos:

- El proyecto es **PHP Fullstack**.
- No utilices frameworks pesados (Laravel, Symfony) para esta prueba pequeña, queremos ver cómo te desenvuelves con **PHP nativo** y **PDO** para la base de datos.
- Puedes usar AJAX (fetch/axios) para el envío del formulario si quieres hacerlo más dinámico, o un envío de formulario tradicional si lo prefieres.
- Recuerda que debes utilizar buenas prácticas: estructurar código, validar datos, evitar inyecciones SQL (Prepared Statements), etc.
- Tienes un fichero `assets/style.css` para los estilos, siéntete libre de mejorarlo.

¡Cualquier problema, no dudes en preguntar!
