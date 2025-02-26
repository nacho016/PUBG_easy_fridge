program easy_fridge;

uses uPilaElement, uTelement,umenu, crt, uColaString;



var
	opc: char;
    i: integer;
    first: boolean;
    s: string;

begin
    //CÓDIGO DE PRUEBA

    initialize(pila);
    initialize_queue(cola);
    comidas.des:= 'Café.';
    comidas.com:= 'Macarrones con tomatico.';
    comidas.cen:= 'No hay cena, somos estudiantes';
    push(pila, comidas);
    comidas.des:= 'Café y cruasán.';
    comidas.com:= 'Cocido.';
    comidas.cen:= 'No hay cena, somos estudiantes';
    push(pila, comidas);
    enqueue(cola, '');
    enqueue(cola, '');
    enqueue(cola, '');
    //FIN DE CÓDIGO DE PRUEBA
    logo;
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
                    writeln('a) Añadir fecha de caducidad de alimento.');
                    writeln('b) Eliminar la fecha de caducidad más reciente.');
                    writeln('c) Consultar fecha más reciente de caducidad.');
                    readln(opc);
                    case opc of
                        'a':
                            begin
                                writeln('Escribe el nombre de un producto seguido de su fecha de caducidad. (Tomate frito 31/01/1999):');
                                readln(s);
                                enqueue(cola, s);
                            end;
                        'b':
                            begin
                                dequeue(cola);
                                writeln('Se ha borrado la última fecha de caducidad.');
                            end;
                        'c': if not(empty_queue(cola)) then writeln(uColaString.first(cola)) else writeln('No hay fechas almacenadas.');
                        else writeln('Esa no es una opción válida.');
                        end;
                        readln();
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
                                uPilaElement.clear(pila);
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
    ClrScr;
    logo;
	until opc = '8';
	readln();
end.
