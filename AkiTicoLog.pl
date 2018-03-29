%Base de datos de famositicos

% famositico(Nombre, Genero, Edad,LugarDeNacimiento, Profesion, Estatura, ColorDeCabello, Apodo, Posicion, Equipo)
famositico("Keylor Navas", "hombre", "31", "San Jose", "futbolista", "1.85", "negro", "Pantera", "portero", "Real Madrid").
famositico("Celso Borges", "hombre", "29", "San Jose", "futbolista", "1.83", "negro", "Maleta", "mediocampista", "Deportivo Coruña").
famositico("Bryan Ruiz", "hombre", "32", "San Jose", "futbolista", "1.88", "negro", "Capi", "delantero", "Sporting Lisboa").
famositico("Shirley Cruz", "mujer", "32", "San Jose", "futbolista", "1.63", "negro", "", "mediocampista", "Jiangsu Suning").
famositico("Joel Campbell", "hombre", "25", "San Jose", "futbolista", "1.78", "negro", "", "delantero", "Betis").
famositico("Cristian Gamboa", "hombre", "28", "Guanacaste", "futbolista", "1.73", "negro", "","defensa", "Celtic").
famositico("Kendall Waston", "hombre", "30", "San Jose", "futbolista", "1.96", "negro", "Gigante", "defensa", "Vancouver Whitecaps").

famositico("Alonso Solis", "hombre", "39", "San Jose", "exfutbolista", "1.78", "negro", "Mariachi", "delantero", "Saprissa").
famositico("Mauricio Montero", "hombre", "54", "Alajuela", "exfutbolista", "1.78", "negro", "Chunche", "defensa", "Liga Deportiva Alajuelense").
famositico("Erick Lonnis", "hombre", "52", "San Jose", "exfutbolista", "1.82", "calvo", "Anguila", "portero", "Saprissa").
famositico("Rolando Fonseca", "hombre", "43", "San Jose", "exfutbolista", "1.72", "negro", "Principito", "delantero", "Saprissa").
famositico("Paulo Wanchope", "hombre", "41", "Heredia", "exfutbolista", "1.93", "calvo", "Chope", "delantero", "Club Sport Herediano").
famositico("Wilmer Lopez", "hombre", "46", "Alajuela", "exfutbolista", "1.69", "negro", "Pato", "mediocampista", "Liga Deportiva Alajuelense").

famositico("Walter Centeno", "hombre", "43", "Puntarenas", "tecnico", "1.74", "negro", "Pate", "mediocampista", "Municipal Grecia").
famositico("Oscar Ramirez", "hombre", "53", "Heredia", "tecnico", "1.68", "negro", "Machillo", "mediocampista", "Seleccion Costa Rica").
famositico("Hernan Medford", "hombre", "49", "San Jose", "tecnico", "1.76", "calvo", "Pelicano", "delantero", "CSD Municipal").

famositico("Hanna Gabriel", "mujer", "35", "Alajuela", "boxeadora", "1.87", "negro", "Amazona", "", "").
famositico("Andrey Amador", "hombre", "31", "Alajuela", "ciclista", "1.80", "negro", "", "", "Movistar Team").
famositico("Claudia Poll", "mujer", "43", "Nicaragua", "nadadora", "1.91", "rubio", "", "", "").
famositico("Sylvia Poll", "mujer", "45", "Nicaragua", "nadadora",  "", "rubio", "", "", "").
famositico("Nery Brenes", "hombre", "32", "Limon", "atleta", "1.75", "negro", "", "", "").

famositico("Maria Jose Castillo", "mujer", "27", "Heredia", "cantante", "", "negro", "", "", "").
famositico("Deborah Nowalski", "mujer", "37", "San Jose", "cantante", "", "rubio", "Debi Nova", "", "").
famositico("Manuel Salazar", "hombre", "63", "San Jose", "cantante", "", "negro", "Melico", "", "").
famositico("Jose Capmany", "hombre", "40", "San Jose", "cantante", "", "negro", "", "", "").
famositico("Fidel Gamboa", "hombre", "50", "Guanacaste", "cantante", "", "negro", "", "", "").

famositico("Mario Chacon", "hombre", "42", "San Jose", "comediante", "", "negro","Maikol Yordan", "", "").
famositico("Hernan Jimenez", "hombre", "37", "San Jose", "comediante", "", "negro", "", "", "").
famositico("Carlos Ramos", "hombre", "68", "San Jose", "comediante", "", "negro", "Porcionzon", "", "").

famositico("Ignacio Santos", "hombre", "56", "Cuba", "periodista", "", "negro", "", "", "").
famositico("Pilar Cisneros", "mujer", "63", "Peru", "periodista", "", "negro", "", "", "").
famositico("Everardo Herrera", "hombre", "56", "San Jose", "comentarista", "", "blanco", "", "", "").
famositico("Mario McGregor", "hombre", "59", "Limon", "narrador", "", "negro", "Doble M", "", "").

famositico("Leonora Jimenez", "mujer", "35", "San Jose", "modelo", "", "rubio", "", "", "").
famositico("Maribel Guardia", "mujer", "58", "San Jose", "actriz", "", "negro", "", "", "").

famositico("Franklin Chang", "hombre", "67", "San Jose", "exaustronauta", "", "negro", "", "", "").
famositico("Clodomiro Picado", "hombre", "57", "Nicaragua", "cientifico", "", "negro", "clorito", "", "").

famositico("Oscar Arias", "hombre", "77", "San Jose", "expresidente", "","gris", "", "", "").

famositico("Francisca Carrasco", "mujer", "64", "Cartago", "militar", "", "negro", "Pancha", "", "").
famositico("Juan Santamaria", "hombre", "25", "Alajuela", "militar", "", "negro","Tamborcillo", "", "").

determinante("el").
determinante("la").
determinante("en").
determinante("un").
determinante("una").
determinante("de").

verbo("nacio").
verbo("es").
verbo("era").
verbo("tiene").
verbo("juega").
verbo("mide").
verbo("trabaja").
verbo("Nacio").
verbo("Es").
verbo("Era").
verbo("Tiene").
verbo("Juega").
verbo("Mide").
verbo("Trabaja").

negacion("no").
negacion("No").
negacion(X):-primer_elemento(X,Y),negacion(Y).

afirmacion("si").
afirmacion("Si").
afirmacion(X):-primer_elemento(X,Y),afirmacion(Y).

duda("se").
duda([X|Y]):-negacion(X),primer_elemento(Y,Z),duda(Z).

%Correccion de palabras
corregir(X,Y):-igualdad(X,"San"),igualdad(Y,"San Jose"),!.
corregir(X,Y):-igualdad(X,"Costa"),igualdad(Y,"Costa Rica"),!.
corregir(X,Y):-igualdad(X,"Real"),igualdad(Y,"Real Madrid"),!.
corregir(X,Y):-igualdad(X,"Deportivo"),igualdad(Y,"Deportivo La Coruña"),!.
corregir(X,Y):-igualdad(X,"Sporting"),igualdad(Y,"Sporting de Lisboa"),!.
corregir(X,Y):-igualdad(X,"Jiangsu"),igualdad(Y,"Jiangsu Suning"),!.
corregir(X,Y):-igualdad(X,"Vancouver"),igualdad(Y,"Vancouver Whitecaps FC"),!.
corregir(X,Y):-igualdad(X,"Liga"),igualdad(Y,"Liga Deportiva Alajuelense"),!.
corregir(X,Y):-igualdad(X,"Club"),igualdad(Y,"Club Sport Herediano"),!.
corregir(X,Y):-igualdad(X,"Municipal"),igualdad(Y,"Municipal de Grecia"),!.
corregir(X,Y):-igualdad(X,"Seleccion"),igualdad(Y,"Seleccion Nacional Costa Rica"),!.
corregir(X,Y):-igualdad(X,"CSD"),igualdad(Y,"CSD Municipal"),!.
corregir(X,Y):-igualdad(X,"Movistar"),igualdad(Y,"Movistar Team"),!.
corregir(X,Y):-igualdad(X,"Debi"),igualdad(Y,"Debi Nova"),!.
corregir(X,Y):-igualdad(X,"Melico"),igualdad(Y,"Melico Salazar"),!.
corregir(X,Y):-igualdad(X,"Maikol"),igualdad(Y,"Maikol Yordan"),!.
corregir(X,Y):-igualdad(X,"Doble"),igualdad(Y,"Doble M"),!.
corregir(X,Y):-igualdad(X,"Clorito"),igualdad(Y,"Clorito Picado"),!.
corregir(X,Y):-igualdad(X,"Pancha"),igualdad(Y,"Pancha Carrasco"),!.
corregir(X,Y):-igualdad(X,Z),igualdad(Z,Y).

%Obtener primer elemento de una lista
primer_elemento([X|_], X).

%Obtener el ultimo elemento de la lista
ultimo_elemento_lista([Y], Y).
ultimo_elemento_lista([_|Xs],Y):- ultimo_elemento_lista(Xs,Y).

%Borrar un elemento de una lista
eliminar_elemento_lista(_, [], []).
eliminar_elemento_lista(Y, [Y|Xs], Zs):-
          eliminar_elemento_lista(Y, Xs, Zs), !.
eliminar_elemento_lista(X, [Y|Xs], [Y|Zs]):-
          eliminar_elemento_lista(X, Xs, Zs).

%Obtener el tamaño de una lista
tamaño_lista([], L, L).
tamaño_lista([_|Y], A, L):-A2 is A + 1,tamaño_lista(Y, A2, L).

%Borrar un caracter de un string
eliminar_caracter_string(S,C,X) :- atom_concat(L,R,S), atom_concat(C,W,R), atom_concat(L,W,X).%, atom_string(A,X).

%Convertir un string a una lista
convertir_string_lista(String,List):- string_to_list(String,Codes), atom_codes(Atomic,Codes),atom_string(Atomic,String2),append([String2],[],List).

%Verificar igualdad
igualdad(X,X).

%Obtener la respuesta del usuario
analizador(X,Z):-duda(X), igualdad("duda", Z),!.
analizador([X|_],Z):-afirmacion(X), igualdad("afirmacion",Z),!.
analizador([X|_],Z):-negacion(X), igualdad("negacion",Z),!.
analizador([X|Y],Z):-verbo(X),verbo_identificado(Y,Z),!.
analizador([_|Y],Z):-analizador(Y,Z).
analizador([], Z):-igualdad("no entendi", Z),!.

%Obtener la respuesta del usuario
verbo_identificado([X|Y], Z):-determinante(X),verbo_identificado(Y, Z),!.
verbo_identificado(X, Z):-primer_elemento(X,Z).


%Preguntar al usuario y leer su respuesta
preguntaAux(Pregunta,K):-write(Pregunta),nl,read_line_to_codes(user_input, Codes), atom_codes(A, Codes), atom_string(A, String), split_string(String," ","",List),ultimo_elemento_lista(List,Last),eliminar_caracter_string(Last,".",NewLast),eliminar_elemento_lista(Last,List,NewList),convertir_string_lista(NewLast,LastList),append(NewList,LastList,NEWList),analizador(NEWList,K).

pregunta1(R):-preguntaAux("¿Su personaje es hombre o mujer?",X),nl,((igualdad(X,"afirmacion");igualdad(X,"negacion");igualdad(X,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta1(R);igualdad(X,"duda"),igualdad(R,_);igualdad(X,R)),!.

pregunta2(R):-preguntaAux("¿Su personaje nació en Costa Rica?",X),nl,(igualdad(X,"no entendi"),write("Disculpe, no entendí su respuesta"),nl,pregunta2(R);igualdad(X,"duda"),igualdad(_,R);(igualdad(X,"afirmacion"),preguntaAux("En qué provincia nació su personaje?",Y),nl;preguntaAux("En qué país nació su personaje?",Y),nl)
		,((igualdad(Y,"no entendi");igualdad(Y,"afirmacion");igualdad(Y,"negacion")),write("Disculpe, no entendí su respuesta"),nl,pregunta2(R);igualdad(Y,"duda"),igualdad(R,_);corregir(Y,Z),igualdad(Z,R))),!.

pregunta3(R):-preguntaAux("¿Cuál es la edad de su personaje?",X),nl,((igualdad(X,"afirmacion");igualdad(X,"negacion");igualdad(X,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta3(R);igualdad(X,"duda"),igualdad(R,_);igualdad(X,R)),!.

pregunta4(R):-preguntaAux("¿Cuál es la estatura (en metros) de su personaje?",X),nl,((igualdad(X,"afirmacion");igualdad(X,"negacion");igualdad(X,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta4(R);igualdad(X,"duda"),igualdad(R,_);igualdad(X,R)),!.

pregunta5(R1,R2,R3):-preguntaAux("¿Cuál es la profesión de su personaje?",X),nl,((igualdad(X,"afirmacion");igualdad(X,"negacion");igualdad(X,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta5(R1,R2,R3);igualdad(X,"duda"),igualdad(R1,_),igualdad(R2,_),igualdad(R3,_),!;igualdad(X,R1))
			,(((igualdad(X,"futbolista");igualdad(X,"exfutbolista");igualdad(X,"tecnico");igualdad(X,"ciclista")),pregunta5A(R2);igualdad(R2,_))),(((igualdad(X,"futbolista");igualdad(X,"exfutbolista")),pregunta5B(R3);igualdad(R3,_))),!.

pregunta5A(R2):-preguntaAux("¿Cuál es el equipo de su personaje?",Y),nl,((igualdad(Y,"afirmacion");igualdad(Y,"negacion");igualdad(Y,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta5A(R2);igualdad(Y,"duda"),igualdad(R2,_),!;corregir(Y,A),igualdad(A,R2)),!.

pregunta5B(R3):-preguntaAux("¿En qué posición juega su personaje?",Y),nl,((igualdad(Y,"afirmacion");igualdad(Y,"negacion");igualdad(Y,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta5B(R3);igualdad(Y,"duda"),igualdad(R3,_),!;corregir(Y,A),igualdad(A,R3)),!.

pregunta6(R):-preguntaAux("¿Su personaje tiene algún apodo?",X),nl,(igualdad(X,"no entendi"),write("Disculpe, no entendí su respuesta"),nl,pregunta6(R)
		;igualdad(X,"afirmacion"),preguntaAux("¿Cuál es el apodo de su personaje?",Y),nl,(igualdad(Y,"duda"),igualdad(R,_);(igualdad(Y,"afirmacion");igualdad(Y,"negacion");igualdad(Y,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta6(R);igualdad(R,Y))
		;(igualdad(X,"duda");igualdad(X,"negacion")),igualdad(R,_)),!.
		
pregunta7(R):-preguntaAux("¿Cuál es el color del cabello de su personaje?",X),nl,((igualdad(X,"afirmacion");igualdad(X,"negacion");igualdad(X,"no entendi")),write("Disculpe, no entendí su respuesta"),nl,pregunta7(R);igualdad(X,"duda"),igualdad(R,_);igualdad(X,R)),!.

analizar_respuesta(L):-nl,tamaño_lista(L,0,Tamaño),((Tamaño>1;Tamaño=0),write("No he podido adivinar!");write("El personaje es: "),ultimo_elemento_lista(L,X),write(X)),nl,nl,!.	

akiTicoLog():-write("Bienvenido! Veamos si puedo adivinar el famositico en el que estás pensando"),nl,pregunta1(A),pregunta2(B),pregunta3(C),pregunta4(D),pregunta5(E,F,G),pregunta6(H),pregunta7(I)
		,findall(Nombre,famositico(Nombre,A,C,B,E,D,I,H,G,F),Lista),analizar_respuesta(Lista),akiTicoLog().
		
