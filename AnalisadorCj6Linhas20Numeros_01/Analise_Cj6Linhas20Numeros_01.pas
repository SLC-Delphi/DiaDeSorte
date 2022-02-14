unit Analise_Cj6Linhas20Numeros_01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, StrUtils;

type
  TForm1 = class(TForm)
    Label36: TLabel;
    MEM_COMBINACOES_TODAS: TMemo;
    PA_TOPO: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    Memo_Combinacoes_Todas: TMemo;
    pgc_AbasPrincipais: TPageControl;
    TabSheet1: TTabSheet;
    Scbx_GABARITO: TScrollBox;
    Label7: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Stgr_Base20: TStringGrid;
    Stgr_Sequencias14: TStringGrid;
    Bbt_gerarSequencias: TBitBtn;
    Stgr_Base17VF: TStringGrid;
    Stgr_Sequencias14Ordenadas: TStringGrid;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_TodosNumerosP17: TStringGrid;
    Ibq_E_SORTEIO_15N: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    IBQ_COMBINACOES: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Stgr_Sequencias13: TStringGrid;
    Label5: TLabel;
    Stgr_Sequencias13Ordenadas: TStringGrid;
    Stgr_Sequencias12Ordenadas: TStringGrid;
    Label6: TLabel;
    Stgr_Sequencias12: TStringGrid;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Stgr_Sequencias11Ordenadas: TStringGrid;
    Stgr_Sequencias11: TStringGrid;
    Label11: TLabel;
    Stgr_Sequencias10: TStringGrid;
    Stgr_Sequencias10Ordenadas: TStringGrid;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Stgr_Sequencias09: TStringGrid;
    Stgr_Sequencias09Ordenadas: TStringGrid;
    Label15: TLabel;
    Stgr_Sequencias08Ordenadas: TStringGrid;
    Stgr_Sequencias08: TStringGrid;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Stgr_Sequencias07Ordenadas: TStringGrid;
    Stgr_Sequencias07: TStringGrid;
    PA_PREPARAR: TPanel;
    La_MensagensPreparar: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    BBT_PREPARAR1: TBitBtn;
    BitBtn2: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    PA_GERAR: TPanel;
    Label41: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    CB_MODO_FILTRO: TComboBox;
    Cbx_LinhasProcessar: TComboBox;
    Cbx_FiltroDos4Numeros: TComboBox;
    pa_FimAnalisador: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BitBtn_BlocoDeNotas: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_gerarSequenciasClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotasClick(Sender: TObject);
  private
    procedure PreenchimentoInicialPadrao;
    procedure Zerar_FLAGTodosNumeros;
    procedure Falso_Linha1TodosNumeros;
    procedure Falso_Linha2TodosNumeros;
    procedure Falso_Linha3TodosNumeros;
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure GerarSequenciasDe13;
    procedure GerarSequenciasDe12;
    procedure GerarSequenciasDe11;
    procedure GerarSequenciasDe14;
    procedure GerarSequenciasDe10;
    procedure GerarSequenciasDe07;
    procedure GerarSequenciasDe08;
    procedure GerarSequenciasDe09;
    procedure BlocoDeNotas1;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
   SELF.ClientWidth := 1500;
   SELF.ClientHeight := 750;
   SELF.Top := 27;
   SELF.Left := 9;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Scbx_GABARITO.Visible := True;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 160;
   PreenchimentoInicialPadrao;
     pa_FimAnalisador.Visible := False;
     pa_FimAnalisador.Left := 9500;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   TRY
      BEGIN
         Ibq_COMBINACOES.Close;
         IBDatabase1.Close;
      END
   EXCEPT
      //
   END; // TRY
end;




procedure TForm1.Bbt_gerarSequenciasClick(Sender: TObject);
begin
  GerarSequenciasDe14();
  GerarSequenciasDe13();
  GerarSequenciasDe12();
  GerarSequenciasDe11();
  GerarSequenciasDe10();
  GerarSequenciasDe09();
  GerarSequenciasDe08();
  GerarSequenciasDe07();
  pa_FimAnalisador.Visible := True;
  pa_FimAnalisador.Left := 770;
end;



procedure TForm1.GerarSequenciasDe14;
var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 15 do
      begin
        Stgr_Sequencias14.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias14.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias14.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias14Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias14Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 14 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias14.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias14Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias14.RowCount := viLinhas;
  Stgr_Sequencias14Ordenadas.RowCount := viLinhas;
end;



procedure TForm1.GerarSequenciasDe13;
var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 14 do
      begin
        Stgr_Sequencias13.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias13.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias13.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias13Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias13Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 13 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias13.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias13Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias13.RowCount := viLinhas;
  Stgr_Sequencias13Ordenadas.RowCount := viLinhas;
end;


procedure TForm1.GerarSequenciasDe12;
var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 13 do
      begin
        Stgr_Sequencias12.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias12.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias12.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias12Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias12Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 12 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias12.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias12Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias12.RowCount := viLinhas;
  Stgr_Sequencias12Ordenadas.RowCount := viLinhas;
end;



procedure TForm1.GerarSequenciasDe11;
Var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 12 do
      begin
        Stgr_Sequencias11.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias11.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias11.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias11Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias11Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 11 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias11.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias11Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias11.RowCount := viLinhas;
  Stgr_Sequencias11Ordenadas.RowCount := viLinhas;
end;



procedure TForm1.GerarSequenciasDe10;
Var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 11 do
      begin
        Stgr_Sequencias10.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias10.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias10.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias10Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias10Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 10 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias10.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias10Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias10.RowCount := viLinhas;
  Stgr_Sequencias10Ordenadas.RowCount := viLinhas;
end;


procedure TForm1.GerarSequenciasDe09;
Var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 10 do
      begin
        Stgr_Sequencias09.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias09.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias09.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias09Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias09Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 09 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias09.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias09Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias09.RowCount := viLinhas;
  Stgr_Sequencias09Ordenadas.RowCount := viLinhas;
end;



procedure TForm1.GerarSequenciasDe08;
Var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 09 do
      begin
        Stgr_Sequencias08.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias08.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias08.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias08Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias08Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 08 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias08.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias08Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias08.RowCount := viLinhas;
  Stgr_Sequencias08Ordenadas.RowCount := viLinhas;
end;


procedure TForm1.GerarSequenciasDe07;
Var
  viLinhas: Integer;
  viContar: Integer;
  viQuantiaGerar: Integer;
  viGerarSequencias: Integer;
  viColunaGerar, ViContarCelulas: Integer;
begin
  viLinhas := 1;
  for viContar := 1 to stgr_Base20.RowCount - 1 do
  begin
    for viQuantiaGerar := 0 to 19 do
    begin
      for viGerarSequencias := 2 to 08 do
      begin
        Stgr_Sequencias07.Cells[0, viLinhas] := viLinhas.ToString;
        Stgr_Sequencias07.Cells[1, viLinhas] := viContar.ToString;
        viColunaGerar := viGerarSequencias + viQuantiaGerar;
        if viColunaGerar >= 22 then
          viColunaGerar := viColunaGerar - 20;
        Stgr_Sequencias07.Cells[viGerarSequencias, viLinhas] := Stgr_Base20.Cells[viColunaGerar, viContar];
      end;
      Stgr_Sequencias07Ordenadas.Cells[0, viLinhas] := viLinhas.ToString;
      Stgr_Sequencias07Ordenadas.Cells[1, viLinhas] := viContar.ToString;
      Falso_Linha1TodosNumeros();
      for viGerarSequencias := 1 to 07 do
      begin
         Stgr_Todos_Numeros.Cells[(STRtoINT(Stgr_Sequencias07.Cells[viGerarSequencias+1, viLinhas])), 1] := 'V';
      end;
      ViContarCelulas := 1;
      FOR viGerarSequencias :=1 TO 31 DO
      BEGIN
         IF (Stgr_Todos_Numeros.Cells[viGerarSequencias,1]='V') THEN
         BEGIN
              Stgr_Sequencias07Ordenadas.Cells [ViContarCelulas+1, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viGerarSequencias,0]),2) ;
              ViContarCelulas := ViContarCelulas+1;
         END; // IF (STRGR_TODOS_NUMEROS
      END; // FOR viGerarSequencias
      viLinhas := viLinhas + 1;
    end;
  end;
  Stgr_Sequencias07.RowCount := viLinhas;
  Stgr_Sequencias07Ordenadas.RowCount := viLinhas;
end;



procedure TForm1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
end;

procedure TForm1.BitBtn_BlocoDeNotasClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas1();
end;



procedure TForm1.BlocoDeNotas1;
var
   viQtdLinhasBloco, viContarLinhas, viContarColunas: integer;
   vcQuery, vsCombinacoes2, vcTitulo, vcSubTitulo: String;
Begin
   // Seqüências de 14
   vcTitulo := 'Analisador 6 Conjuntos de 20 Números [Dia de Sorte]';
   vcSubTitulo := '20 Seqüências de 14 - original';
   Memo_Combinacoes_Todas.Clear;
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias14.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias14.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 14 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias14.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 14 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias14Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias14Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 14 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias14Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;

   // Seqüências de 13
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 13 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias13.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias13.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 13 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias13.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 13 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias13Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias13Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 13 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias13Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;


   // Seqüências de 12
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 12 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias12.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias12.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 12 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias12.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 12 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias12Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias12Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 12 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias12Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;


   // Seqüências de 11
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 11 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias11.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias11.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 11 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias11.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 11 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias11Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias11Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 11 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias11Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;


   // Seqüências de 10
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 10 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias10.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias10.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 10 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias10.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 10 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias10Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias10Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 10 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias10Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;


   // Seqüências de 09
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 09 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias09.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias09.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 09 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias09.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 09 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias09Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias09Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 09 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias09Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;


   // Seqüências de 08
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 08 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias08.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias08.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 08 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias08.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 08 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias08Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias08Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 08 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias08Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;



   // Seqüências de 07
   vcTitulo := #13+#13+'=================================================='+#13;
   vcSubTitulo := '20 Seqüências de 07 - original';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias07.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias07.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 07 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias07.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;
   //
   vcSubTitulo := #13+#13+#13+'20 Seqüências de 07 - odenado';
   viQtdLinhasBloco := 20*((Stgr_Base20.RowCount )-1);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viQtdLinhasBloco));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   For viContarLinhas :=1 to viQtdLinhasBloco do
   BEGIN
      vsCombinacoes2 := 'Linha: '+ RIGHTSTR ('00'+Stgr_Sequencias07Ordenadas.Cells[0,viContarLinhas],3);
      vsCombinacoes2 := vsCombinacoes2 + ' Cjto Origem: '+ RIGHTSTR ('0'+Stgr_Sequencias07Ordenadas.Cells[1,viContarLinhas],2) + ' - ';
      for viContarColunas := 1 to 07 do
      begin
         vsCombinacoes2 := vsCombinacoes2 + ' '+ Stgr_Sequencias07Ordenadas.Cells[01+viContarColunas,viContarLinhas];
      end;
     Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
   END; // FOR
   Memo_Combinacoes_Todas.Repaint;




   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\Analisador6Conjuntosde20Numeros.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\Analisador6Conjuntosde20Numeros.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\CXLOTOFACIL\Analisador6Conjuntosde20Numeros.TXT');
End;



// ===============================
procedure TForm1.Zerar_FLAGTodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 31 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 0] := viContar.ToString;
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


procedure TForm1.Falso_Linha1TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 31 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 1] := 'F';
  end;
end;


procedure TForm1.Falso_Linha2TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 31 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 2] := 'F';
  end;
end;


procedure TForm1.Falso_Linha3TodosNumeros();
var
  viContar: Integer;
begin
  for viContar := 1 to 31 do
  begin
    Stgr_Todos_Numeros.Cells[viContar, 3] := 'F';
  end;
end;


function TForm1.IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
 begin
   if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
 end;




Procedure TForm1.PreenchimentoInicialPadrao;
var
  viContar: Integer;
begin
   Zerar_FLAGTodosNumeros();
   for viContar := 2 to 21 do
   begin
      Stgr_Base20.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
  //01
   Stgr_Base20.Cells[0, 01] := '01';
   Stgr_Base20.Cells[1, 01] := 'V';
   Stgr_Base20.Cells[2, 01] := '01';   Stgr_Base20.Cells[3, 1] := '14';
   Stgr_Base20.Cells[4, 01] := '03';   Stgr_Base20.Cells[5, 1] := '13';
   Stgr_Base20.Cells[6, 01] := '04';   Stgr_Base20.Cells[7, 1] := '12';
   Stgr_Base20.Cells[8, 01] := '06';   Stgr_Base20.Cells[9, 1] := '11';
   Stgr_Base20.Cells[10, 01] := '08';  Stgr_Base20.Cells[11, 1] := '16';
   Stgr_Base20.Cells[12, 01] := '15';  Stgr_Base20.Cells[13, 1] := '24';
   Stgr_Base20.Cells[14, 01] := '22';  Stgr_Base20.Cells[15, 1] := '25';
   Stgr_Base20.Cells[16, 01] := '21';  Stgr_Base20.Cells[17, 1] := '27';
   Stgr_Base20.Cells[18, 01] := '20';  Stgr_Base20.Cells[19, 1] := '29';
   Stgr_Base20.Cells[20, 01] := '18';
   Stgr_Base20.Cells[21, 01] := '30';
  //02
   Stgr_Base20.Cells[0, 02] := '02';
   Stgr_Base20.Cells[1, 02] := 'V';
//02 14 03 13 05 11 07 10 08 16 15 24 22 26 20 28 18 29 17 31
   Stgr_Base20.Cells[2, 02] := '02';        Stgr_Base20.Cells[3, 02] := '14';
   Stgr_Base20.Cells[4, 02] := '03';        Stgr_Base20.Cells[5, 02] := '13';
   Stgr_Base20.Cells[6, 02] := '05';        Stgr_Base20.Cells[7, 02] := '11';
   Stgr_Base20.Cells[8, 02] := '07';        Stgr_Base20.Cells[9, 02] := '10';
   Stgr_Base20.Cells[10, 02] := '08';       Stgr_Base20.Cells[11, 02] := '16';
   Stgr_Base20.Cells[12, 02] := '15';       Stgr_Base20.Cells[13, 02] := '24';
   Stgr_Base20.Cells[14, 02] := '22';       Stgr_Base20.Cells[15, 02] := '26';
   Stgr_Base20.Cells[16, 02] := '20';       Stgr_Base20.Cells[17, 02] := '28';
   Stgr_Base20.Cells[18, 02] := '18';       Stgr_Base20.Cells[19, 02] := '29';
   Stgr_Base20.Cells[20, 02] := '17';
   Stgr_Base20.Cells[21, 02] := '31';
   //03
   Stgr_Base20.Cells[0, 03] := '03';
   Stgr_Base20.Cells[1, 03] := 'V';
//02 14 04 13 06 11 07 10 08 16 15 25 22 27 19 28 18 29 17 30
   Stgr_Base20.Cells[2, 03] := '02';        Stgr_Base20.Cells[3, 03] := '14';
   Stgr_Base20.Cells[4, 03] := '04';        Stgr_Base20.Cells[5, 03] := '13';
   Stgr_Base20.Cells[6, 03] := '06';        Stgr_Base20.Cells[7, 03] := '11';
   Stgr_Base20.Cells[8, 03] := '07';        Stgr_Base20.Cells[9, 03] := '10';
   Stgr_Base20.Cells[10, 03] := '08';       Stgr_Base20.Cells[11, 03] := '16';
   Stgr_Base20.Cells[12, 03] := '15';       Stgr_Base20.Cells[13, 03] := '25';
   Stgr_Base20.Cells[14, 03] := '22';       Stgr_Base20.Cells[15, 03] := '27';
   Stgr_Base20.Cells[16, 03] := '19';       Stgr_Base20.Cells[17, 03] := '28';
   Stgr_Base20.Cells[18, 03] := '18';       Stgr_Base20.Cells[19, 03] := '29';
   Stgr_Base20.Cells[20, 03] := '17';
   Stgr_Base20.Cells[21, 03] := '30';
   //04
   Stgr_Base20.Cells[0, 04] := '04';
   Stgr_Base20.Cells[1, 04] := 'V';
//02 14 03 13 04 12 07 11 08 16 15 24 22 25 21 28 20 29 17 30
   Stgr_Base20.Cells[2, 04] := '02';        Stgr_Base20.Cells[3, 04] := '14';
   Stgr_Base20.Cells[4, 04] := '03';        Stgr_Base20.Cells[5, 04] := '13';
   Stgr_Base20.Cells[6, 04] := '04';        Stgr_Base20.Cells[7, 04] := '12';
   Stgr_Base20.Cells[8, 04] := '07';        Stgr_Base20.Cells[9, 04] := '11';
   Stgr_Base20.Cells[10, 04] := '08';       Stgr_Base20.Cells[11, 04] := '16';
   Stgr_Base20.Cells[12, 04] := '15';       Stgr_Base20.Cells[13, 04] := '24';
   Stgr_Base20.Cells[14, 04] := '22';       Stgr_Base20.Cells[15, 04] := '25';
   Stgr_Base20.Cells[16, 04] := '21';       Stgr_Base20.Cells[17, 04] := '28';
   Stgr_Base20.Cells[18, 04] := '20';       Stgr_Base20.Cells[19, 04] := '29';
   Stgr_Base20.Cells[20, 04] := '17';
   Stgr_Base20.Cells[21, 04] := '30';
   //05
   Stgr_Base20.Cells[0, 05] := '05';
   Stgr_Base20.Cells[1, 05] := 'V';
//01 14 06 13 08 12 09 11 10 16 15 23 22 24 20 25 18 26 17 31
   Stgr_Base20.Cells[2, 05] := '01';        Stgr_Base20.Cells[3, 05] := '14';
   Stgr_Base20.Cells[4, 05] := '06';        Stgr_Base20.Cells[5, 05] := '13';
   Stgr_Base20.Cells[6, 05] := '08';        Stgr_Base20.Cells[7, 05] := '12';
   Stgr_Base20.Cells[8, 05] := '09';        Stgr_Base20.Cells[9, 05] := '11';
   Stgr_Base20.Cells[10, 05] := '10';       Stgr_Base20.Cells[11, 05] := '16';
   Stgr_Base20.Cells[12, 05] := '15';       Stgr_Base20.Cells[13, 05] := '23';
   Stgr_Base20.Cells[14, 05] := '22';       Stgr_Base20.Cells[15, 05] := '24';
   Stgr_Base20.Cells[16, 05] := '20';       Stgr_Base20.Cells[17, 05] := '25';
   Stgr_Base20.Cells[18, 05] := '18';       Stgr_Base20.Cells[19, 05] := '26';
   Stgr_Base20.Cells[20, 05] := '17';
   Stgr_Base20.Cells[21, 05] := '31';
   //06
   Stgr_Base20.Cells[0, 06] := '06';
   Stgr_Base20.Cells[1, 06] := 'V';
//01 13 02 12 03 11 08 10 09 18 14 23 22 24 21 29 20 30 19 31
   Stgr_Base20.Cells[2, 06] := '01';        Stgr_Base20.Cells[3, 06] := '13';
   Stgr_Base20.Cells[4, 06] := '02';        Stgr_Base20.Cells[5, 06] := '12';
   Stgr_Base20.Cells[6, 06] := '03';        Stgr_Base20.Cells[7, 06] := '11';
   Stgr_Base20.Cells[8, 06] := '08';        Stgr_Base20.Cells[9, 06] := '10';
   Stgr_Base20.Cells[10, 06] := '09';       Stgr_Base20.Cells[11, 06] := '18';
   Stgr_Base20.Cells[12, 06] := '14';       Stgr_Base20.Cells[13, 06] := '23';
   Stgr_Base20.Cells[14, 06] := '22';       Stgr_Base20.Cells[15, 06] := '24';
   Stgr_Base20.Cells[16, 06] := '21';       Stgr_Base20.Cells[17, 06] := '29';
   Stgr_Base20.Cells[18, 06] := '20';       Stgr_Base20.Cells[19, 06] := '30';
   Stgr_Base20.Cells[20, 06] := '19';
   Stgr_Base20.Cells[21, 06] := '31';

   Stgr_Base20.RowCount := 7;
   Stgr_Base20.ColWidths[0] := 59;
   Stgr_Base20.Height := Scbx_GABARITO.Height - 81;
   Stgr_Base20.Repaint;
   Stgr_Sequencias14.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias14Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias13.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias13Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias12.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias12Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias11.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias11Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias10.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias10Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias09.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias09Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias08.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias08Ordenadas.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias07.Height := Scbx_GABARITO.Height - 59;
   Stgr_Sequencias07Ordenadas.Height := Scbx_GABARITO.Height - 59;
end;



end.
