unit uPilaElement;

interface

    uses sysutils, uTElement;

    type
        tnodo = record
            info: tElement;
            ant: ^tnodo;
        end;

        tPilaElementos = ^tnodo;

    var
        pila: tPilaElementos;
        comidas: tElement;

    { Inicializa la pila }
    procedure initialize(var p: tPilaElementos);
    { Agrega un elemento a la pila }
    procedure push(var p: tPilaElementos; x: tElement);
    { Elimina el elemento de la cima de la pila }
    procedure pop(var p: tPilaElementos);
    { Devuelve el elemento de la cima de la pila }
    function peek(p: tPilaElementos): tElement;
    { Devuelve true si la pila está vacía }
    function isEmpty(p: tPilaElementos): boolean;

    { ------------------ Funcionalidad extra -------------- }

    { Libera los recursos de la pila }
    procedure clear(var p: tPilaElementos);
    { Imprime los elementos de la pila }
    function toString(p: tPilaElementos): string;
    { Invertir pila}
    procedure invertirPila(var p: tPilaElementos);


implementation

{ Inicializa la pila }
    procedure initialize(var p: tPilaElementos);
        begin
            p := nil; { Inicializa la cima de la pila a nil }
        end;

    { Devuelve true si la pila está vacía }
    function isEmpty(p: tPilaElementos): boolean;
        begin
            isEmpty := p = nil; { Devuelve true si la cima es nil }
        end;

    { Agrega un elemento a la pila }
    procedure push(var p: tPilaElementos; x: tElement);
        var
            nuevo: ^tnodo;
        begin
            new(nuevo); { Crea un nuevo nodo }
            assign(nuevo^.info, x); { Asigna el valor al nuevo nodo }
            nuevo^.ant:= p; { Enlaza el nuevo nodo con la anterior cima }
            p:= nuevo; { Actualiza la cima de la pila }
        end;

    { Elimina el elemento de la cima de la pila }
    procedure pop(var p: tPilaElementos);
        var
            aux: ^tnodo;
        begin
            if not isEmpty(p) then
                begin
                    aux:= p; { Guarda el nodo a eliminar }
                    p:= aux^.ant; { Actualiza la cima de la pila }
                    dispose(aux); { Libera la memoria del nodo eliminado }
                end;
        end;

    { Devuelve el elemento de la cima de la pila }
    function peek(p: tPilaElementos): tElement;
        var
            e: tElement;
        begin
            if not isEmpty(p) then assign(e, p^.info); { Devuelve el valor de la cima de la pila }
            peek:= e;
        end;

        { ----------------------------------------------------- }
        { ------------------ Funcionalidad extra -------------- }
        { ----------------------------------------------------- }

    { Libera los recursos de la pila }
    procedure clear(var p: tPilaElementos);
        begin
            while not isEmpty(p) do pop(p); { Elimina los nodos de la pila }
        end;

    { Imprime los elementos de la pila }
    function toString(p: tPilaElementos): string;
        var
            aux: ^tnodo;
            s: string;
        begin
            s := '' + #13#10;       { Inicializa la cadena de texto }
            if not isEmpty(p) then
                begin
                    aux := p; { Inicializa el nodo auxiliar con la cima de la pila }
                    while aux <> nil do
                        begin
                            s := s + utElement.toString(aux^.info) + #13#10; { Concatena el elemento a la cadena de texto }
                            aux := aux^.ant; { Avanza al nodo anterior }
                        end;
                end;
            toString := s; { Devuelve la cadena de texto }
        end;
//Código nuevo
    procedure invertirPila(var p: tPilaElementos);
        var
            aux: tPilaElementos;
        begin
            initialize(aux);
            while not(isEmpty(p)) do
                begin
                    push(aux, peek(p));
                    pop(p);
                end;
                p:= aux;
        end;

end.
