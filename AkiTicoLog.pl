%Preguntar al usuario y leer su respuesta
pregunta():-write("Cual es su nombre?"),nl,read_line_to_codes(user_input, Codes), atom_codes(A, Codes), atom_string(A, String), split_string(String," ","",List),ultimo_elemento_lista(List,Last),eliminar_caracter_string(Last,".",NewLast),eliminar_elemento_lista(Last,List,NewList),convertir_string_lista(NewLast,LastList),append(NewList,LastList,NEWList),write(NEWList).

%Obtener el ultimo elemento de la lista
ultimo_elemento_lista([Y], Y).
ultimo_elemento_lista([_|Xs],Y):- ultimo_elemento_lista(Xs,Y).

%Borrar un elemento de una lista
eliminar_elemento_lista(_, [], []).
eliminar_elemento_lista(Y, [Y|Xs], Zs):-
          eliminar_elemento_lista(Y, Xs, Zs), !.
eliminar_elemento_lista(X, [Y|Xs], [Y|Zs]):-
          eliminar_elemento_lista(X, Xs, Zs).

%Borrar un caracter de un string
eliminar_caracter_string(S,C,X) :- atom_concat(L,R,S), atom_concat(C,W,R), atom_concat(L,W,X).

%Convertir un string a una lista
convertir_string_lista(String,List):- string_to_list(String,Codes), atom_codes(Atomic,Codes),atom_string(Atomic,String2),atomic_list_concat(List, " ", String2).

%Verificar igualdad
igualdad(X,X).
