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




% famositico(Nombre, Genero, Edad,LugarDeNacimiento, LugarDeFallecimiento, Profesion, Estatura, ColorDeCabello, Apodo, Posicion, Equipo)

%Buscar en la base de datos los famositicos de acuerdo al genero
buscar_genero(Genero,Lista):-findall(Nombre,famositico(Nombre,Genero,_,_,_,_,_,_,_,_),Lista).

%Buscar en la base de datos los famositicos de acuerdo al lugar de nacimiento
buscar_nacimiento(LugarNacimiento,Lista):- findall(Nombre,famositico(Nombre,_,_,LugarNacimiento,_,_,_,_,_,_),Lista).

%Buscar en la base de datos los famositicos de acuerdo a la edad
buscar_edad(Edad,Lista):- findall(Nombre,famositico(Nombre,_,Edad,_,_,_,_,_,_,_),Lista).

%Buscar en la base de datos los famositicos de acuerdo al equipo
buscar_equipo(Equipo,Lista):-findall(Nombre,famositico(Nombre,_,_,_,_,_,_,_,_,Equipo),Lista).

%Buscar personajes por medio de todas las respuestas
buscar_personaje(Genero,Edad,Nacimiento,Profesion,Estatura,Color,Apodo,Posicion,Equipo,Lista):-findall(Nombre,famositico(Nombre,Genero,Edad,Nacimiento,Profesion,Estatura,Color,Apodo,Posicion,Equipo),Lista).


