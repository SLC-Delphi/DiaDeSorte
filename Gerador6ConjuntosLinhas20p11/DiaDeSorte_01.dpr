program DiaDeSorte_01;

uses
  Vcl.Forms,
  Gerador6ConjuntosLinhas20p11 in 'Gerador6ConjuntosLinhas20p11.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
