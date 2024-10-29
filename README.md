# Lights Out en Prolog

## Descripción del Proyecto
Este proyecto implementa el juego "Lights Out" en Prolog, un juego de rompecabezas en el que el objetivo es apagar todas las luces en un tablero. Cuando se pulsa una luz, se cambia su estado y el de sus luces adyacentes (No las diagonales).

a) Estado inicial: Se tiene un tablero de luces, donde cada casilla del tablero puede estar encendida o apagada.

b) Interacción del jugador: El jugador puede pulsar una luz en cualquier posición del tablero. Al hacerlo, cambia el estado de esa luz (si estaba encendida, se apaga, y viceversa) y también cambia el estado de las luces adyacentes (horizontal y verticalmente).

c) Objetivo del juego: Apagar todas las luces del tablero. El jugador gana cuando no queda ninguna luz encendida.

d) Restricción: Solo se puede pulsar una luz a la vez. No es posible pulsar más de una luz simultáneamente.


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

prolog
?- iniciar_tablero.
?- pulsar(1, 1).
?- pulsar(2, 2).
?- ganar.


## ¡¡SPOILER DE COMO GANAR!!
No nos hacemos responsables de que no sea capaz de resolver este rompecabezas, 
si continua leyendo verá una manera de ganar desde que empiezas a jugar:
prolog
?- iniciar_tablero.
?- pulsar(2,2).
?- pulsar(3,1).
?- pulsar(2,3).
?- pulsar(1,3).
?- pulsar(1,1).
?- pulsar(1,3).
?- pulsar(3,2).
?- ganar.

