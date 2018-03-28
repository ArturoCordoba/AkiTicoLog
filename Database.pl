%Base de datos de famositicos

% famositico(Nombre, Genero, Edad,LugarDeNacimiento, LugarDeFallecimiento, Profesion, Estatura, ColorDeCabello, Apodo, Posicion, Equipo)
famositico("Keylor Navas", "hombre", "31", "san jose", "", "futbolista", "1.85", "negro", "pantera", "portero", "real madrid").
famositico("Celso Borges", "hombre", "29", "san jose", "", "futbolista", "1.83", "negro", "maleta", "mediocampista", "deportivo coruña").
famositico("Bryan Ruiz", "hombre", "32", "san jose", "", "futbolista", "1.88", "negro", "capi", "delantero", "sporting de lisboa").
famositico("Shirley Cruz", "mujer", "32", "san jose", "", "futbolista", "1.63", "negro", "", "mediocampista", "jiangsu suning").
famositico("Joel Campbell", "hombre", "25", "san jose","", "futbolista", "1.78", "negro", "", "delantero", "betis").
famositico("Cristian Gamboa", "hombre", "28", "guanacaste", "", "futbolista", "1.73", "negro", "","defensa","celtic").
famositico("Kendall Waston", "hombre", "30", "san jose",  "", "futbolista", "1.96", "negro", "gigante", "defensa", "vancouver whitecaps").

famositico("Alonso Solis", "hombre", "39", "san jose",  "", "exfutbolista", "1.78", "negro", "mariachi", "delantero", "saprissa").
famositico("Mauricio Montero", "hombre", "54", "alajuela",  "", "exfutbolista", "1.78", "negro", "chunche", "defensa", "liga deportiva alajuelense").
famositico("Erick Lonnis", "hombre", "52", "san Jose",  "", "exfutbolista", "1.82", "calvo", "anguila", "portero", "saprissa").
famositico("Rolando Fonseca", "hombre", "43", "san Jose",  "", "exfutbolista", "1.72", "negro", "principito", "delantero", "saprissa").
famositico("Paulo Wanchope", "hombre", "41", "heredia",  "", "exfutbolista", "1.93", "calvo", "chope", "delantero", "club sport herediano").
famositico("Wilmer Lopez", "hombre", "46", "alajuela", "", "exfutbolista", "1.69", "negro", "pato", "mediocampista", "liga deportiva alajuelensa").

famositico("Walter Centeno", "hombre", "43", "puntarenas",  "", "tecnico", "1.74", "negro", "pate", "mediocampista","municipal grecia").
famositico("Oscar Ramirez", "hombre", "53", "heredia",  "", "tecnico", "1.68", "negro", "machillo","mediocampista","seleccion costa rica").
famositico("Hernan Medford", "hombre", "49", "san jose", "", "tecnico", "1.76", "calvo", "pelicano","delantero","csd municipal").

famositico("Hanna Gabriel", "mujer", "35", "alajuela", "", "boxeadora", "1.87", "negro", "amazona", "", "").
famositico("Andrey Amador", "hombre", "31", "alajuela", "", "ciclista", "1.80", "negro", "", "","movistar team").
famositico("Claudia Poll", "mujer", "43", "nicaragua", "", "nadadora", "1.91", "rubio", "", "", "").
famositico("Sylvia Poll", "mujer", "45", "nicaragua", "", "nadadora",  "", "rubio", "", "", "").
famositico("Nery Brenes", "hombre", "32", "limon", "", "atleta", "1.75", "negro", "", "", "").

famositico("Maria Jose Castillo", "mujer", "27", "heredia", "", "cantante", "", "negro", "", "", "").
famositico("Deborah Nowalski", "mujer", "37", "san jose", "", "cantante", "", "rubio", "debi nova", "", "").
famositico("Manuel Salazar", "hombre", "63", "san jose", "san jose", "cantante", "", "negro", "melico", "", "").
famositico("Jose Capmany", "hombre", "40", "san jose", "san jose", "cantante", "", "negro", "", "", "").
famositico("Fidel Gamboa", "hombre", "50", "guanacaste", "heredia", "cantante", "", "negro", "", "", "").

famositico("Mario Chacon", "hombre", "42", "san jose", "", "comediante", "", "negro","maikol yordan", "", "").
famositico("Hernan Jimenez", "hombre", "37", "san jose", "", "comediante", "", "negro", "", "", "").
famositico("Carlos Ramos", "hombre", "68", "san jose", "", "comediante", "", "negro", "porcionzon", "", "").

famositico("Ignacio Santos", "hombre", "56", "cuba", "", "periodista", "", "negro", "", "", "").
famositico("Pilar Cisneros", "mujer", "63", "peru", "", "periodista", "", "negro", "", "", "").
famositico("Everardo Herrera", "hombre", "56", "san jose", "", "comentarista", "", "blanco", "", "", "").
famositico("Mario McGregor", "hombre", "59", "limon", "san jose", "narrador", "", "negro", "doble m", "", "").

famositico("Leonora Jimenez", "mujer", "35", "san jose",  "", "modelo", "", "rubio", "", "", "").
famositico("Maribel Guardia", "mujer", "58", "san jose", "", "actriz", "", "negro", "", "", "").

famositico("Franklin Chang", "hombre", "67", "san jose", "", "exaustronauta", "", "negro", "", "", "").
famositico("Clodomiro Picado", "hombre", "57", "nicaragua", "san jose", "cientifico", "", "negro", "clorito", "", "").

famositico("Oscar Arias", "hombre", "77", "san jose", "", "expresidente", "","gris", "", "", "").

famositico("Francisca Carrasco", "mujer", "64","cartago","san jose", "militar", "", "negro", "pancha", "", "").
famositico("Juan Santamaria", "hombre", "25", "alajuela", "nicaragua", "militar", "", "negro","tamborcillo", "", "").




% famositico(Nombre, Genero, Edad,LugarDeNacimiento, LugarDeFallecimiento, Profesion, Estatura, ColorDeCabello, Apodo, Posicion, Equipo)

%Buscar en la base de datos los famositicos de acuerdo al genero
buscar_genero(Genero,Lista):-findall(Nombre,famositico(Nombre,Genero,_,_,_,_,_,_,_,_,_),Lista).

% Buscar en la base de datos los famositicos de acuerdo al lugar de nacimiento
buscar_nacimiento(LugarNacimiento,Lista):- findall(Nombre,famositico(Nombre,_,_,LugarNacimiento,_,_,_,_,_,_,_),Lista).

%Buscar en la base de datos los famositicos de acuerdo al equipo
buscar_equipo(Equipo,Lista):-findall(Nombre,famositico(Nombre,_,_,_,_,_,_,_,_,_,Equipo),Lista).

%Buscar personajes por medio de todas las respuestas
buscar_personaje(Genero,Edad,Nacimiento,Fallecimiento,Profesion,Estatura,Color,Apodo,Posicion,Equipo,Lista):-findall(Nombre,famositico(Nombre,Genero,Edad,Nacimiento,Fallecimiento,Profesion,Estatura,Color,Apodo,Posicion,Equipo),Lista).


