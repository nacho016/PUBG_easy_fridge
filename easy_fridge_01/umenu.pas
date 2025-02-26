unit umenu; 
interface
    procedure menuinicial();
    procedure logo;
    procedure menu;
implementation
uses crt;
procedure logo;
	begin
		textcolor(magenta);
        writeln(' /$$$$$$$$                               /$$$$$$$$        /$$       /$$                    '); writeln('| $$_____/                              | $$_____/       |__/      | $$                    '); writeln('| $$        /$$$$$$   /$$$$$$$ /$$   /$$| $$     /$$$$$$  /$$  /$$$$$$$  /$$$$$$   /$$$$$$ '); writeln('| $$$$$    |____  $$ /$$_____/| $$  | $$| $$$$$ /$$__  $$| $$ /$$__  $$ /$$__  $$ /$$__  $$'); writeln('| $$__/     /$$$$$$$|  $$$$$$ | $$  | $$| $$__/| $$  \__/| $$| $$  | $$| $$  \ $$| $$$$$$$$'); writeln('| $$       /$$__  $$ \____  $$| $$  | $$| $$   | $$      | $$| $$  | $$| $$  | $$| $$_____/'); writeln('| $$$$$$$$|  $$$$$$$ /$$$$$$$/|  $$$$$$$| $$   | $$      | $$|  $$$$$$$|  $$$$$$$|  $$$$$$$'); writeln('|________/ \_______/|_______/  \____  $$|__/   |__/      |__/ \_______/ \____  $$ \_______/'); writeln('                               /$$  | $$                                /$$  \ $$          '); writeln('                              |  $$$$$$/                               |  $$$$$$/          '); writeln('                               \______/                                 \______/           ');
        textcolor(white);
        writeln;
    end;
procedure menuinicial();
    begin
        writeln('1.Productos en la nevera');
        delay(300);
       writeln('2. Crear lista de la compra');
         delay(300);
	    writeln('3. Registro alimentario');
         delay(300);
	    writeln('4. Estadisticas de consumo');
         delay(300);
	    writeln('5. Recetas disponibles');
         delay(300);
	    writeln('6. Revisar Caducidad de los alimentos');
         delay(300);
	    writeln('7. Plan de comidas semanales');
         delay(300);
	    writeln('8. Salir');
         delay(300);
		writeln('Escoja una opción:');
         delay(300);
    end;
procedure menu;
begin
        writeln('1. Productos en la nevera');
	    writeln('2. Crear lista de la compra');
	    writeln('3. Registro alimentario');
	    writeln('4. Estadisticas de consumo');
	    writeln('5. Recetas disponibles');
	    writeln('6. Revisar Caducidad de los alimentos');
	    writeln('7. Plan de comidas semanales');
	    writeln('8. Salir');
end;
end.

