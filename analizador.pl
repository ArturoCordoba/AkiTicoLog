igualdad(X,X).

determinante("el").
determinante("la").
determinante("en").
determinante("un").
determinante("una").
determinante("de").

verbo("nacio").
verbo("es").
verbo("tiene").
verbo("juega").
verbo("mide").
verbo("tiene").

negacion("no").
negacion(X):-primer_elemento(X,Y),negacion(Y).

afirmacion("si").
afirmacion(X):-primer_elemento(X,Y),afirmacion(Y).

duda("se").
duda([X|Y]):-negacion(X),primer_elemento(Y,Z),duda(Z).

%Obtener primer elemento de una lista
primer_elemento([X|_], X).

%Obtener la respuesta del usuario
analizador(X,Z):-duda(X), igualdad("duda", Z),!.
analizador(X,Z):-afirmacion(X), igualdad("afirmacion",Z),!.
analizador(X,Z):-negacion(X), igualdad("negacion",Z),!.
analizador([X|Y],Z):-verbo(X),verbo_identificado(Y,Z),!.
analizador([_|Y],Z):-analizador(Y,Z).
analizador([], Z):-igualdad("no entendi", Z),!.

%Obtener la respuesta del usuario
verbo_identificado([X|Y], Z):-determinante(X),primer_elemento(Y,Z),!.
verbo_identificado(X, Z):-primer_elemento(X,Z).

%pregunta():-write("Cual es su nombre?"),nl,read_line_to_codes(user_input, Codes), atom_codes(A, Codes), atom_string(A, String), split_string(String," ","",List),ultimo_elemento_lista(List,Last),eliminar_caracter_string(Last,".",NewLast),eliminar_elemento_lista(Last,List,NewList),convertir_string_lista(NewLast,LastList),append(NewList,LastList,NEWList),analizador(NEWList,Z),write(Z),!.

