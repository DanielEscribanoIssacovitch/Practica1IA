# Lights Out en Prolog

## Descripción del Proyecto
Este proyecto implementa el juego "Lights Out" en Prolog, un juego de rompecabezas en el que el objetivo es apagar todas las luces en un tablero. Cuando se pulsa una luz, se cambia su estado y el de sus luces adyacentes (No las diagonales).

## Pasos a Realizar

1. **Iniciar el Tablero**
   - Utiliza el comando `iniciar_tablero.` para configurar el estado inicial del juego.
   - Un mensaje con las instrucciones sobre cómo jugar se mostrará al iniciar el tablero.

2. **Pulsar las Casillas**
   - Usa el comando `pulsar(X, Y).` donde `X` e `Y` son las coordenadas de la casilla que deseas pulsar.
   - Ejemplo: pulsar(1,2). 
   - El estado del tablero se actualizará automáticamente después de cada pulsación.

3. **Verificar si Has Ganado**
   - Después de realizar tus movimientos, puedes verificar si has ganado el juego utilizando el comando `ganar.`.

## Ayuda
Si necesitas ayuda durante el juego, utiliza el comando `ayuda.` para ver las instrucciones de cómo jugar.

## Ejemplo de Uso

```prolog
?- iniciar_tablero.
?- pulsar(1, 1).
?- pulsar(2, 2).
?- ganar.

## ¡¡SPOILER DE COMO GANAR!!
No nos hacemos responsables de que no sea capaz de resolver este puzle, si continua leyendo verá como ganar desde que empiezas a jugar:

