program DiadeSorte.Cj6Linhas20Numeros_01;

uses
  Vcl.Forms,
  Analise_Cj6Linhas20Numeros_01 in 'cj6Linhas20Numeros_01\AnalisadorCj6Linhas20Numeros_01\Analise_Cj6Linhas20Numeros_01.pas' {Form1};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
