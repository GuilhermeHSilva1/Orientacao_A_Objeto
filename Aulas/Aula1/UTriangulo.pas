unit UTriangulo;

interface

type
  TTriangulo = class
    public
      a:Double;
      b:Double;
      c:Double;

      function Area:Double;
  end;

implementation

function TTriangulo.Area: Double;
var
  xP:Double;
  begin
    xP := (a+b+c) / 2;
    Result:= Sqrt(xP * (xP-a) * (xP-b) * (xP-c) );
  end;

end.
