unit uTElement;

interface

    uses sysutils;

    type
        tElement = record
            des: string;
            com: string;
            cen: string;
        end;

    procedure assign(var e: tElement; e2 : tElement);
    function toString(e: tElement): string;

implementation

    procedure assign(var e: tElement; e2 : tElement);
        begin
            e.des:= e2.des;
            e.com:= e2.com;
            e.cen:= e2.cen;
        end;

    function toString(e: tElement): string;
        begin
            toString:= 'Desayuno: ' + e.des + ' Comida: ' + e.com + ' Cena: ' + e.cen;
        end;

end.
