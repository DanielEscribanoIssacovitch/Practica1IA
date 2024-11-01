% Inicia el tablero con un estado espec�fico de las luces y muestra c�mo jugar
iniciar_tablero :-
    retractall(estado(_, _)),  % Limpia cualquier estado previo
    assert(estado(casilla(1,1), encendida)),
    assert(estado(casilla(1,2), apagada)),
    assert(estado(casilla(1,3), encendida)),
    assert(estado(casilla(2,1), encendida)),
    assert(estado(casilla(2,2), encendida)),
    assert(estado(casilla(2,3), apagada)),
    assert(estado(casilla(3,1), apagada)),
    assert(estado(casilla(3,2), encendida)),
    assert(estado(casilla(3,3), apagada)),
    write('�Bienvenido al juego "Lights Out"!'), nl,
    write('Instrucciones:'), nl,
    write('1. El tablero tiene luces que pueden estar encendidas (1) o apagadas (0).'), nl,
    write('2. Puedes pulsar una luz para cambiar su estado y el de sus luces adyacentes (arriba, abajo, derecha e izquierda pero no diagonal.'),nl,
    write('[Comando (X=fila, Y=columna): pulsar(X,Y). ej=pulsar(1,1).]'), nl,
    write('3. Tu objetivo es apagar todas las luces. �Buena suerte!'), nl,
    write('Estado inicial del tablero:'), nl,
    estado_tablero.

% Modificar el predicado pulsar para que muestre solo el estado final
pulsar(X, Y) :-
    cambiar_estado(X, Y),
    cambiar_adyacentes(X, Y),
    !,  % Cortar aqu� para evitar retrocesos
    estado_tablero.  % Mostrar el estado del tablero despu�s de los cambios

% Cambia el estado de una casilla (encendida a apagada y viceversa)
cambiar_estado(X, Y) :-
    estado(casilla(X, Y), encendida),  % Si la luz est� encendida
    retract(estado(casilla(X, Y), encendida)),
    assert(estado(casilla(X, Y), apagada)).  % La apaga

cambiar_estado(X, Y) :-
    estado(casilla(X, Y), apagada),  % Si la luz est� apagada
    retract(estado(casilla(X, Y), apagada)),
    assert(estado(casilla(X, Y), encendida)).  % La enciende

% Cambia el estado de las casillas adyacentes (arriba, abajo, izquierda, derecha)
cambiar_adyacentes(X, Y) :-
    (X1 is X - 1, entre_limites(X1, Y) -> cambiar_estado(X1, Y); true),
    (X2 is X + 1, entre_limites(X2, Y) -> cambiar_estado(X2, Y); true),
    (Y1 is Y - 1, entre_limites(X, Y1) -> cambiar_estado(X, Y1); true),
    (Y2 is Y + 1, entre_limites(X, Y2) -> cambiar_estado(X, Y2); true).

% Imprime el estado del tablero en formato 3x3 con 1 (encendida) y 0 (apagada)
estado_tablero :-
    mostrar_fila(1),
    mostrar_fila(2),
    mostrar_fila(3).

% Muestra el estado de cada fila
mostrar_fila(Y) :-
    estado(casilla(Y, 1), E1), imprimir_estado(E1),
    estado(casilla(Y, 2), E2), imprimir_estado(E2),
    estado(casilla(Y, 3), E3), imprimir_estado(E3),
    nl.

% Convierte el estado en un n�mero y lo imprime
imprimir_estado(encendida) :- write('1 ').
imprimir_estado(apagada) :- write('0 ').

% Verifica si la casilla est� dentro de los l�mites del tablero
entre_limites(X, Y) :-
    X >= 1, X =< 3, Y >= 1, Y =< 3.

% Verifica que todas las casillas est�n apagadas para ganar
ganar :-
    estado(casilla(1,1), apagada),
    estado(casilla(1,2), apagada),
    estado(casilla(1,3), apagada),
    estado(casilla(2,1), apagada),
    estado(casilla(2,2), apagada),
    estado(casilla(2,3), apagada),
    estado(casilla(3,1), apagada),
    estado(casilla(3,2), apagada),
    estado(casilla(3,3), apagada).

% Funci�n de ayuda que explica c�mo jugar
ayuda :-
    write('Ayuda:'), nl,
    write('1. Usa la regla "pulsar(X, Y)" para pulsar la luz en la fila X y columna Y.'), nl,
    write('2. El objetivo es apagar todas las luces en el tablero.'), nl,
    write('3. Cada vez que pulses una luz, cambiar� su estado y el de sus luces adyacentes.'), nl,
    write('4. �Divi�rtete jugando!'), nl.













