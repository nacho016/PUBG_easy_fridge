program easy_fridge;

uses uPilaElement, uTelement,umenu, crt ;



var
	opc: char;
    i: integer;
    first: boolean;

begin
    //CÓDIGO DE PRUEBA
    logo;
    initialize(pila);
    comidas.des:= 'Café.';
    comidas.com:= 'Macarrones con tomatico.';
    comidas.cen:= 'No hay cena, somos estudiantes';
    push(pila, comidas);
    comidas.des:= 'Café y cruasán.';
    comidas.com:= 'Cocido.';
    comidas.cen:= 'No hay cena, somos estudiantes';
    push(pila, comidas);
    //FIN DE CÓDIGO DE PRUEBA
    menuinicial;
    first:= true;
	repeat 
    if first = false then menu else first := false;
    readln(opc);
		case opc of
			'1':          //Productos en la nevera
				begin
                end;	//Fin 1
			'2':          //Lista de la compra
				begin

				end;	//Fin 2
			'3':    //Registro alimentario
				begin
				end;	//Fin 3
			'4':    //Estadísticas de consumo
				begin
				end;	//Fin 4
			'5':    //Recetas disponibles
				begin
				end;	//Fin 5
			'6':    //Revisar caducidad de los alimentos
				begin
				end;	//Fin 6
			'7':    //Planificar comidas semana
				begin
                    writeln('a) Añadir comidas para una semana.');
                    writeln('b) Eliminar comidas se un día.');
                    writeln('c) Consultar las comidas del día.');
                    readln(opc);
                        case opc of
                        'a':
                            begin
                                clear(pila);
                                writeln('Introduce tu plan semanal de comidas. Primero mañana, después pasado mañana, etc.');
                                for i:= 0 to 6 do
                                    begin
                                        write('Desayuno: ');
                                        readln(comidas.des);
                                        write('Comida: ');
                                        readln(comidas.com);
                                        write('Cena: ');
                                        readln(comidas.cen);
                                        push(pila, comidas);
                                    end;
                                    invertirPila(pila);
                            end;
                        'b':
                            begin
                                pop(pila);
                                writeln('Se ha borrado un día de comidas.');
                            end;
                        'c': if not(isEmpty(pila)) then writeln(uTElement.toString(peek(pila))) else writeln('No hay comidas programadas.');
                        else writeln('Esa no es una opción válida.');
                        end;
                        readln();
				end;	//Fin 7
			'8': writeln('Ha abandonado el programa.');
			else writeln('Esa no es una opción válida.');
		end;	//fin del opc
        
	until opc = '8';
	readln();
end.
