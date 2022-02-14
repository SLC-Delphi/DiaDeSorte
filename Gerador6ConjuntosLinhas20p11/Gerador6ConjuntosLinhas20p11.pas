unit Gerador6ConjuntosLinhas20p11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, StrUtils, System.ImageList, Vcl.ImgList,
  VCLTee.TeCanvas;

type
  TForm1 = class(TForm)
    Label36: TLabel;
    MEM_COMBINACOES_TODAS: TMemo;
    pa_topo: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    Memo_Combinacoes_Todas: TMemo;
    pgc_AbasPrincipais: TPageControl;
    TabSheet1: TTabSheet;
    Stgr_Todos_Numeros: TStringGrid;
    Stgr_TodosNumerosP17: TStringGrid;
    Ibq_E_SORTEIO_15N: TIBQuery;
    Ds_E_SORTEIO_15N: TDataSource;
    IBQ_COMBINACOES: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    pa_preparar: TPanel;
    La_MensagensPreparar: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    bbt_PrepararOk: TBitBtn;
    bbt_PrepararVoltar: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    pa_fimAnalisador: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label50: TLabel;
    La_total100Repetidos: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BitBtn_BlocoDeNotas: TBitBtn;
    pa_BarraLateral: TPanel;
    pa_menuGerar_20p11: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    bbt_gerarOk: TBitBtn;
    bbt_gerarVoltar: TBitBtn;
    pa_Status: TPanel;
    pa_gerar: TPanel;
    imglst_Gerador: TImageList;
    bt_preparar: TButton;
    pa_Gerador6cj20p11: TPanel;
    pa_Gabarito6cj20p11: TPanel;
    pa_Resultado6cj20p11: TPanel;
    scbx_gabarito6cj20p11: TScrollBox;
    Label7: TLabel;
    Label54: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Stgr_base20: TStringGrid;
    Stgr_base11: TStringGrid;
    Stgr_Base20VF: TStringGrid;
    Label4: TLabel;
    Stgr_linhasDe3: TStringGrid;
    Label5: TLabel;
    stgr_bloco1Com10Linhas: TStringGrid;
    stgr_Modo1_5blocos4: TStringGrid;
    Label8: TLabel;
    stgr_Modo2_5blocos4: TStringGrid;
    Label9: TLabel;
    Label10: TLabel;
    stgr_Modo3_5blocos4: TStringGrid;
    stgr_Modo4_5blocos4: TStringGrid;
    Label11: TLabel;
    stgr_bloco2Com10LinhasParaCj2: TStringGrid;
    Label12: TLabel;
    Label13: TLabel;
    stgr_bloco2Com10LinhasParaCj3: TStringGrid;
    Label14: TLabel;
    stgr_bloco2Com10LinhasParaCj5: TStringGrid;
    stgr_bloco2Com10LinhasParaCj4: TStringGrid;
    Label15: TLabel;
    Label18: TLabel;
    stgr_bloco2Com10LinhasParaCj1: TStringGrid;
    Label19: TLabel;
    Label20: TLabel;
    stgr_bloco3Com10LinhasParaCj1: TStringGrid;
    Label21: TLabel;
    stgr_bloco4Com10LinhasParaCj1: TStringGrid;
    ScrollBox_resultado6cj20p11: TScrollBox;
    stgr_cjBase11: TStringGrid;
    Label17: TLabel;
    stgr_cjBase20: TStringGrid;
    Label16: TLabel;
    Label6: TLabel;
    Bevel_conjunto01: TBevel;
    Label22: TLabel;
    stgr_bloco4Com10LinhasParaCj2: TStringGrid;
    Label23: TLabel;
    stgr_bloco3Com10LinhasParaCj2: TStringGrid;
    Label24: TLabel;
    Bevel1: TBevel;
    Label25: TLabel;
    stgr_bloco2Com10LinhasParaCj6: TStringGrid;
    Bevel2: TBevel;
    Label26: TLabel;
    Label27: TLabel;
    stgr_bloco3Com10LinhasParaCj3: TStringGrid;
    stgr_bloco4Com10LinhasParaCj3: TStringGrid;
    Label28: TLabel;
    Bevel3: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    stgr_bloco3Com10LinhasParaCj4: TStringGrid;
    Label31: TLabel;
    stgr_bloco4Com10LinhasParaCj4: TStringGrid;
    Label32: TLabel;
    stgr_bloco3Com10LinhasParaCj5: TStringGrid;
    Label33: TLabel;
    stgr_bloco4Com10LinhasParaCj5: TStringGrid;
    Bevel4: TBevel;
    Label34: TLabel;
    Bevel5: TBevel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    stgr_bloco4Com10LinhasParaCj6: TStringGrid;
    stgr_bloco3Com10LinhasParaCj6: TStringGrid;
    stgr_cjBloco3: TStringGrid;
    stgr_cjBloco4: TStringGrid;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    stgr_cjBloco2: TStringGrid;
    Label42: TLabel;
    Bevel6: TBevel;
    lab_NumeroConjunto: TLabel;
    lab_NumeroLinha: TLabel;
    Label43: TLabel;
    stgr_base20Parte1: TStringGrid;
    stgr_base20Parte2: TStringGrid;
    Label46: TLabel;
    stgr_base20Parte3: TStringGrid;
    Label48: TLabel;
    stgr_base20Parte4: TStringGrid;
    Label49: TLabel;
    stgr_base20Parte5: TStringGrid;
    Label51: TLabel;
    bt_gerar: TButton;
    Label52: TLabel;
    cbx_numero16noFiltro10Linhas: TComboBox;
    cbx_processarBlocosDe5: TComboBox;
    Label56: TLabel;
    Label62: TLabel;
    stgr_acBase20Parte1: TStringGrid;
    Label64: TLabel;
    stgr_acBase20Parte2: TStringGrid;
    Label65: TLabel;
    stgr_acBase20Parte3: TStringGrid;
    Label66: TLabel;
    stgr_acBase20Parte4: TStringGrid;
    Label67: TLabel;
    stgr_acBase20Parte5: TStringGrid;
    Label61: TLabel;
    stgr_7NumerosPreSorteados: TStringGrid;
    stgr_6NumerosDaBase20: TStringGrid;
    Label57: TLabel;
    stgr_1NumeroDaBase11: TStringGrid;
    Label59: TLabel;
    stgr_24NumerosPreNaoSorteados: TStringGrid;
    Label68: TLabel;
    Label69: TLabel;
    cbx_qtdLinhasnoFiltro10Linhas: TComboBox;
    Label70: TLabel;
    stgr_flagsPre: TStringGrid;
    Label71: TLabel;
    pgbr_6NumerosBase: TProgressBar;
    Label72: TLabel;
    pgbr_numerosPre: TProgressBar;
    ckbx_GerarCompleto: TCheckBox;
    bt_gerar_NovosFiltros1: TButton;
    Label73: TLabel;
    Pgbr_gravarDados1: TProgressBar;
    Label74: TLabel;
    Pgbr_naoRepetidos1: TProgressBar;
    Label75: TLabel;
    cbx_filtro4Blocos: TComboBox;
    stgr_flagFiltro4Blocos: TStringGrid;
    Label76: TLabel;
    Label77: TLabel;
    pgbr_filtro4Blocos: TProgressBar;
    BitBtn_BlocoDeNotas2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_gerarSequenciasClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotasClick(Sender: TObject);
    procedure bbt_gerarOkClick(Sender: TObject);
    procedure bbt_gerarVoltarClick(Sender: TObject);
    procedure bt_prepararClick(Sender: TObject);
    procedure bbt_PrepararVoltarClick(Sender: TObject);
    procedure bbt_PrepararOkClick(Sender: TObject);
    procedure bt_gerarClick(Sender: TObject);
    procedure BitBtn_BlocoDeNotas2Click(Sender: TObject);
  private
    procedure PreenchimentoInicialPadrao;
    procedure Zerar_FLAGTodosNumeros;
    procedure Falso_Linha1TodosNumeros;
    procedure Falso_Linha2TodosNumeros;
    procedure Falso_Linha3TodosNumeros;
    function IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
    procedure BlocoDeNotas1;
    procedure Gerando6NumerosDaBase20;
    procedure AnaliseCombinatoria3Base20Parte1;
    procedure AnaliseCombinatoria2Base20Parte1;
    procedure AnaliseCombinatoria1Base20Parte1;
    procedure AnaliseCombinatoria1Base20Parte2;
    procedure AnaliseCombinatoria2Base20Parte2;
    procedure AnaliseCombinatoria3Base20Parte2;
    procedure AnaliseCombinatoria1Base20Parte3;
    procedure AnaliseCombinatoria1Base20Parte4;
    procedure AnaliseCombinatoria1Base20Parte5;
    procedure AnaliseCombinatoria2Base20Parte3;
    procedure AnaliseCombinatoria2Base20Parte4;
    procedure AnaliseCombinatoria2Base20Parte5;
    procedure AnaliseCombinatoria3Base20Parte3;
    procedure AnaliseCombinatoria3Base20Parte4;
    procedure AnaliseCombinatoria3Base20Parte5;
    procedure AnaliseCombinatoriaBase20Parte12345;
    procedure Gerando1NumerosDaBase11;
    procedure Gerando7NumerosPreSorteados;
    procedure GravarComb07e24Pre1;
    procedure LerComb07e24Pre1;
    procedure Filtro4Blocos;
    function Filtro4BlocosFlagBloco4 (viLinha: integer) : String;
    function Filtro4BlocosFlagBloco2(viLinha: integer): String;
    function Filtro4BlocosFlagBloco1(viLinha, viConjunto: integer): String;
    function Filtro4BlocosFlagBloco3(viLinha: integer): String;
    procedure BlocoDeNotas2;

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
   SELF.ClientWidth := 1480;
   SELF.ClientHeight := 760;
   SELF.Top := 15;
   SELF.Left := 5;
   // SELF.Visible := TRUE;
   Bbt_CLOSE.Left := SELF.ClientWidth - 35;
   Scbx_gabarito6cj20p11.Visible := True;
   Pa_INICIAL.Enabled := TRUE;
   Pa_INICIAL.Left := 520;
   Pa_INICIAL.Top := 160;
   Zerar_FLAGTodosNumeros();
   PreenchimentoInicialPadrao;
   bt_gerar.Enabled := False;
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
//
end;





procedure TForm1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
end;



procedure TForm1.BitBtn_BlocoDeNotas2Click(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas2();
end;


procedure TForm1.BitBtn_BlocoDeNotasClick(Sender: TObject);
begin
   pa_FimAnalisador.Visible := False;
   BlocoDeNotas1();
end;



procedure TForm1.BlocoDeNotas1;
var
   viContar: integer;
   vcQuery, vsCombinacoes2, vcTitulo, vcSubTitulo: String;
Begin
   vcTitulo := 'DIA DE SORTE  -  Resultado dos números gerados a partir 6 conjuntos linhas 20x11 ns - SIMPLES';
   vcSubTitulo := '[Processar os blocos de 5] => '+ cbx_processarBlocosDe5.Text +#13+ '[Número 16 no filtro 10 linhas de 3 -considerar] =>  '+cbx_numero16noFiltro10Linhas.Text + #13 +
      '[Quantidade de linhas no filtro 10 linhas de 3 - considerar] => ' + cbx_qtdLinhasnoFiltro10Linhas.Text +#13+ '[Filtro 4 blocos por conjunto referente a cada linha dos 20 nº de base] => '+ cbx_filtro4Blocos.Text;
   Memo_Combinacoes_Todas.Clear;
   vcQuery := vcQuery + 'select count(distinct(dados07numeros)) as QTD ';
   vcQuery := vcQuery + 'from Cjto_6l20p11_7pre ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   viContar := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsInteger;
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + stgr_flagFiltro4Blocos.Cells[0,1]);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viContar));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   vcQuery := 'select distinct(dados07numeros|| '+#39+'  -  '+#39+' || dados24numeros)  as dados ';
   vcQuery := vcQuery + ' from Cjto_6l20p11_7pre ';
   vcQuery := vcQuery + 'order by dados07numeros ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   Self.Ibq_COMBINACOES.First;
   WHILE (NOT(Self.Ibq_COMBINACOES.Eof)) DO
   BEGIN
      vsCombinacoes2 := '';
      vsCombinacoes2 := trim(Self.Ibq_COMBINACOES.FIELDBYNAME('DADOS').AsString);
      Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
      Self.Ibq_COMBINACOES.Next;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT');
    winExec('Notepad.exe C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT');
End;



procedure TForm1.BlocoDeNotas2;
var
   viContar: integer;
   vcQuery, vsCombinacoes2, vcTitulo, vcSubTitulo: String;
Begin
   vcTitulo := 'DIA DE SORTE  -  Resultado dos números gerados a partir 6 conjuntos linhas 20x11 ns - SIMPLES';
   vcSubTitulo := '[Processar os blocos de 5] => '+ cbx_processarBlocosDe5.Text +#13+ '[Número 16 no filtro 10 linhas de 3 -considerar] =>  '+cbx_numero16noFiltro10Linhas.Text + #13 +
      '[Quantidade de linhas no filtro 10 linhas de 3 - considerar] => ' + cbx_qtdLinhasnoFiltro10Linhas.Text +#13+ '[Filtro 4 blocos por conjunto referente a cada linha dos 20 nº de base] => '+ cbx_filtro4Blocos.Text;
   Memo_Combinacoes_Todas.Clear;
   vcQuery := vcQuery + 'select count(distinct(dados07numeros)) as QTD ';
   vcQuery := vcQuery + 'from Cjto_6l20p11_7pre ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   viContar := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsInteger;
   Memo_Combinacoes_Todas.Lines.Add('Dados Processados/Gerados: ' + stgr_flagFiltro4Blocos.Cells[0,1]);
   Memo_Combinacoes_Todas.Lines.Add(vcTitulo);
   Memo_Combinacoes_Todas.Lines.Add(vcSubTitulo);
   Memo_Combinacoes_Todas.Lines.Add('TOTAL: ' + INTtoSTR(viContar));
   Memo_Combinacoes_Todas.Lines.Add('----------------------------');
   vcQuery := 'select distinct(dados07numeros) as dados ';
   vcQuery := vcQuery + ' from Cjto_6l20p11_7pre ';
   vcQuery := vcQuery + 'order by dados07numeros ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vcQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   Self.Ibq_COMBINACOES.First;
   WHILE (NOT(Self.Ibq_COMBINACOES.Eof)) DO
   BEGIN
      vsCombinacoes2 := '';
      vsCombinacoes2 := trim(Self.Ibq_COMBINACOES.FIELDBYNAME('DADOS').AsString);
      Memo_Combinacoes_Todas.Lines.Add(vsCombinacoes2);
      Self.Ibq_COMBINACOES.Next;
   END; // FOR viContar
   Memo_Combinacoes_Todas.Repaint;
   Memo_Combinacoes_Todas.Lines.SaveToFile('C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT');
    winExec('Notepad.exe C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT', sw_shownormal);
   showmessage('BLOCO DE NOTAS GERADO' + #13+#13+#13 + 'Arquivo está localizado em:' +#13+#13+'C:\Programacao\DiaDeSorte\6_conjuntos_20x11_Simples.TXT');
End;



procedure TForm1.bt_prepararClick(Sender: TObject);
begin
   lab_numeroConjunto.Caption := '00';
   lab_numeroLinha.Caption := '000';
   pa_preparar.Left := 590;
   pa_preparar.Top := 210;
   pa_preparar.Enabled := True;
   pa_preparar.Visible := True;
   bt_preparar.Enabled := False;
end;


procedure TForm1.bbt_PrepararOkClick(Sender: TObject);
begin
   pgbr_6NumerosBase.Position := 0 ;
   pgbr_6NumerosBase.Repaint;
   pgbr_numerosPre.Position := 0 ;
   pgbr_numerosPre.Repaint;
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   pgbr_filtro4Blocos.Position := 0;
   pgbr_filtro4Blocos.Repaint;
   Pgbr_naoRepetidos1.Position := 0;
   Pgbr_naoRepetidos1.Repaint;
   Try
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('CREATE TABLE CJTO_6L20P11_7PRE( BLOCO20 VARCHAR(2), DADOS07NUMEROS VARCHAR(22), BLOCO06 VARCHAR(7), DADOS24NUMEROS VARCHAR(73) COLLATE PT_BR);') ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   Except
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('DELETE FROM CJTO_6L20P11_7PRE;')  ;
      IBQ_Combinacoes.ExecSQL;
      IBQ_Combinacoes.SQL.Clear;
      IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      IBQ_Combinacoes.ExecSQL ;
      IBQ_Combinacoes.Transaction.StartTransaction;
      IBQ_Combinacoes.Transaction.Commit;
      IBQ_Combinacoes.Transaction.StartTransaction;
   End;
   sleep (1000);
   showmessage('Preparar concluído');
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
   bt_gerar.Enabled := True;
end;


procedure TForm1.bbt_PrepararVoltarClick(Sender: TObject);
begin
   bt_preparar.Enabled := True;
   pa_preparar.Visible := False;
   pa_preparar.Repaint;
end;



procedure TForm1.bt_gerarClick(Sender: TObject);
begin
   pa_menuGerar_20p11.Left := 410;
   pa_menuGerar_20p11.Top := 120;
//   bbt_gerarOk.Top := 235;
//   bbt_gerarVoltar.Top := 235;
//   pa_menuGerar_20p11.Height := 286;
   ckbx_GerarCompleto.Checked := False;
   bbt_gerarOk.Repaint;
   bbt_gerarVoltar.Repaint;
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := True;
   pa_menuGerar_20p11.Repaint;
   stgr_flagFiltro4Blocos.Cells[0,0] := '0';
   stgr_flagFiltro4Blocos.Repaint;
   stgr_flagFiltro4Blocos.Cells[0,1] := '0';
   stgr_flagFiltro4Blocos.Repaint;
end;


procedure TForm1.bbt_gerarOkClick(Sender: TObject);
var
   vsQuery : String;
begin
   bbt_gerarVoltar.Click;
   bt_gerar.Enabled := False;
   LA_gINICIO_100REPET.Caption := DateToStr(Date) + ' - ' +TimeToStr(Time);
   Gerando6NumerosDaBase20;
   Gerando1NumerosDaBase11;
   Gerando7NumerosPreSorteados;
   if ckbx_GerarCompleto.Checked = False then
   begin
      if (cbx_filtro4Blocos.ItemIndex = 1) then
         Filtro4Blocos();
      GravarComb07e24Pre1();
      LerComb07e24Pre1();
      // encerrar     -- no final
      // bloco de notas     -- no final
   end
   else
   begin
      //  NÂO ordenar 7 na geração
   end;
   LA_gFIM_GERAR.Caption := DateToStr(Date) +' - ' + TimeToStr(Time);
   vsQuery := vsQuery + 'select count(distinct(dados07numeros)) as QTD ';
   vsQuery := vsQuery + 'from Cjto_6l20p11_7pre ';
   Self.Ibq_COMBINACOES.SQL.Clear;
   Self.Ibq_COMBINACOES.SQL.Add(vsQuery);
   Self.Ibq_COMBINACOES.Prepare;
   Self.Ibq_COMBINACOES.Open;
   LA_rQTD_COMB.Caption :=stgr_flagFiltro4Blocos.Cells[0,1];
   La_total100Repetidos.Caption := Self.Ibq_COMBINACOES.FIELDBYNAME('QTD').AsString;
   pa_FimAnalisador.Visible := True;
   pa_FimAnalisador.Left := 770;
end;


function TForm1.Filtro4BlocosFlagBloco1(viLinha, viConjunto: integer) : String;
Var
   viContarColunas, viContador1 : Integer;
Begin
   Falso_Linha1TodosNumeros;
   Falso_Linha2TodosNumeros;
   for viContarColunas := 02 to 08 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas, viLinha])), 1] := 'V';
   end;
   for viContarColunas := 01 to 10 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_bloco1Com10Linhas.Cells[viContarColunas, viConjunto])), 2] := 'V';
   end;
   viContarColunas := 0;
   for viContador1 := 01 to 31 do
   begin
      if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'V') and (Stgr_Todos_Numeros.Cells[viContador1,2] = 'V') then
      begin
         viContarColunas := viContarColunas +1;
      end;
   end;
   if viContarColunas = 1  then
   begin
      stgr_flagFiltro4Blocos.Cells[1,viLinha] := 'V' ;
      Result := 'V';
   end
   else
   begin
      stgr_flagFiltro4Blocos.Cells[1,viLinha] := 'F';
      Result := 'F';
   end;
End;

function TForm1.Filtro4BlocosFlagBloco2(viLinha: integer) : String;
Var
   viContarColunas, viContador1 : Integer;
Begin
   Falso_Linha1TodosNumeros;
   Falso_Linha2TodosNumeros;
   for viContarColunas := 02 to 08 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas, viLinha])), 1] := 'V';
   end;
   for viContarColunas := 02 to 15 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_cjBloco2.Cells[viContarColunas, 1])), 2] := 'V';
   end;
   viContarColunas := 0;
   for viContador1 := 01 to 31 do
   begin
      if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'V') and (Stgr_Todos_Numeros.Cells[viContador1,2] = 'V') then
      begin
         viContarColunas := viContarColunas +1;
      end;
   end;
   if viContarColunas = 5  then
   begin
      stgr_flagFiltro4Blocos.Cells[2,viLinha] := 'V' ;
      Result := 'V';
   end
   else
   begin
      stgr_flagFiltro4Blocos.Cells[2,viLinha] := 'F';
      Result := 'F';
   end;
End;


function TForm1.Filtro4BlocosFlagBloco3(viLinha: integer) : String;
Var
   viContarColunas, viContador1 : Integer;
Begin
   Falso_Linha1TodosNumeros;
   Falso_Linha2TodosNumeros;
   for viContarColunas := 02 to 08 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas, viLinha])), 1] := 'V';
   end;
   for viContarColunas := 02 to 10 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_cjBloco3.Cells[viContarColunas, 1])), 2] := 'V';
   end;
   viContarColunas := 0;
   for viContador1 := 01 to 31 do
   begin
      if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'V') and (Stgr_Todos_Numeros.Cells[viContador1,2] = 'V') then
      begin
         viContarColunas := viContarColunas +1;
      end;
   end;
   if viContarColunas = 1  then
   begin
      stgr_flagFiltro4Blocos.Cells[3,viLinha] := 'V' ;
      Result := 'V';
   end
   else
   begin
      stgr_flagFiltro4Blocos.Cells[3,viLinha] := 'F';
      Result := 'F';
   end;
End;

function TForm1.Filtro4BlocosFlagBloco4(viLinha: integer) : String;
Var
   viContarColunas, viContador1 : Integer;
Begin
   Falso_Linha1TodosNumeros;
   Falso_Linha2TodosNumeros;
   for viContarColunas := 02 to 26 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_24NumerosPreNaoSorteados.Cells[viContarColunas, viLinha])), 1] := 'V';
   end;
   for viContarColunas := 02 to 07 do
   begin
      Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_cjBloco4.Cells[viContarColunas, 1])), 2] := 'V';
   end;
   viContarColunas := 0;
   for viContador1 := 01 to 31 do
   begin
      if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'V') and (Stgr_Todos_Numeros.Cells[viContador1,2] = 'V') then
      begin
         viContarColunas := viContarColunas +1;
      end;
   end;
   if viContarColunas = stgr_cjBloco4.Cells[1, 1].ToInteger  then
   begin
      stgr_flagFiltro4Blocos.Cells[4,viLinha] := 'V' ;
      Result := 'V';
   end
   else
   begin
      stgr_flagFiltro4Blocos.Cells[4,viLinha] := 'F';
      Result := 'F';
   end;
End;



procedure TForm1.Filtro4Blocos();
Var
   viContarLinhas, viContarBase, viContarConjuntos, viTotalLinhas : Integer;
   viColunas, viConjunto : Integer;
   vsCond1, vsCond2, vsCond3, vsCond4 : String;
Begin
   pgbr_filtro4Blocos.Position := 0 ;
   pgbr_filtro4Blocos.Repaint;
   ScrollBox_resultado6cj20p11.HorzScrollBar.Position := 2700;
   ScrollBox_resultado6cj20p11.Repaint;
   viTotalLinhas := trunc((stgr_7NumerosPreSorteados.RowCount-1)/1);
   for viContarLinhas := 1 to viTotalLinhas do
   begin
      if stgr_flagsPre.Cells[01,viContarlinhas].ToUpper='F' then
         continue;
      if stgr_flagsPre.Cells[02,viContarlinhas].ToUpper='F' then
         continue;
      viConjunto := stgr_7NumerosPreSorteados.Cells[01,viContarLinhas].ToInteger;
      for viContarBase := 1 to stgr_base20.RowCount-1 do
      begin
   //      if not(Stgr_Base20VF.Cells[1,viContarBase].ToUpper = 'V') then
   //         continue;
         for viContarConjuntos := 1 to 10 do
         begin
            // preencher vetores conforme o número do conjunto e a linha a ser processada
            case viConjunto of
            1 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj1.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj1.Cells[viColunas,viContarConjuntos];
                  end;
                  stgr_cjBloco3.Cells[10,1] := '00';
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj1.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj1.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj1.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj1.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and  (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     break;
               End;
            2 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj2.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj2.Cells[viColunas,viContarConjuntos];
                  end;
                  stgr_cjBloco3.Cells[10,1] := '00';
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj2.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj2.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj2.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj2.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and  (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     Break;
               End;
            3 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj3.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj3.Cells[viColunas,viContarConjuntos];
                  end;
                  stgr_cjBloco3.Cells[10,1] := '00';
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj3.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj3.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj3.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj3.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     Break;
               End;
            4 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj4.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj4.Cells[viColunas,viContarConjuntos];
                  end;
                  stgr_cjBloco3.Cells[10,1] := '00';
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj4.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj4.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj4.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj4.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     Break;
               End;
            5 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj5.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj5.Cells[viColunas,viContarConjuntos];
                  end;
                  stgr_cjBloco3.Cells[10,1] := '00';
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj5.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj5.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj5.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj5.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     Break;
               End;
            6 :Begin
                  for viColunas := 1 to stgr_bloco2Com10LinhasParaCj6.ColCount-1 do
                  begin
                     stgr_cjBloco2.Cells[viColunas,1] := stgr_bloco2Com10LinhasParaCj6.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco3Com10LinhasParaCj6.ColCount-1 do
                  begin
                     stgr_cjBloco3.Cells[viColunas,1] := stgr_bloco3Com10LinhasParaCj6.Cells[viColunas,viContarConjuntos];
                  end;
                  for viColunas := 1 to stgr_bloco4Com10LinhasParaCj6.ColCount-1 do
                  begin
                     stgr_cjBloco4.Cells[viColunas,1] := stgr_bloco4Com10LinhasParaCj6.Cells[viColunas,viContarConjuntos];
                  end;
                  vsCond1 := Filtro4BlocosFlagBloco1(viContarLinhas, viConjunto).ToUpper;
                  vsCond2 := Filtro4BlocosFlagBloco2(viContarLinhas).ToUpper;
                  vsCond3 := Filtro4BlocosFlagBloco3(viContarLinhas).ToUpper;
                  vsCond4 := Filtro4BlocosFlagBloco4(viContarLinhas).ToUpper;
                  if (vsCond1 = 'V') and (vsCond2 = 'V') and (vsCond3 = 'V') and (vsCond4 = 'V') then
                     Break;
               End;
            end; // case
         end;
      end;
      if (viContarLinhas MOD 100) = 0 then
      begin
         stgr_flagFiltro4Blocos.Cells[0,0] :=  viContarLinhas.ToString;
         stgr_flagFiltro4Blocos.Cells[0,1] :=  viTotalLinhas.ToString;
         stgr_flagFiltro4Blocos.Repaint;
         stgr_cjBloco2.Repaint;
         stgr_cjBloco3.Repaint;
         stgr_cjBloco4.Repaint;
         pgbr_filtro4Blocos.Position := Trunc(viContarLinhas/viTotalLinhas*100);
         pgbr_filtro4Blocos.Repaint;
         pgc_AbasPrincipais.Repaint;
      end;
   end;
   stgr_flagFiltro4Blocos.Cells[0,0] :=  viTotalLinhas.ToString;
   stgr_flagFiltro4Blocos.Repaint;
   stgr_flagFiltro4Blocos.RowCount := stgr_7NumerosPreSorteados.RowCount;
   stgr_flagFiltro4Blocos.Repaint;
   pgbr_filtro4Blocos.Position := 100;
   pgbr_filtro4Blocos.Repaint;
   pgc_AbasPrincipais.Repaint;
End;


procedure TForm1.Gerando6NumerosDaBase20();
Var
   viContarLinhasBase20, viContarCjBase20, viContarAComb1, viContarAComb2, viContarAComb3, viContarAComb4, viContarAComb5 : Integer;
   viContar, viLinhas, viColunas : Integer;
Begin
   pgbr_6NumerosBase.Position := 0 ;
   pgbr_6NumerosBase.Repaint;
   ScrollBox_resultado6cj20p11.HorzScrollBar.Position := 745;
   ScrollBox_resultado6cj20p11.Repaint;
   viLinhas := 1;
   for viContarLinhasBase20 := 1 to stgr_base20.RowCount-1 do
   begin
      if not(Stgr_Base20VF.Cells[1,viContarLinhasBase20].ToUpper = 'V') then
         continue;
      for viContar := 1 to 20 do
      begin
         stgr_cjBase20.Cells[viContar+1,1] := Stgr_base20.Cells[viContar+1,viContarLinhasBase20];
      end;
      for viContar := 1 to 11 do
      begin
         stgr_cjBase11.Cells[viContar+1,1] := Stgr_base11.Cells[viContar+1,viContarLinhasBase20];
      end;
      stgr_cjBase20.Cells[0,1] := viContarLinhasBase20.ToString;
      stgr_cjBase11.Cells[0,1] := viContarLinhasBase20.ToString;
      stgr_cjBase20.Repaint;
      stgr_cjBase11.Repaint;
      lab_NumeroConjunto.Caption := viContarLinhasBase20.ToString;
      lab_NumeroLinha.Caption := '00';
      for viContarCjBase20 := 1 to 4 do
      begin
         stgr_base20Parte1.Cells[viContarCjBase20,1] := stgr_cjBase20.Cells[viContarCjBase20+01,1];
         stgr_base20Parte2.Cells[viContarCjBase20,1] := stgr_cjBase20.Cells[viContarCjBase20+05,1];
         stgr_base20Parte3.Cells[viContarCjBase20,1] := stgr_cjBase20.Cells[viContarCjBase20+09,1];
         stgr_base20Parte4.Cells[viContarCjBase20,1] := stgr_cjBase20.Cells[viContarCjBase20+13,1];
         stgr_base20Parte5.Cells[viContarCjBase20,1] := stgr_cjBase20.Cells[viContarCjBase20+17,1];
      end;
//   end;
         // * Modo 1:    (2-2-1-1-0 em qualquer ordenamento nos 5 blocos)
         if (cbx_processarBlocosDe5.ItemIndex = 0) then
         begin
            for viContar := 1 to stgr_Modo1_5blocos4.RowCount - 1 do
            begin
               // --> Preparando as Análises combinatórias
               AnaliseCombinatoriaBase20Parte12345 ;
               if stgr_Modo1_5blocos4.Cells[1, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte1
               else
               if stgr_Modo1_5blocos4.Cells[1, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte1;
               if stgr_Modo1_5blocos4.Cells[2, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte2
               else
               if stgr_Modo1_5blocos4.Cells[2, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte2;
               if stgr_Modo1_5blocos4.Cells[3, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte3
               else
               if stgr_Modo1_5blocos4.Cells[3, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte3;
               if stgr_Modo1_5blocos4.Cells[4, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte4
               else
               if stgr_Modo1_5blocos4.Cells[4, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte4;
               if stgr_Modo1_5blocos4.Cells[5, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte5
               else
               if stgr_Modo1_5blocos4.Cells[5, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte5;
               // --> Montar os 6 números varrendo cada uma das Análises combinatórias
               stgr_base20Parte1.Repaint;
               stgr_base20Parte2.Repaint;
               stgr_base20Parte3.Repaint;
               stgr_base20Parte4.Repaint;
               stgr_base20Parte5.Repaint;
                  for viContarAComb1 := 1 to stgr_acBase20Parte1.RowCount-1 do
                  begin
                     for viContarAComb2 := 1 to stgr_acBase20Parte2.RowCount-1 do
                     begin
                           for viContarAComb3 := 1 to stgr_acBase20Parte3.RowCount-1 do
                           begin
                              for viContarAComb4 := 1 to stgr_acBase20Parte4.RowCount-1 do
                              begin
                                 for viContarAComb5 := 1 to stgr_acBase20Parte5.RowCount-1 do
                                 begin
                                    viColunas :=3;
                                     stgr_6NumerosDaBase20.Cells[1,viLinhas] := stgr_acBase20Parte1.Cells[0, 0] +stgr_acBase20Parte2.Cells[0, 0] +stgr_acBase20Parte3.Cells[0, 0] +stgr_acBase20Parte4.Cells[0, 0] +stgr_acBase20Parte5.Cells[0, 0] ;
                                     stgr_6NumerosDaBase20.Cells[2,viLinhas] := viContarLinhasBase20.ToString;
                                     stgr_6NumerosDaBase20.Cells[0,viLinhas] := viLinhas.ToString;
                                    if not(stgr_acBase20Parte1.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[1,viContarAComb1];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte1.Cells[0, 0].ToInteger =2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[2,viContarAComb1];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte2.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[1,viContarAComb2];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte2.Cells[0, 0].ToInteger =2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[2,viContarAComb2];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte3.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[1,viContarAComb3];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte3.Cells[0, 0].ToInteger =2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[2,viContarAComb3];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte4.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[1,viContarAComb4];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte4.Cells[0, 0].ToInteger =2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[2,viContarAComb4];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte5.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[1,viContarAComb5];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte5.Cells[0, 0].ToInteger =2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[2,viContarAComb5];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    viLinhas := viLinhas +1;
                                 end;
                              end;
                           end;
                     end;
                  end;
               pgbr_6NumerosBase.Position := Trunc(viContar/(stgr_Modo1_5blocos4.RowCount-1)*100) ;
               pgbr_6NumerosBase.Repaint;
               sleep(100);
            end;
         end else
         // * Modo 2:    (3-2-1-0-0 em qualquer ordenamento nos 5 blocos)
         if (cbx_processarBlocosDe5.ItemIndex = 1) then
         begin
            for viContar := 1 to stgr_Modo2_5blocos4.RowCount - 1 do
            begin
               // --> Preparando as Análises combinatórias
               AnaliseCombinatoriaBase20Parte12345 ;
               if stgr_Modo2_5blocos4.Cells[1, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte1
               else
               if stgr_Modo2_5blocos4.Cells[1, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte1
               else
               if stgr_Modo2_5blocos4.Cells[1, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte1;
               if stgr_Modo2_5blocos4.Cells[2, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte2
               else
               if stgr_Modo2_5blocos4.Cells[2, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte2
               else
               if stgr_Modo2_5blocos4.Cells[2, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte2;
               if stgr_Modo2_5blocos4.Cells[3, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte3
               else
               if stgr_Modo2_5blocos4.Cells[3, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte3
               else
               if stgr_Modo2_5blocos4.Cells[3, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte3;
               if stgr_Modo2_5blocos4.Cells[4, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte4
               else
               if stgr_Modo2_5blocos4.Cells[4, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte4
               else
               if stgr_Modo2_5blocos4.Cells[4, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte4;
               if stgr_Modo2_5blocos4.Cells[5, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte5
               else
               if stgr_Modo2_5blocos4.Cells[5, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte5
               else
               if stgr_Modo2_5blocos4.Cells[5, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte5;
               // --> Montar os 6 números varrendo cada uma das Análises combinatórias
               stgr_base20Parte1.Repaint;
               stgr_base20Parte2.Repaint;
               stgr_base20Parte3.Repaint;
               stgr_base20Parte4.Repaint;
               stgr_base20Parte5.Repaint;
                  for viContarAComb1 := 1 to stgr_acBase20Parte1.RowCount-1 do
                  begin
                     for viContarAComb2 := 1 to stgr_acBase20Parte2.RowCount-1 do
                     begin
                           for viContarAComb3 := 1 to stgr_acBase20Parte3.RowCount-1 do
                           begin
                              for viContarAComb4 := 1 to stgr_acBase20Parte4.RowCount-1 do
                              begin
                                 for viContarAComb5 := 1 to stgr_acBase20Parte5.RowCount-1 do
                                 begin
                                    viColunas :=3;
                                     stgr_6NumerosDaBase20.Cells[1,viLinhas] := stgr_acBase20Parte1.Cells[0, 0] +stgr_acBase20Parte2.Cells[0, 0] +stgr_acBase20Parte3.Cells[0, 0] +stgr_acBase20Parte4.Cells[0, 0] +stgr_acBase20Parte5.Cells[0, 0] ;
                                     stgr_6NumerosDaBase20.Cells[2,viLinhas] := viContarLinhasBase20.ToString;
                                     stgr_6NumerosDaBase20.Cells[0,viLinhas] := viLinhas.ToString;
                                    if not(stgr_acBase20Parte1.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[1,viContarAComb1];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte1.Cells[0, 0].ToInteger >=2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[2,viContarAComb1];
                                          viColunas := viColunas +1;
                                       end;
                                       if (stgr_acBase20Parte1.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[3,viContarAComb1];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte2.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[1,viContarAComb2];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte2.Cells[0, 0].ToInteger >=2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[2,viContarAComb2];
                                          viColunas := viColunas +1;
                                       end;
                                       if (stgr_acBase20Parte2.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[3,viContarAComb2];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte3.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[1,viContarAComb3];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte3.Cells[0, 0].ToInteger >=2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[2,viContarAComb3];
                                          viColunas := viColunas +1;
                                       end;
                                       if (stgr_acBase20Parte3.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[3,viContarAComb3];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte4.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[1,viContarAComb4];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte4.Cells[0, 0].ToInteger >=2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[2,viContarAComb4];
                                          viColunas := viColunas +1;
                                       end;
                                       if (stgr_acBase20Parte4.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[3,viContarAComb4];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte5.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[1,viContarAComb5];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte5.Cells[0, 0].ToInteger >=2) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[2,viContarAComb5];
                                          viColunas := viColunas +1;
                                       end;
                                       if (stgr_acBase20Parte5.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[3,viContarAComb5];
                                          viColunas := viColunas +1;
                                       end;
                                    end;
                                    viLinhas := viLinhas +1;
                                 end;
                              end;
                           end;
                     end;
                  end;
               pgbr_6NumerosBase.Position := Trunc(viContar/(stgr_Modo2_5blocos4.RowCount-1)*100);
               pgbr_6NumerosBase.Repaint;
               sleep(100);
            end;
         end else
         // * Modo 3:    (3-1-1-1-0 em qualquer ordenamento nos 5 blocos)
         if (cbx_processarBlocosDe5.ItemIndex = 2) then
         begin
            for viContar := 1 to stgr_Modo3_5blocos4.RowCount - 1 do
            begin
               // --> Preparando as Análises combinatórias
               AnaliseCombinatoriaBase20Parte12345 ;
               if stgr_Modo3_5blocos4.Cells[1, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte1
               else
               if stgr_Modo3_5blocos4.Cells[1, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte1;
               if stgr_Modo3_5blocos4.Cells[2, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte2
               else
               if stgr_Modo3_5blocos4.Cells[2, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte2;
               if stgr_Modo3_5blocos4.Cells[3, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte3
               else
               if stgr_Modo3_5blocos4.Cells[3, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte3;
               if stgr_Modo3_5blocos4.Cells[4, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte4
               else
               if stgr_Modo3_5blocos4.Cells[4, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte4;
               if stgr_Modo3_5blocos4.Cells[5, viContar] = '1' then
                  AnaliseCombinatoria1Base20Parte5
               else
               if stgr_Modo3_5blocos4.Cells[5, viContar] = '3' then
                  AnaliseCombinatoria3Base20Parte5;
               // --> Montar os 6 números varrendo cada uma das Análises combinatórias
               stgr_base20Parte1.Repaint;
               stgr_base20Parte2.Repaint;
               stgr_base20Parte3.Repaint;
               stgr_base20Parte4.Repaint;
               stgr_base20Parte5.Repaint;
                  for viContarAComb1 := 1 to stgr_acBase20Parte1.RowCount-1 do
                  begin
                     for viContarAComb2 := 1 to stgr_acBase20Parte2.RowCount-1 do
                     begin
                           for viContarAComb3 := 1 to stgr_acBase20Parte3.RowCount-1 do
                           begin
                              for viContarAComb4 := 1 to stgr_acBase20Parte4.RowCount-1 do
                              begin
                                 for viContarAComb5 := 1 to stgr_acBase20Parte5.RowCount-1 do
                                 begin
                                    viColunas :=3;
                                     stgr_6NumerosDaBase20.Cells[1,viLinhas] := stgr_acBase20Parte1.Cells[0, 0] +stgr_acBase20Parte2.Cells[0, 0] +stgr_acBase20Parte3.Cells[0, 0] +stgr_acBase20Parte4.Cells[0, 0] +stgr_acBase20Parte5.Cells[0, 0] ;
                                     stgr_6NumerosDaBase20.Cells[2,viLinhas] := viContarLinhasBase20.ToString;
                                     stgr_6NumerosDaBase20.Cells[0,viLinhas] := viLinhas.ToString;
                                    if not(stgr_acBase20Parte1.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[1,viContarAComb1];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte1.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[2,viContarAComb1];
                                          stgr_6NumerosDaBase20.Cells[viColunas+1,viLinhas] := stgr_acBase20Parte1.Cells[3,viContarAComb1];
                                          viColunas := viColunas +2;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte2.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[1,viContarAComb2];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte2.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[2,viContarAComb2];
                                          stgr_6NumerosDaBase20.Cells[viColunas+1,viLinhas] := stgr_acBase20Parte2.Cells[3,viContarAComb2];
                                          viColunas := viColunas +2;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte3.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[1,viContarAComb3];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte3.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[2,viContarAComb3];
                                          stgr_6NumerosDaBase20.Cells[viColunas+1,viLinhas] := stgr_acBase20Parte3.Cells[3,viContarAComb3];
                                          viColunas := viColunas +2;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte4.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[1,viContarAComb4];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte4.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[2,viContarAComb4];
                                          stgr_6NumerosDaBase20.Cells[viColunas+1,viLinhas] := stgr_acBase20Parte4.Cells[3,viContarAComb4];
                                          viColunas := viColunas +2;
                                       end;
                                    end;
                                    if not(stgr_acBase20Parte5.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[1,viContarAComb5];
                                       viColunas := viColunas +1;
                                       if (stgr_acBase20Parte5.Cells[0, 0].ToInteger =3) then
                                       begin
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[2,viContarAComb5];
                                          stgr_6NumerosDaBase20.Cells[viColunas+1,viLinhas] := stgr_acBase20Parte5.Cells[3,viContarAComb5];
                                          viColunas := viColunas +2;
                                       end;
                                    end;
                                    viLinhas := viLinhas +1;
                                 end;
                              end;
                           end;
                     end;
                  end;
               pgbr_6NumerosBase.Position := Trunc(viContar/(stgr_Modo3_5blocos4.RowCount-1)*100);
               pgbr_6NumerosBase.Repaint;
               sleep(100);
            end;
         end else
         // * Modo 4:    (2-2-2-0-0 em qualquer ordenamento nos 5 blocos)
         if (cbx_processarBlocosDe5.ItemIndex = 3) then
         begin
            for viContar := 1 to stgr_Modo4_5blocos4.RowCount - 1 do
            begin
               // --> Preparando as Análises combinatórias
               AnaliseCombinatoriaBase20Parte12345 ;
               if stgr_Modo4_5blocos4.Cells[1, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte1;
               if stgr_Modo4_5blocos4.Cells[2, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte2;
               if stgr_Modo4_5blocos4.Cells[3, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte3;
               if stgr_Modo4_5blocos4.Cells[4, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte4;
               if stgr_Modo4_5blocos4.Cells[5, viContar] = '2' then
                  AnaliseCombinatoria2Base20Parte5;
               // --> Montar os 6 números varrendo cada uma das Análises combinatórias
               stgr_base20Parte1.Repaint;
               stgr_base20Parte2.Repaint;
               stgr_base20Parte3.Repaint;
               stgr_base20Parte4.Repaint;
               stgr_base20Parte5.Repaint;
                  for viContarAComb1 := 1 to stgr_acBase20Parte1.RowCount-1 do
                  begin
                     for viContarAComb2 := 1 to stgr_acBase20Parte2.RowCount-1 do
                     begin
                           for viContarAComb3 := 1 to stgr_acBase20Parte3.RowCount-1 do
                           begin
                              for viContarAComb4 := 1 to stgr_acBase20Parte4.RowCount-1 do
                              begin
                                 for viContarAComb5 := 1 to stgr_acBase20Parte5.RowCount-1 do
                                 begin
                                    viColunas :=3;
                                     stgr_6NumerosDaBase20.Cells[1,viLinhas] := stgr_acBase20Parte1.Cells[0, 0] +stgr_acBase20Parte2.Cells[0, 0] +stgr_acBase20Parte3.Cells[0, 0] +stgr_acBase20Parte4.Cells[0, 0] +stgr_acBase20Parte5.Cells[0, 0] ;
                                     stgr_6NumerosDaBase20.Cells[2,viLinhas] := viContarLinhasBase20.ToString;
                                     stgr_6NumerosDaBase20.Cells[0,viLinhas] := viLinhas.ToString;
                                    if not(stgr_acBase20Parte1.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[1,viContarAComb1];
                                       viColunas := viColunas +1;
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte1.Cells[2,viContarAComb1];
                                          viColunas := viColunas +1;
                                    end;
                                    if not(stgr_acBase20Parte2.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[1,viContarAComb2];
                                       viColunas := viColunas +1;
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte2.Cells[2,viContarAComb2];
                                          viColunas := viColunas +1;
                                    end;
                                    if not(stgr_acBase20Parte3.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[1,viContarAComb3];
                                       viColunas := viColunas +1;
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte3.Cells[2,viContarAComb3];
                                          viColunas := viColunas +1;
                                    end;
                                    if not(stgr_acBase20Parte4.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[1,viContarAComb4];
                                       viColunas := viColunas +1;
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte4.Cells[2,viContarAComb4];
                                          viColunas := viColunas +1;
                                    end;
                                    if not(stgr_acBase20Parte5.Cells[0, 0].ToInteger =0) then
                                    begin
                                       stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[1,viContarAComb5];
                                       viColunas := viColunas +1;
                                          stgr_6NumerosDaBase20.Cells[viColunas,viLinhas] := stgr_acBase20Parte5.Cells[2,viContarAComb5];
                                          viColunas := viColunas +1;
                                    end;
                                    viLinhas := viLinhas +1;
                                 end;
                              end;
                           end;
                     end;
                  end;
               pgbr_6NumerosBase.Position := Trunc(viContar/(stgr_Modo4_5blocos4.RowCount-1)*100);
               pgbr_6NumerosBase.Repaint;
               pgc_AbasPrincipais.Repaint;
               sleep(120);
            end;
         end; // If
   end; //  for viContarLinhasBase20
   pgbr_6NumerosBase.Position := 100 ;
   stgr_6NumerosDaBase20.RowCount := viLinhas;
   stgr_6NumerosDaBase20.Repaint;
   Self.WindowState := wsMinimized;
   Self.WindowState := wsNormal;
   pgc_AbasPrincipais.Repaint;
   pa_Status.Repaint;
   pgbr_6NumerosBase.Repaint;
   Self.Repaint;
End;


procedure TForm1.Gerando1NumerosDaBase11();
Var
   viContarLinhasBase11 : Integer;
   viContar, viLinhas : Integer;
Begin
   ScrollBox_resultado6cj20p11.HorzScrollBar.Position := 1000;
   ScrollBox_resultado6cj20p11.Repaint;
   viLinhas := 1;
   stgr_1NumeroDaBase11.RowCount :=2;
   for viContarLinhasBase11 := 1 to stgr_base20.RowCount-1 do
   begin
      if not(Stgr_Base20VF.Cells[1,viContarLinhasBase11].ToUpper = 'V') then
         continue;
      for viContar := 1 to 11 do
      begin
         stgr_1NumeroDaBase11.Cells[0,viLinhas] := viLinhas.ToString;
         stgr_1NumeroDaBase11.Cells[1,viLinhas] := viContarLinhasBase11.ToString;
         stgr_1NumeroDaBase11.Cells[2,viLinhas] := Stgr_base11.Cells[viContar+1,viContarLinhasBase11];
         viLinhas := viLinhas +1;
      end;
   end;
   stgr_1NumeroDaBase11.RowCount := viLinhas;
   stgr_1NumeroDaBase11.Repaint;
End;


procedure TForm1.Gerando7NumerosPreSorteados();
Var
   viContarLinhasBase20 : Integer;
   viContarLinhasBase11, viLinhas, viContarColunas, viContarLinhas, viTotalLinhas, viContador1, viContador2 : Integer;
Begin
   ScrollBox_resultado6cj20p11.HorzScrollBar.Position := 2000;
   ScrollBox_resultado6cj20p11.Repaint;
   pa_Status.Repaint;
   viLinhas := 1;
   stgr_7NumerosPreSorteados.RowCount :=2;
   viTotalLinhas := 0;
   for viContarLinhasBase20 := 1 to stgr_6NumerosDaBase20.RowCount-1 do
   begin
      for viContarLinhasBase11 := 1 to stgr_1NumeroDaBase11.RowCount-1 do
      begin
         if not((stgr_6NumerosDaBase20.Cells[2,viContarLinhasBase20].ToInteger) = (stgr_1NumeroDaBase11.Cells[1,viContarLinhasBase11].ToInteger)) then
            continue;
//            if viContarLinhasBase20=2049 then
//               showmessage(viContarLinhasBase20.ToString);
         stgr_24NumerosPreNaoSorteados.Cells[0,viLinhas] := viLinhas.ToString;
         stgr_24NumerosPreNaoSorteados.Cells[1,viLinhas] := stgr_6NumerosDaBase20.Cells[2,viContarLinhasBase20];
         stgr_24NumerosPreNaoSorteados.Cells[2,viLinhas] := stgr_6NumerosDaBase20.Cells[0,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[0,viLinhas] := viLinhas.ToString;
         stgr_7NumerosPreSorteados.Cells[1,viLinhas] := stgr_6NumerosDaBase20.Cells[2,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[2,viLinhas] := stgr_6NumerosDaBase20.Cells[3,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[3,viLinhas] := stgr_6NumerosDaBase20.Cells[4,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[4,viLinhas] := stgr_6NumerosDaBase20.Cells[5,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[5,viLinhas] := stgr_6NumerosDaBase20.Cells[6,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[6,viLinhas] := stgr_6NumerosDaBase20.Cells[7,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[7,viLinhas] := stgr_6NumerosDaBase20.Cells[8,viContarLinhasBase20];
         stgr_7NumerosPreSorteados.Cells[8,viLinhas] := stgr_1NumeroDaBase11.Cells[2,viContarLinhasBase11];
         Falso_Linha1TodosNumeros;
         for viContarColunas := 01 to 7 do
         begin
            Stgr_Todos_Numeros.Cells[(STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas+1, viLinhas])), 1] := 'V';
         end;
         // --> ordenar se for Gerar Simples
         if ckbx_GerarCompleto.Checked = False then
         begin
            viContarColunas := 2;
            for viContador1 := 01 to 31 do
            begin
               if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'V') then
               begin
                  stgr_7NumerosPreSorteados.Cells[viContarColunas,viLinhas] := rightstr('0'+Stgr_Todos_Numeros.Cells[viContador1, 0],2);
                  viContarColunas := viContarColunas +1;
               end;
            end;
         end;
         // --> 24 números não sorteados
         viContarColunas := 3;
         for viContador1 := 01 to 31 do
         begin
            if (Stgr_Todos_Numeros.Cells[viContador1,1] = 'F') then
            begin
               stgr_24NumerosPreNaoSorteados.Cells[viContarColunas,viLinhas] := rightstr('0'+Stgr_Todos_Numeros.Cells[viContador1, 0],2);
               viContarColunas := viContarColunas +1;
            end;
         end;
         stgr_flagsPre.Cells[0,viLinhas] := viLinhas.ToString;
         stgr_flagsPre.Cells[1,viLinhas] := '-';
         stgr_flagsPre.Cells[2,viLinhas] := '-';
         stgr_flagFiltro4Blocos.Cells[0,viLinhas] := viLinhas.ToString;
         stgr_flagFiltro4Blocos.Cells[1,viLinhas] := '-';
         stgr_flagFiltro4Blocos.Cells[2,viLinhas] := '-';
         stgr_flagFiltro4Blocos.Cells[3,viLinhas] := '-';
         stgr_flagFiltro4Blocos.Cells[4,viLinhas] := '-';
//         if viLinhas=23126 then
//            showmessage('23.126');
         viContarLinhas := 0;
         for viContador1:= 01 to Stgr_linhasDe3.RowCount-1 do
         begin
            viContarColunas := 0;
            for viContador2 := 03 to stgr_24NumerosPreNaoSorteados.ColCount-1 do
            begin
               if (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[2,viContador1].ToInteger) xor
                  (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[3,viContador1].ToInteger) xor
                  (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[4,viContador1].ToInteger)
               then
               begin
                  viContarColunas := viContarColunas + 1;
               end;
//               if (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[2,viContador1].ToInteger)
//               then
//               begin
//                  viContarColunas := viContarColunas + 1;
//               end;
//               if (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[3,viContador1].ToInteger)
//               then
//               begin
//                  viContarColunas := viContarColunas + 1;
//               end;
//               if (stgr_24NumerosPreNaoSorteados.Cells[viContador2,viLinhas].ToInteger = Stgr_linhasDe3.Cells[4,viContador1].ToInteger)
//               then
//               begin
//                  viContarColunas := viContarColunas + 1;
//               end;
               if viContarColunas = 3 then
               begin
                  viContarLinhas := viContarLinhas + 1;
                  Break;
               end;
            end;
         end;
         if (cbx_qtdLinhasnoFiltro10Linhas.ItemIndex = 0) then
         begin
            if (viContarLinhas<>4) then
               stgr_flagsPre.Cells[1,viLinhas] := 'F'
            else
            begin
               stgr_flagsPre.Cells[1,viLinhas] := 'V';
               viTotalLinhas := viTotalLinhas +1;
            end;
         end else
         if (cbx_qtdLinhasnoFiltro10Linhas.ItemIndex = 1) then
         begin
            if (viContarLinhas<>5) then
               stgr_flagsPre.Cells[1,viLinhas] := 'F'
            else
            begin
               stgr_flagsPre.Cells[1,viLinhas] := 'V';
               viTotalLinhas := viTotalLinhas +1;
            end;
         end;
            if (cbx_numero16noFiltro10Linhas.ItemIndex<>2) then
            begin
               if (cbx_numero16noFiltro10Linhas.ItemIndex=0) then
               begin
                  stgr_flagsPre.Cells[2,viLinhas] := 'V';
                  for viContarColunas := 01 to 7 do
                  begin
                     if STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas+1, viLinhas]) = 16 then
                        stgr_flagsPre.Cells[2,viLinhas] := 'F';
                  end;
               end
               else if (cbx_numero16noFiltro10Linhas.ItemIndex=1) then
               begin
                  stgr_flagsPre.Cells[2,viLinhas] := 'F';
                  for viContarColunas := 01 to 7 do
                  begin
                     if STRtoINT(stgr_7NumerosPreSorteados.Cells[viContarColunas+1, viLinhas]) = 16 then
                        stgr_flagsPre.Cells[2,viLinhas] := 'V';
                  end;
               end;
            end
            else
            begin
               stgr_flagsPre.Cells[2,viLinhas] := 'V';
            end;
         viLinhas := viLinhas +1;
      end;
      pgbr_numerosPre.Position := Trunc(viContarLinhasBase20/(stgr_6NumerosDaBase20.RowCount-1)*100);
      if (viContarLinhasBase20 mod 400)=0 then
      begin
         stgr_7NumerosPreSorteados.RowCount := viLinhas;
         stgr_7NumerosPreSorteados.Repaint;
         stgr_24NumerosPreNaoSorteados.RowCount := viLinhas;
         stgr_24NumerosPreNaoSorteados.Repaint;
         stgr_flagsPre.RowCount := viLinhas;
         stgr_flagsPre.Repaint;
         Self.WindowState := wsMinimized;
         Self.WindowState := wsNormal;
         pgc_AbasPrincipais.Repaint;
         sleep(75);
      end;
      pa_Status.Repaint;
      pgbr_numerosPre.Repaint;
   end;
   stgr_flagsPre.Cells[0,0] := viTotalLinhas.ToString;
   stgr_7NumerosPreSorteados.RowCount := viLinhas;
   stgr_7NumerosPreSorteados.Repaint;
   stgr_24NumerosPreNaoSorteados.RowCount := viLinhas;
   stgr_24NumerosPreNaoSorteados.Repaint;
   stgr_flagFiltro4Blocos.Cells[0,1] := (viLinhas-1).ToString;
   stgr_flagsPre.RowCount := viLinhas;
   stgr_flagsPre.Repaint;
   pa_Status.Repaint;
   pgbr_numerosPre.Position := 100 ;
   pgbr_numerosPre.Repaint;
   Self.WindowState := wsMinimized;
   Self.WindowState := wsNormal;
   Self.Repaint;
End;


Procedure TForm1.GravarComb07e24Pre1();
Var
   viContarLinhas, viContarColunas, ViContarCelulas: integer;
   vsDADOS07NUMEROS, vsDADOS24NUMEROS, vcQuery, vcNomeTabela : String;
Begin
   vcNomeTabela := ' CJTO_6L20P11_7PRE';
   Pgbr_gravarDados1.Position := 0;
   Pgbr_gravarDados1.Repaint;
   for viContarLinhas := 1 to stgr_7NumerosPreSorteados.RowCount-1 do
   begin
      if (stgr_flagsPre.Cells[1,viContarLinhas]<>'V') or (stgr_flagsPre.Cells[2,viContarLinhas]<>'V') then
         continue;
      if (cbx_filtro4Blocos.ItemIndex = 1) then
         if (stgr_flagFiltro4Blocos.Cells[1,viContarLinhas]<>'V') and (stgr_flagFiltro4Blocos.Cells[2,viContarLinhas]<>'V') and (stgr_flagFiltro4Blocos.Cells[3,viContarLinhas]<>'V') and (stgr_flagFiltro4Blocos.Cells[4,viContarLinhas]<>'V') then
            continue;
      vsDADOS07NUMEROS := '';
      vsDADOS24NUMEROS := '';
      // --> preparando os dados para gravar
      for viContarColunas := 01 to 07 do
      begin
         vsDADOS07NUMEROS := vsDADOS07NUMEROS + RightStr('0'+stgr_7NumerosPreSorteados.Cells[viContarColunas+1,viContarlinhas],2)+' ' ;
      end;
      for viContarColunas := 01 to 24 do
      begin
         vsDADOS24NUMEROS := vsDADOS24NUMEROS + RightStr('0'+((stgr_24NumerosPreNaoSorteados.Cells[viContarColunas+2,viContarlinhas].ToInteger)*1).ToString,2)+' ' ;
      end;
      vcQuery  := 'INSERT INTO ' +vcNomeTabela+ ' (BLOCO20, DADOS07NUMEROS, BLOCO06, DADOS24NUMEROS) VALUES('
              +#39+  TRIM(stgr_7NumerosPreSorteados.Cells[1,viContarlinhas])  + #39 +','
              +#39+  TRIM(vsDADOS07NUMEROS)  + #39 +','
              +#39+  TRIM(stgr_24NumerosPreNaoSorteados.Cells[2,viContarlinhas])  + #39 +','
              +#39+  TRIM(vsDADOS24NUMEROS)
          +#39+ ');';
      Self.IBQ_Combinacoes.SQL.Clear;
      Self.IBQ_Combinacoes.SQL.Add(vcQuery)  ;
      Self.IBQ_Combinacoes.ExecSQL;
      if (viContarLinhas MOD 450) = 0 then
      BEGIN
         Pgbr_gravarDados1.Position := Trunc((viContarLinhas/(stgr_7NumerosPreSorteados.RowCount-1))*100);
         Pgbr_gravarDados1.Repaint;
         Sleep (15);
      END;
    end;
   Self.IBQ_Combinacoes.SQL.Clear;
   Self.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
   Self.IBQ_Combinacoes.ExecSQL;
   Self.IBQ_Combinacoes.Transaction.StartTransaction;
   Self.IBQ_Combinacoes.Transaction.Commit;
   Self.IBQ_Combinacoes.Transaction.StartTransaction;
   Pgbr_gravarDados1.Position := 100;
   Pgbr_gravarDados1.Repaint;
End;


Procedure TForm1.LerComb07e24Pre1();
Var
   viLinhas, viTotal, viContarLinhas, viQtdLinhasLer1: integer;
   vcQuery: String;
Begin
   stgr_7NumerosPreSorteados.RowCount := 50;
   stgr_24NumerosPreNaoSorteados.RowCount := 50;
   stgr_flagsPre.RowCount := 1;
   vcQuery :='select count(distinct(dados07numeros)) as QTD from Cjto_6l20p11_7pre ';
   Self.IBQ_Combinacoes.SQL.Clear;
   Self.IBQ_Combinacoes.SQL.Add(vcQuery)  ;
   Self.IBQ_Combinacoes.Prepare;
   Self.IBQ_Combinacoes.Open;
   viTotal := Self.IBQ_Combinacoes.FieldByName('QTD').AsInteger;
   viQtdLinhasLer1 := trunc(viTotal/100);
   vcQuery :='select distinct(dados07numeros|| '+#39+' '+#39+' || dados24numeros)  as dados ';
   vcQuery := vcQuery + 'from Cjto_6l20p11_7pre Order by dados07numeros ';
   Self.IBQ_Combinacoes.SQL.Clear;
   Self.IBQ_Combinacoes.SQL.Add(vcQuery)  ;
   Self.IBQ_Combinacoes.Prepare;
   Self.IBQ_Combinacoes.Open;
   Self.IBQ_Combinacoes.First;
   Pgbr_naoRepetidos1.Visible := True;
   Pgbr_naoRepetidos1.Position :=0;
   Pgbr_naoRepetidos1.Repaint;
   viLinhas := 1;
   viContarLinhas := 1;
   while not(Self.IBQ_Combinacoes.Eof) do
   begin
      stgr_7NumerosPreSorteados.Cells[00,viLinhas] := viLinhas.ToString;
      stgr_7NumerosPreSorteados.Cells[01,viLinhas] := '';

      stgr_24NumerosPreNaoSorteados.Cells[00,viLinhas] := viLinhas.ToString;
      stgr_24NumerosPreNaoSorteados.Cells[01,viLinhas] := '';
      stgr_24NumerosPreNaoSorteados.Cells[02,viLinhas] := '';

      stgr_7NumerosPreSorteados.Cells[02,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),1,2);
      stgr_7NumerosPreSorteados.Cells[03,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),04,2);
      stgr_7NumerosPreSorteados.Cells[04,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),07,2);
      stgr_7NumerosPreSorteados.Cells[05,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),10,2);
      stgr_7NumerosPreSorteados.Cells[06,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),13,2);
      stgr_7NumerosPreSorteados.Cells[07,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),16,2);
      stgr_7NumerosPreSorteados.Cells[08,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),19,2);

      stgr_24NumerosPreNaoSorteados.Cells[03,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),22,2);
      stgr_24NumerosPreNaoSorteados.Cells[04,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),25,2);
      stgr_24NumerosPreNaoSorteados.Cells[05,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),28,2);
      stgr_24NumerosPreNaoSorteados.Cells[06,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),31,2);
      stgr_24NumerosPreNaoSorteados.Cells[07,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),34,2);
      stgr_24NumerosPreNaoSorteados.Cells[08,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),37,2);
      stgr_24NumerosPreNaoSorteados.Cells[09,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),40,2);
      stgr_24NumerosPreNaoSorteados.Cells[10,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),43,2);
      stgr_24NumerosPreNaoSorteados.Cells[11,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),46,2);
      stgr_24NumerosPreNaoSorteados.Cells[12,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),49,2);
      stgr_24NumerosPreNaoSorteados.Cells[13,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),52,2);
      stgr_24NumerosPreNaoSorteados.Cells[14,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),55,2);
      stgr_24NumerosPreNaoSorteados.Cells[15,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),58,2);
      stgr_24NumerosPreNaoSorteados.Cells[16,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),61,2);
      stgr_24NumerosPreNaoSorteados.Cells[17,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),64,2);
      stgr_24NumerosPreNaoSorteados.Cells[18,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),67,2);
      stgr_24NumerosPreNaoSorteados.Cells[19,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),70,2);
      stgr_24NumerosPreNaoSorteados.Cells[20,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),73,2);
      stgr_24NumerosPreNaoSorteados.Cells[21,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),76,2);
      stgr_24NumerosPreNaoSorteados.Cells[22,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),79,2);
      stgr_24NumerosPreNaoSorteados.Cells[23,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),82,2);
      stgr_24NumerosPreNaoSorteados.Cells[24,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),85,2);
      stgr_24NumerosPreNaoSorteados.Cells[25,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),88,2);
      stgr_24NumerosPreNaoSorteados.Cells[26,viLinhas] := Copy((Self.IBQ_Combinacoes.FieldByName('DADOS').AsString),91,2);

      viLinhas := viLinhas + 1;
      viContarLinhas := viContarLinhas+1;
      if viLinhas=viQtdLinhasLer1 then
      begin
         stgr_7NumerosPreSorteados.RowCount := viLinhas;
         stgr_7NumerosPreSorteados.Repaint;
         stgr_24NumerosPreNaoSorteados.RowCount := viLinhas;
         stgr_24NumerosPreNaoSorteados.Repaint;
         Pgbr_naoRepetidos1.Position := Trunc(viContarLinhas/viTotal*100);
         Pgbr_naoRepetidos1.Repaint;
         sleep(1);
      end;
      Self.IBQ_Combinacoes.Next;
//      if viContarLinhas=777 then
//         break;
   end;
   stgr_7NumerosPreSorteados.RowCount := viLinhas;
   stgr_7NumerosPreSorteados.Repaint;
   stgr_24NumerosPreNaoSorteados.RowCount := viLinhas;
   stgr_24NumerosPreNaoSorteados.Repaint;
   Pgbr_naoRepetidos1.Position :=100;
   Pgbr_naoRepetidos1.Repaint;
End;





procedure TForm1.AnaliseCombinatoriaBase20Parte12345();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte1.RowCount := 2;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte1.Cells[0, 0] := '+0';
   stgr_acBase20Parte2.Cells[0, 0] := '+0';
   stgr_acBase20Parte3.Cells[0, 0] := '+0';
   stgr_acBase20Parte4.Cells[0, 0] := '+0';
   stgr_acBase20Parte5.Cells[0, 0] := '+0';
   for viComb01 := 1 to 6 do
   begin
      stgr_acBase20Parte1.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte1.Cells[1, viLinhas] := '-0';
      stgr_acBase20Parte1.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte1.Cells[3, viLinhas] := '-0';
      stgr_acBase20Parte2.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte2.Cells[1, viLinhas] := '-0';
      stgr_acBase20Parte2.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte2.Cells[3, viLinhas] := '-0';
      stgr_acBase20Parte3.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte3.Cells[1, viLinhas] := '-0';
      stgr_acBase20Parte3.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte3.Cells[3, viLinhas] := '-0';
      stgr_acBase20Parte4.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte4.Cells[1, viLinhas] := '-0';
      stgr_acBase20Parte4.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte4.Cells[3, viLinhas] := '-0';
      stgr_acBase20Parte5.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte5.Cells[1, viLinhas] := '-0';
      stgr_acBase20Parte5.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte5.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte1.RowCount := 2;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte2.RowCount := 2;
   stgr_acBase20Parte2.Repaint;
   stgr_acBase20Parte3.RowCount := 2;
   stgr_acBase20Parte3.Repaint;
   stgr_acBase20Parte4.RowCount := 2;
   stgr_acBase20Parte4.Repaint;
   stgr_acBase20Parte5.RowCount := 2;
   stgr_acBase20Parte5.Repaint;
End;



procedure TForm1.AnaliseCombinatoria3Base20Parte1();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte1.RowCount := 2;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte1.Cells[0, 0] := ' +3';
   for viComb01 := 1 to 2 do
   begin
      for viComb02 := viComb01+1 to 3 do
      begin
         for viComb03 := viComb02+1 to 4 do
         begin
            stgr_acBase20Parte1.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_acBase20Parte1.Cells[1, viLinhas] := stgr_base20Parte1.Cells [viComb01,1];
            stgr_acBase20Parte1.Cells[2, viLinhas] := stgr_base20Parte1.Cells [viComb02,1];
            stgr_acBase20Parte1.Cells[3, viLinhas] := stgr_base20Parte1.Cells [viComb03,1];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   stgr_acBase20Parte1.RowCount := viLinhas;
   stgr_acBase20Parte1.Repaint;
End;


procedure TForm1.AnaliseCombinatoria2Base20Parte1();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte1.RowCount := 2;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte1.Cells[0, 0] := ' +2';
   for viComb01 := 1 to 3 do
   begin
      for viComb02 := viComb01+1 to 4 do
      begin
         stgr_acBase20Parte1.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_acBase20Parte1.Cells[1, viLinhas] := stgr_base20Parte1.Cells [viComb01,1];
         stgr_acBase20Parte1.Cells[2, viLinhas] := stgr_base20Parte1.Cells [viComb02,1];
         stgr_acBase20Parte1.Cells[3, viLinhas] := '-0';
         viLinhas := viLinhas + 1;
      end;
   end;
   stgr_acBase20Parte1.RowCount := viLinhas;
   stgr_acBase20Parte1.Repaint;
End;


procedure TForm1.AnaliseCombinatoria1Base20Parte1();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte1.RowCount := 2;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte1.Cells[0, 0] := ' +1';
   for viComb01 := 1 to 4 do
   begin
      stgr_acBase20Parte1.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte1.Cells[1, viLinhas] := stgr_base20Parte1.Cells [viComb01,1];
      stgr_acBase20Parte1.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte1.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte1.RowCount := viLinhas;
   stgr_acBase20Parte1.Repaint;
End;


procedure TForm1.AnaliseCombinatoria3Base20Parte2();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte2.RowCount := 2;
   stgr_acBase20Parte2.Repaint;
   stgr_acBase20Parte2.Cells[0, 0] := '+03';
   for viComb01 := 1 to 2 do
   begin
      for viComb02 := viComb01+1 to 3 do
      begin
         for viComb03 := viComb02+1 to 4 do
         begin
            stgr_acBase20Parte2.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_acBase20Parte2.Cells[1, viLinhas] := stgr_base20Parte2.Cells [viComb01,1];
            stgr_acBase20Parte2.Cells[2, viLinhas] := stgr_base20Parte2.Cells [viComb02,1];
            stgr_acBase20Parte2.Cells[3, viLinhas] := stgr_base20Parte2.Cells [viComb03,1];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   stgr_acBase20Parte2.RowCount := viLinhas;
   stgr_acBase20Parte2.Repaint;
End;


procedure TForm1.AnaliseCombinatoria2Base20Parte2();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte2.RowCount := 2;
   stgr_acBase20Parte2.Repaint;
   stgr_acBase20Parte2.Cells[0, 0] := ' +2';
   for viComb01 := 1 to 3 do
   begin
      for viComb02 := viComb01+1 to 4 do
      begin
         stgr_acBase20Parte2.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_acBase20Parte2.Cells[1, viLinhas] := stgr_base20Parte2.Cells [viComb01,1];
         stgr_acBase20Parte2.Cells[2, viLinhas] := stgr_base20Parte2.Cells [viComb02,1];
         stgr_acBase20Parte2.Cells[3, viLinhas] := '-0';
         viLinhas := viLinhas + 1;
      end;
   end;
   stgr_acBase20Parte2.RowCount := viLinhas;
   stgr_acBase20Parte2.Repaint;
End;


procedure TForm1.AnaliseCombinatoria1Base20Parte2();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte2.RowCount := 2;
   stgr_acBase20Parte2.Repaint;
   stgr_acBase20Parte2.Cells[0, 0] := ' +1';
   for viComb01 := 1 to 4 do
   begin
      stgr_acBase20Parte2.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte2.Cells[1, viLinhas] := stgr_base20Parte2.Cells [viComb01,1];
      stgr_acBase20Parte2.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte2.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte2.RowCount := viLinhas;
   stgr_acBase20Parte2.Repaint;
End;


procedure TForm1.AnaliseCombinatoria3Base20Parte3();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte3.RowCount := 2;
   stgr_acBase20Parte3.Repaint;
   stgr_acBase20Parte3.Cells[0, 0] := '+03';
   for viComb01 := 1 to 2 do
   begin
      for viComb02 := viComb01+1 to 3 do
      begin
         for viComb03 := viComb02+1 to 4 do
         begin
            stgr_acBase20Parte3.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_acBase20Parte3.Cells[1, viLinhas] := stgr_base20Parte3.Cells [viComb01,1];
            stgr_acBase20Parte3.Cells[2, viLinhas] := stgr_base20Parte3.Cells [viComb02,1];
            stgr_acBase20Parte3.Cells[3, viLinhas] := stgr_base20Parte3.Cells [viComb03,1];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   stgr_acBase20Parte3.RowCount := viLinhas;
   stgr_acBase20Parte3.Repaint;
End;


procedure TForm1.AnaliseCombinatoria2Base20Parte3();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte3.RowCount := 2;
   stgr_acBase20Parte3.Repaint;
   stgr_acBase20Parte3.Cells[0, 0] := ' +2';
   for viComb01 := 1 to 3 do
   begin
      for viComb02 := viComb01+1 to 4 do
      begin
         stgr_acBase20Parte3.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_acBase20Parte3.Cells[1, viLinhas] := stgr_base20Parte3.Cells [viComb01,1];
         stgr_acBase20Parte3.Cells[2, viLinhas] := stgr_base20Parte3.Cells [viComb02,1];
         stgr_acBase20Parte3.Cells[3, viLinhas] := '-0';
         viLinhas := viLinhas + 1;
      end;
   end;
   stgr_acBase20Parte3.RowCount := viLinhas;
   stgr_acBase20Parte3.Repaint;
End;


procedure TForm1.AnaliseCombinatoria1Base20Parte3();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte3.RowCount := 2;
   stgr_acBase20Parte3.Repaint;
   stgr_acBase20Parte3.Cells[0, 0] := ' +1';
   for viComb01 := 1 to 4 do
   begin
      stgr_acBase20Parte3.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte3.Cells[1, viLinhas] := stgr_base20Parte3.Cells [viComb01,1];
      stgr_acBase20Parte3.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte3.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte3.RowCount := viLinhas;
   stgr_acBase20Parte3.Repaint;
End;


procedure TForm1.AnaliseCombinatoria3Base20Parte4();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte4.RowCount := 2;
   stgr_acBase20Parte4.Repaint;
   stgr_acBase20Parte4.Cells[0, 0] := '+03';
   for viComb01 := 1 to 2 do
   begin
      for viComb02 := viComb01+1 to 3 do
      begin
         for viComb03 := viComb02+1 to 4 do
         begin
            stgr_acBase20Parte4.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_acBase20Parte4.Cells[1, viLinhas] := stgr_base20Parte4.Cells [viComb01,1];
            stgr_acBase20Parte4.Cells[2, viLinhas] := stgr_base20Parte4.Cells [viComb02,1];
            stgr_acBase20Parte4.Cells[3, viLinhas] := stgr_base20Parte4.Cells [viComb03,1];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   stgr_acBase20Parte4.RowCount := viLinhas;
   stgr_acBase20Parte4.Repaint;
End;


procedure TForm1.AnaliseCombinatoria2Base20Parte4();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte4.RowCount := 2;
   stgr_acBase20Parte4.Repaint;
   stgr_acBase20Parte4.Cells[0, 0] := ' +2';
   for viComb01 := 1 to 3 do
   begin
      for viComb02 := viComb01+1 to 4 do
      begin
         stgr_acBase20Parte4.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_acBase20Parte4.Cells[1, viLinhas] := stgr_base20Parte4.Cells [viComb01,1];
         stgr_acBase20Parte4.Cells[2, viLinhas] := stgr_base20Parte4.Cells [viComb02,1];
         stgr_acBase20Parte4.Cells[3, viLinhas] := '-0';
         viLinhas := viLinhas + 1;
      end;
   end;
   stgr_acBase20Parte4.RowCount := viLinhas;
   stgr_acBase20Parte4.Repaint;
End;


procedure TForm1.AnaliseCombinatoria1Base20Parte4();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte4.RowCount := 2;
   stgr_acBase20Parte4.Repaint;
   stgr_acBase20Parte4.Cells[0, 0] := ' +1';
   for viComb01 := 1 to 4 do
   begin
      stgr_acBase20Parte4.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte4.Cells[1, viLinhas] := stgr_base20Parte4.Cells [viComb01,1];
      stgr_acBase20Parte4.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte4.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte4.RowCount := viLinhas;
   stgr_acBase20Parte4.Repaint;
End;


procedure TForm1.AnaliseCombinatoria3Base20Parte5();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte5.RowCount := 2;
   stgr_acBase20Parte5.Repaint;
   stgr_acBase20Parte5.Cells[0, 0] := '+03';
   for viComb01 := 1 to 2 do
   begin
      for viComb02 := viComb01+1 to 3 do
      begin
         for viComb03 := viComb02+1 to 4 do
         begin
            stgr_acBase20Parte5.Cells[0, viLinhas] := viLinhas.ToString;
            stgr_acBase20Parte5.Cells[1, viLinhas] := stgr_base20Parte5.Cells [viComb01,1];
            stgr_acBase20Parte5.Cells[2, viLinhas] := stgr_base20Parte5.Cells [viComb02,1];
            stgr_acBase20Parte5.Cells[3, viLinhas] := stgr_base20Parte5.Cells [viComb03,1];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   stgr_acBase20Parte5.RowCount := viLinhas;
   stgr_acBase20Parte5.Repaint;
End;


procedure TForm1.AnaliseCombinatoria2Base20Parte5();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte5.RowCount := 2;
   stgr_acBase20Parte5.Repaint;
   stgr_acBase20Parte5.Cells[0, 0] := ' +2';
   for viComb01 := 1 to 3 do
   begin
      for viComb02 := viComb01+1 to 4 do
      begin
         stgr_acBase20Parte5.Cells[0, viLinhas] := viLinhas.ToString;
         stgr_acBase20Parte5.Cells[1, viLinhas] := stgr_base20Parte5.Cells [viComb01,1];
         stgr_acBase20Parte5.Cells[2, viLinhas] := stgr_base20Parte5.Cells [viComb02,1];
         stgr_acBase20Parte5.Cells[3, viLinhas] := '-0';
         viLinhas := viLinhas + 1;
      end;
   end;
   stgr_acBase20Parte5.RowCount := viLinhas;
   stgr_acBase20Parte5.Repaint;
End;


procedure TForm1.AnaliseCombinatoria1Base20Parte5();
Var
   viComb01, viComb02, viComb03 : Integer;
   viContar, viLinhas : Integer;
Begin
   viLinhas := 1;
   stgr_acBase20Parte5.RowCount := 2;
   stgr_acBase20Parte5.Repaint;
   stgr_acBase20Parte5.Cells[0, 0] := ' +1';
   for viComb01 := 1 to 4 do
   begin
      stgr_acBase20Parte5.Cells[0, viLinhas] := viLinhas.ToString;
      stgr_acBase20Parte5.Cells[1, viLinhas] := stgr_base20Parte5.Cells [viComb01,1];
      stgr_acBase20Parte5.Cells[2, viLinhas] := '-0';
      stgr_acBase20Parte5.Cells[3, viLinhas] := '-0';
      viLinhas := viLinhas + 1;
   end;
   stgr_acBase20Parte5.RowCount := viLinhas;
   stgr_acBase20Parte5.Repaint;
End;






procedure TForm1.bbt_gerarVoltarClick(Sender: TObject);
begin
   pa_menuGerar_20p11.Enabled := True;
   pa_menuGerar_20p11.Visible := False;
   pa_menuGerar_20p11.Repaint;
end;


// ===================================================================
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
      Stgr_base20.Cells[viContar, 0] := INTtoSTR(viContar - 1);
   end;
   for viContar  := 1 to Stgr_base20.RowCount-1 do
   begin
      Stgr_Base20VF.Cells[1,viContar] := 'F';
   end;
      Stgr_Base20VF.Cells[1,1] := 'V';

 // =====>> Blocos de base, 20 e 11
  //01
   //01 14 03 13 04 12 06 11 08 16 15 24 22 25 21 27 20 29 18 30
   //02 05 07 09 10 17 19 23 26 28 31
   Stgr_base20.Cells[0, 01] := '01';
   Stgr_base20.Cells[1, 01] := 'V';
   Stgr_base20.Cells[2, 01] := '01';
   Stgr_base20.Cells[3, 1] := '14';
   Stgr_base20.Cells[4, 01] := '03';
   Stgr_base20.Cells[5, 1] := '13';
   Stgr_base20.Cells[6, 01] := '04';
   Stgr_base20.Cells[7, 1] := '12';
   Stgr_base20.Cells[8, 01] := '06';
   Stgr_base20.Cells[9, 1] := '11';
   Stgr_base20.Cells[10, 01] := '08';
   Stgr_base20.Cells[11, 1] := '16';
   Stgr_base20.Cells[12, 01] := '15';
   Stgr_base20.Cells[13, 1] := '24';
   Stgr_base20.Cells[14, 01] := '22';
   Stgr_base20.Cells[15, 1] := '25';
   Stgr_base20.Cells[16, 01] := '21';
   Stgr_base20.Cells[17, 1] := '27';
   Stgr_base20.Cells[18, 01] := '20';
   Stgr_base20.Cells[19, 1] := '29';
   Stgr_base20.Cells[20, 01] := '18';
   Stgr_base20.Cells[21, 01] := '30';
   //
   Stgr_base11.Cells[0, 01] := '01';
   Stgr_base11.Cells[1, 01] := 'V';
   Stgr_base11.Cells[2, 01] := '02';
   Stgr_base11.Cells[3, 1] := '05';
   Stgr_base11.Cells[4, 01] := '07';
   Stgr_base11.Cells[5, 1] := '09';
   Stgr_base11.Cells[6, 01] := '10';
   Stgr_base11.Cells[7, 1] := '17';
   Stgr_base11.Cells[8, 01] := '19';
   Stgr_base11.Cells[9, 1] := '23';
   Stgr_base11.Cells[10, 01] := '26';
   Stgr_base11.Cells[11, 1] := '28';
   Stgr_base11.Cells[12, 01] := '31';
  //02
   //02 14 03 13 05 11 07 10 08 16 15 24 22 26 20 28 18 29 17 31
   //01 04 06 09 12 19 21 23 25 27 30
   Stgr_base20.Cells[0, 02] := '02';
   Stgr_base20.Cells[1, 02] := 'V';
   Stgr_base20.Cells[2, 02] := '02';
   Stgr_base20.Cells[3, 02] := '14';
   Stgr_base20.Cells[4, 02] := '03';
   Stgr_base20.Cells[5, 02] := '13';
   Stgr_base20.Cells[6, 02] := '05';
   Stgr_base20.Cells[7, 02] := '11';
   Stgr_base20.Cells[8, 02] := '07';
   Stgr_base20.Cells[9, 02] := '10';
   Stgr_base20.Cells[10, 02] := '08';
   Stgr_base20.Cells[11, 02] := '16';
   Stgr_base20.Cells[12, 02] := '15';
   Stgr_base20.Cells[13, 02] := '24';
   Stgr_base20.Cells[14, 02] := '22';
   Stgr_base20.Cells[15, 02] := '26';
   Stgr_base20.Cells[16, 02] := '20';
   Stgr_base20.Cells[17, 02] := '28';
   Stgr_base20.Cells[18, 02] := '18';
   Stgr_base20.Cells[19, 02] := '29';
   Stgr_base20.Cells[20, 02] := '17';
   Stgr_base20.Cells[21, 02] := '31';
   //
   Stgr_base11.Cells[0, 02] := '02';
   Stgr_base11.Cells[1, 02] := 'V';
   Stgr_base11.Cells[2, 02] := '01';
   Stgr_base11.Cells[3, 02] := '04';
   Stgr_base11.Cells[4, 02] := '06';
   Stgr_base11.Cells[5, 02] := '09';
   Stgr_base11.Cells[6, 02] := '12';
   Stgr_base11.Cells[7, 02] := '19';
   Stgr_base11.Cells[8, 02] := '21';
   Stgr_base11.Cells[9, 02] := '23';
   Stgr_base11.Cells[10, 02] := '25';
   Stgr_base11.Cells[11, 02] := '27';
   Stgr_base11.Cells[12, 02] := '30';
  //03
   //02 14 04 13 06 11 07 10 08 16 15 25 22 27 19 28 18 29 17 30
   //01 03 05 09 12 20 21 23 24 26 31
   Stgr_base20.Cells[0, 03] := '03';
   Stgr_base20.Cells[1, 03] := 'V';
   Stgr_base20.Cells[2, 03] := '02';
   Stgr_base20.Cells[3, 03] := '14';
   Stgr_base20.Cells[4, 03] := '04';
   Stgr_base20.Cells[5, 03] := '13';
   Stgr_base20.Cells[6, 03] := '06';
   Stgr_base20.Cells[7, 03] := '11';
   Stgr_base20.Cells[8, 03] := '07';
   Stgr_base20.Cells[9, 03] := '10';
   Stgr_base20.Cells[10, 03] := '08';
   Stgr_base20.Cells[11, 03] := '16';
   Stgr_base20.Cells[12, 03] := '15';
   Stgr_base20.Cells[13, 03] := '25';
   Stgr_base20.Cells[14, 03] := '22';
   Stgr_base20.Cells[15, 03] := '27';
   Stgr_base20.Cells[16, 03] := '19';
   Stgr_base20.Cells[17, 03] := '28';
   Stgr_base20.Cells[18, 03] := '18';
   Stgr_base20.Cells[19, 03] := '29';
   Stgr_base20.Cells[20, 03] := '17';
   Stgr_base20.Cells[21, 03] := '30';
   //
   Stgr_base11.Cells[0, 03] := '03';
   Stgr_base11.Cells[1, 03] := 'V';
   Stgr_base11.Cells[2, 03] := '01';
   Stgr_base11.Cells[3, 03] := '03';
   Stgr_base11.Cells[4, 03] := '05';
   Stgr_base11.Cells[5, 03] := '09';
   Stgr_base11.Cells[6, 03] := '12';
   Stgr_base11.Cells[7, 03] := '20';
   Stgr_base11.Cells[8, 03] := '21';
   Stgr_base11.Cells[9, 03] := '23';
   Stgr_base11.Cells[10, 03] := '24';
   Stgr_base11.Cells[11, 03] := '27';
   Stgr_base11.Cells[12, 03] := '31';
  //04
   //02 14 03 13 04 12 07 11 08 16 15 24 22 25 21 28 20 29 17 30
   //01 05 06 09 10 18 19 23 26 27 31
   Stgr_base20.Cells[0, 04] := '04';
   Stgr_base20.Cells[1, 04] := 'V';
   Stgr_base20.Cells[2, 04] := '02';
   Stgr_base20.Cells[3, 04] := '14';
   Stgr_base20.Cells[4, 04] := '03';
   Stgr_base20.Cells[5, 04] := '13';
   Stgr_base20.Cells[6, 04] := '04';
   Stgr_base20.Cells[7, 04] := '12';
   Stgr_base20.Cells[8, 04] := '07';
   Stgr_base20.Cells[9, 04] := '11';
   Stgr_base20.Cells[10, 04] := '08';
   Stgr_base20.Cells[11, 04] := '16';
   Stgr_base20.Cells[12, 04] := '15';
   Stgr_base20.Cells[13, 04] := '24';
   Stgr_base20.Cells[14, 04] := '22';
   Stgr_base20.Cells[15, 04] := '25';
   Stgr_base20.Cells[16, 04] := '21';
   Stgr_base20.Cells[17, 04] := '28';
   Stgr_base20.Cells[18, 04] := '20';
   Stgr_base20.Cells[19, 04] := '29';
   Stgr_base20.Cells[20, 04] := '17';
   Stgr_base20.Cells[21, 04] := '30';
   //
   Stgr_base11.Cells[0, 04] := '04';
   Stgr_base11.Cells[1, 04] := 'V';
   Stgr_base11.Cells[2, 04] := '01';
   Stgr_base11.Cells[3, 04] := '05';
   Stgr_base11.Cells[4, 04] := '06';
   Stgr_base11.Cells[5, 04] := '09';
   Stgr_base11.Cells[6, 04] := '10';
   Stgr_base11.Cells[7, 04] := '18';
   Stgr_base11.Cells[8, 04] := '19';
   Stgr_base11.Cells[9, 04] := '23';
   Stgr_base11.Cells[10, 04] := '26';
   Stgr_base11.Cells[11, 04] := '27';
   Stgr_base11.Cells[12, 04] := '31';
  //05
   //01 14 06 13 08 12 09 11 10 16 15 23 22 24 20 25 18 26 17 31
   //02 03 04 05 07 19 21 27 28 29 30
   Stgr_base20.Cells[0, 05] := '05';
   Stgr_base20.Cells[1, 05] := 'V';
   Stgr_base20.Cells[2, 05] := '01';
   Stgr_base20.Cells[3, 05] := '14';
   Stgr_base20.Cells[4, 05] := '06';
   Stgr_base20.Cells[5, 05] := '13';
   Stgr_base20.Cells[6, 05] := '08';
   Stgr_base20.Cells[7, 05] := '12';
   Stgr_base20.Cells[8, 05] := '09';
   Stgr_base20.Cells[9, 05] := '11';
   Stgr_base20.Cells[10, 05] := '10';
   Stgr_base20.Cells[11, 05] := '16';
   Stgr_base20.Cells[12, 05] := '15';
   Stgr_base20.Cells[13, 05] := '23';
   Stgr_base20.Cells[14, 05] := '22';
   Stgr_base20.Cells[15, 05] := '24';
   Stgr_base20.Cells[16, 05] := '20';
   Stgr_base20.Cells[17, 05] := '25';
   Stgr_base20.Cells[18, 05] := '18';
   Stgr_base20.Cells[19, 05] := '26';
   Stgr_base20.Cells[20, 05] := '17';
   Stgr_base20.Cells[21, 05] := '31';
   //
   Stgr_base11.Cells[0, 05] := '05';
   Stgr_base11.Cells[1, 05] := 'V';
   Stgr_base11.Cells[2, 05] := '02';
   Stgr_base11.Cells[3, 05] := '03';
   Stgr_base11.Cells[4, 05] := '04';
   Stgr_base11.Cells[5, 05] := '05';
   Stgr_base11.Cells[6, 05] := '07';
   Stgr_base11.Cells[7, 05] := '19';
   Stgr_base11.Cells[8, 05] := '21';
   Stgr_base11.Cells[9, 05] := '27';
   Stgr_base11.Cells[10, 05] := '28';
   Stgr_base11.Cells[11, 05] := '29';
   Stgr_base11.Cells[12, 05] := '30';
  //06
   //01 13 02 12 03 11 08 10 09 18 14 23 22 24 21 29 20 30 19 31
   //04 05 06 07 15 16 17 25 26 27 28
   Stgr_base20.Cells[0, 06] := '06';
   Stgr_base20.Cells[1, 06] := 'V';
   Stgr_base20.Cells[2, 06] := '01';
   Stgr_base20.Cells[3, 06] := '13';
   Stgr_base20.Cells[4, 06] := '02';
   Stgr_base20.Cells[5, 06] := '12';
   Stgr_base20.Cells[6, 06] := '03';
   Stgr_base20.Cells[7, 06] := '11';
   Stgr_base20.Cells[8, 06] := '08';
   Stgr_base20.Cells[9, 06] := '10';
   Stgr_base20.Cells[10, 06] := '09';
   Stgr_base20.Cells[11, 06] := '18';
   Stgr_base20.Cells[12, 06] := '14';
   Stgr_base20.Cells[13, 06] := '23';
   Stgr_base20.Cells[14, 06] := '22';
   Stgr_base20.Cells[15, 06] := '24';
   Stgr_base20.Cells[16, 06] := '21';
   Stgr_base20.Cells[17, 06] := '29';
   Stgr_base20.Cells[18, 06] := '20';
   Stgr_base20.Cells[19, 06] := '30';
   Stgr_base20.Cells[20, 06] := '19';
   Stgr_base20.Cells[21, 06] := '31';
   //
   Stgr_base11.Cells[0, 06] := '06';
   Stgr_base11.Cells[1, 06] := 'V';
   Stgr_base11.Cells[2, 06] := '04';
   Stgr_base11.Cells[3, 06] := '05';
   Stgr_base11.Cells[4, 06] := '06';
   Stgr_base11.Cells[5, 06] := '07';
   Stgr_base11.Cells[6, 06] := '15';
   Stgr_base11.Cells[7, 06] := '16';
   Stgr_base11.Cells[8, 06] := '17';
   Stgr_base11.Cells[9, 06] := '25';
   Stgr_base11.Cells[10, 06] := '26';
   Stgr_base11.Cells[11, 06] := '27';
   Stgr_base11.Cells[12, 06] := '28';

 // =====>> 10 linhas de 3 iguais para todos
   //01
   Stgr_linhasDe3.Cells[00, 01] := '01';
   Stgr_linhasDe3.Cells[01, 01] := 'V';
   Stgr_linhasDe3.Cells[02, 01] := '01';
   Stgr_linhasDe3.Cells[03, 01] := '06';
   Stgr_linhasDe3.Cells[04, 01] := '21';
   //02
   Stgr_linhasDe3.Cells[00, 02] := '02';
   Stgr_linhasDe3.Cells[01, 02] := 'V';
   Stgr_linhasDe3.Cells[02, 02] := '10';
   Stgr_linhasDe3.Cells[03, 02] := '15';
   Stgr_linhasDe3.Cells[04, 02] := '27';
   //03
   Stgr_linhasDe3.Cells[00, 03] := '03';
   Stgr_linhasDe3.Cells[01, 03] := 'V';
   Stgr_linhasDe3.Cells[02, 03] := '02';
   Stgr_linhasDe3.Cells[03, 03] := '07';
   Stgr_linhasDe3.Cells[04, 03] := '20';
   //04
   Stgr_linhasDe3.Cells[00, 04] := '04';
   Stgr_linhasDe3.Cells[01, 04] := 'V';
   Stgr_linhasDe3.Cells[02, 04] := '09';
   Stgr_linhasDe3.Cells[03, 04] := '14';
   Stgr_linhasDe3.Cells[04, 04] := '28';
   //05
   Stgr_linhasDe3.Cells[00, 05] := '05';
   Stgr_linhasDe3.Cells[01, 05] := 'V';
   Stgr_linhasDe3.Cells[02, 05] := '03';
   Stgr_linhasDe3.Cells[03, 05] := '08';
   Stgr_linhasDe3.Cells[04, 05] := '19';
   //06
   Stgr_linhasDe3.Cells[00, 06] := '06';
   Stgr_linhasDe3.Cells[01, 06] := 'V';
   Stgr_linhasDe3.Cells[02, 06] := '13';
   Stgr_linhasDe3.Cells[03, 06] := '24';
   Stgr_linhasDe3.Cells[04, 06] := '29';
   //07
   Stgr_linhasDe3.Cells[00, 07] := '07';
   Stgr_linhasDe3.Cells[01, 07] := 'V';
   Stgr_linhasDe3.Cells[02, 07] := '04';
   Stgr_linhasDe3.Cells[03, 07] := '18';
   Stgr_linhasDe3.Cells[04, 07] := '23';
   //08
   Stgr_linhasDe3.Cells[00, 08] := '08';
   Stgr_linhasDe3.Cells[01, 08] := 'V';
   Stgr_linhasDe3.Cells[02, 08] := '12';
   Stgr_linhasDe3.Cells[03, 08] := '25';
   Stgr_linhasDe3.Cells[04, 08] := '20';
   //09
   Stgr_linhasDe3.Cells[00, 09] := '09';
   Stgr_linhasDe3.Cells[01, 09] := 'V';
   Stgr_linhasDe3.Cells[02, 09] := '05';
   Stgr_linhasDe3.Cells[03, 09] := '17';
   Stgr_linhasDe3.Cells[04, 09] := '22';
   //10
   Stgr_linhasDe3.Cells[00, 10] := '10';
   Stgr_linhasDe3.Cells[01, 10] := 'V';
   Stgr_linhasDe3.Cells[02, 10] := '11';
   Stgr_linhasDe3.Cells[03, 10] := '26';
   Stgr_linhasDe3.Cells[04, 10] := '31';

 // =====>> bloco 1 - 10 linhas de 12 iguais para todos
  //01
   stgr_bloco1com10Linhas.Cells[00, 01] := '01';
   stgr_bloco1com10Linhas.Cells[01, 01] := '01';
   stgr_bloco1com10Linhas.Cells[02, 01] := '02';   stgr_bloco1com10Linhas.Cells[03, 01] := '03';
   stgr_bloco1com10Linhas.Cells[04, 01] := '04';   stgr_bloco1com10Linhas.Cells[05, 01] := '05';
   stgr_bloco1com10Linhas.Cells[06, 01] := '06';   stgr_bloco1com10Linhas.Cells[07, 01] := '10';
   stgr_bloco1com10Linhas.Cells[08, 01] := '11';
   stgr_bloco1com10Linhas.Cells[09, 01] := '12';
   stgr_bloco1com10Linhas.Cells[10, 01] := '13';
   stgr_bloco1com10Linhas.Cells[11, 01] := '14';
   stgr_bloco1com10Linhas.Cells[12, 01] := '15';
  //02
   stgr_bloco1com10Linhas.Cells[00, 02] := '02';
   stgr_bloco1com10Linhas.Cells[01, 02] := '01';
   stgr_bloco1com10Linhas.Cells[02, 02] := '02';   stgr_bloco1com10Linhas.Cells[03, 02] := '03';
   stgr_bloco1com10Linhas.Cells[04, 02] := '07';   stgr_bloco1com10Linhas.Cells[05, 02] := '08';
   stgr_bloco1com10Linhas.Cells[06, 02] := '09';   stgr_bloco1com10Linhas.Cells[07, 02] := '13';
   stgr_bloco1com10Linhas.Cells[08, 02] := '14';
   stgr_bloco1com10Linhas.Cells[09, 02] := '15';
   stgr_bloco1com10Linhas.Cells[10, 02] := '23';
   stgr_bloco1com10Linhas.Cells[11, 02] := '24';
   stgr_bloco1com10Linhas.Cells[12, 02] := '25';
  //03
   stgr_bloco1com10Linhas.Cells[00, 03] := '03';
   stgr_bloco1com10Linhas.Cells[01, 03] := '01';
   stgr_bloco1com10Linhas.Cells[02, 03] := '02';   stgr_bloco1com10Linhas.Cells[03, 03] := '03';
   stgr_bloco1com10Linhas.Cells[04, 03] := '13';   stgr_bloco1com10Linhas.Cells[05, 03] := '14';
   stgr_bloco1com10Linhas.Cells[06, 03] := '15';   stgr_bloco1com10Linhas.Cells[07, 03] := '20';
   stgr_bloco1com10Linhas.Cells[08, 03] := '21';
   stgr_bloco1com10Linhas.Cells[09, 03] := '22';
   stgr_bloco1com10Linhas.Cells[10, 03] := '26';
   stgr_bloco1com10Linhas.Cells[11, 03] := '27';
   stgr_bloco1com10Linhas.Cells[12, 03] := '28';
  //04
   stgr_bloco1com10Linhas.Cells[00, 04] := '04';
   stgr_bloco1com10Linhas.Cells[01, 04] := '01';
   stgr_bloco1com10Linhas.Cells[02, 04] := '02';   stgr_bloco1com10Linhas.Cells[03, 04] := '03';
   stgr_bloco1com10Linhas.Cells[04, 04] := '13';   stgr_bloco1com10Linhas.Cells[05, 04] := '14';
   stgr_bloco1com10Linhas.Cells[06, 04] := '15';   stgr_bloco1com10Linhas.Cells[07, 04] := '17';
   stgr_bloco1com10Linhas.Cells[08, 04] := '18';
   stgr_bloco1com10Linhas.Cells[09, 04] := '19';
   stgr_bloco1com10Linhas.Cells[10, 04] := '29';
   stgr_bloco1com10Linhas.Cells[11, 04] := '30';
   stgr_bloco1com10Linhas.Cells[12, 04] := '31';
  //05
   stgr_bloco1com10Linhas.Cells[00, 05] := '05';
   stgr_bloco1com10Linhas.Cells[01, 05] := '04';
   stgr_bloco1com10Linhas.Cells[02, 05] := '05';   stgr_bloco1com10Linhas.Cells[03, 05] := '06';
   stgr_bloco1com10Linhas.Cells[04, 05] := '07';   stgr_bloco1com10Linhas.Cells[05, 05] := '08';
   stgr_bloco1com10Linhas.Cells[06, 05] := '09';   stgr_bloco1com10Linhas.Cells[07, 05] := '10';
   stgr_bloco1com10Linhas.Cells[08, 05] := '11';
   stgr_bloco1com10Linhas.Cells[09, 05] := '12';
   stgr_bloco1com10Linhas.Cells[10, 05] := '23';
   stgr_bloco1com10Linhas.Cells[11, 05] := '24';
   stgr_bloco1com10Linhas.Cells[12, 05] := '25';
  //06
   stgr_bloco1com10Linhas.Cells[00, 06] := '06';
   stgr_bloco1com10Linhas.Cells[01, 06] := '04';
   stgr_bloco1com10Linhas.Cells[02, 06] := '05';   stgr_bloco1com10Linhas.Cells[03, 06] := '06';
   stgr_bloco1com10Linhas.Cells[04, 06] := '10';   stgr_bloco1com10Linhas.Cells[05, 06] := '11';
   stgr_bloco1com10Linhas.Cells[06, 06] := '12';   stgr_bloco1com10Linhas.Cells[07, 06] := '20';
   stgr_bloco1com10Linhas.Cells[08, 06] := '21';
   stgr_bloco1com10Linhas.Cells[09, 06] := '22';
   stgr_bloco1com10Linhas.Cells[10, 06] := '26';
   stgr_bloco1com10Linhas.Cells[11, 06] := '27';
   stgr_bloco1com10Linhas.Cells[12, 06] := '28';
  //07
   stgr_bloco1com10Linhas.Cells[00, 07] := '07';
   stgr_bloco1com10Linhas.Cells[01, 07] := '04';
   stgr_bloco1com10Linhas.Cells[02, 07] := '05';   stgr_bloco1com10Linhas.Cells[03, 07] := '06';
   stgr_bloco1com10Linhas.Cells[04, 07] := '10';   stgr_bloco1com10Linhas.Cells[05, 07] := '11';
   stgr_bloco1com10Linhas.Cells[06, 07] := '12';   stgr_bloco1com10Linhas.Cells[07, 07] := '17';
   stgr_bloco1com10Linhas.Cells[08, 07] := '18';
   stgr_bloco1com10Linhas.Cells[09, 07] := '19';
   stgr_bloco1com10Linhas.Cells[10, 07] := '29';
   stgr_bloco1com10Linhas.Cells[11, 07] := '30';
   stgr_bloco1com10Linhas.Cells[12, 07] := '31';
  //08
   stgr_bloco1com10Linhas.Cells[00, 08] := '08';
   stgr_bloco1com10Linhas.Cells[01, 08] := '07';
   stgr_bloco1com10Linhas.Cells[02, 08] := '08';   stgr_bloco1com10Linhas.Cells[03, 08] := '09';
   stgr_bloco1com10Linhas.Cells[04, 08] := '20';   stgr_bloco1com10Linhas.Cells[05, 08] := '21';
   stgr_bloco1com10Linhas.Cells[06, 08] := '22';   stgr_bloco1com10Linhas.Cells[07, 08] := '23';
   stgr_bloco1com10Linhas.Cells[08, 08] := '24';
   stgr_bloco1com10Linhas.Cells[09, 08] := '25';
   stgr_bloco1com10Linhas.Cells[10, 08] := '26';
   stgr_bloco1com10Linhas.Cells[11, 08] := '27';
   stgr_bloco1com10Linhas.Cells[12, 08] := '28';
  //09
   stgr_bloco1com10Linhas.Cells[00, 09] := '09';
   stgr_bloco1com10Linhas.Cells[01, 09] := '07';
   stgr_bloco1com10Linhas.Cells[02, 09] := '08';   stgr_bloco1com10Linhas.Cells[03, 09] := '09';
   stgr_bloco1com10Linhas.Cells[04, 09] := '17';   stgr_bloco1com10Linhas.Cells[05, 09] := '18';
   stgr_bloco1com10Linhas.Cells[06, 09] := '19';   stgr_bloco1com10Linhas.Cells[07, 09] := '23';
   stgr_bloco1com10Linhas.Cells[08, 09] := '24';
   stgr_bloco1com10Linhas.Cells[09, 09] := '25';
   stgr_bloco1com10Linhas.Cells[10, 09] := '29';
   stgr_bloco1com10Linhas.Cells[11, 09] := '30';
   stgr_bloco1com10Linhas.Cells[12, 09] := '31';
  //10
   stgr_bloco1com10Linhas.Cells[00, 10] := '10';
   stgr_bloco1com10Linhas.Cells[01, 10] := '17';
   stgr_bloco1com10Linhas.Cells[02, 10] := '18';   stgr_bloco1com10Linhas.Cells[03, 10] := '19';
   stgr_bloco1com10Linhas.Cells[04, 10] := '20';   stgr_bloco1com10Linhas.Cells[05, 10] := '21';
   stgr_bloco1com10Linhas.Cells[06, 10] := '22';   stgr_bloco1com10Linhas.Cells[07, 10] := '26';
   stgr_bloco1com10Linhas.Cells[08, 10] := '27';
   stgr_bloco1com10Linhas.Cells[09, 10] := '28';
   stgr_bloco1com10Linhas.Cells[10, 10] := '29';
   stgr_bloco1com10Linhas.Cells[11, 10] := '30';
   stgr_bloco1com10Linhas.Cells[12, 10] := '31';

 // =====>>> Modos para 5 Blocos de 4
  // -----> Modo 1
  //01
   stgr_Modo1_5blocos4.Cells[00, 01] := '01';
   stgr_Modo1_5blocos4.Cells[01, 01] := '2';
   stgr_Modo1_5blocos4.Cells[02, 01] := '2';   stgr_Modo1_5blocos4.Cells[03, 01] := '1';
   stgr_Modo1_5blocos4.Cells[04, 01] := '1';   stgr_Modo1_5blocos4.Cells[05, 01] := '0';
  //02
   stgr_Modo1_5blocos4.Cells[00, 02] := '02';
   stgr_Modo1_5blocos4.Cells[01, 02] := '2';
   stgr_Modo1_5blocos4.Cells[02, 02] := '2';   stgr_Modo1_5blocos4.Cells[03, 02] := '1';
   stgr_Modo1_5blocos4.Cells[04, 02] := '0';   stgr_Modo1_5blocos4.Cells[05, 02] := '1';
  //03
   stgr_Modo1_5blocos4.Cells[00, 03] := '03';
   stgr_Modo1_5blocos4.Cells[01, 03] := '2';
   stgr_Modo1_5blocos4.Cells[02, 03] := '2';   stgr_Modo1_5blocos4.Cells[03, 03] := '0';
   stgr_Modo1_5blocos4.Cells[04, 03] := '1';   stgr_Modo1_5blocos4.Cells[05, 03] := '1';
  //04
   stgr_Modo1_5blocos4.Cells[00, 04] := '04';
   stgr_Modo1_5blocos4.Cells[01, 04] := '2';
   stgr_Modo1_5blocos4.Cells[02, 04] := '1';   stgr_Modo1_5blocos4.Cells[03, 04] := '2';
   stgr_Modo1_5blocos4.Cells[04, 04] := '0';   stgr_Modo1_5blocos4.Cells[05, 04] := '1';
  //05
   stgr_Modo1_5blocos4.Cells[00, 05] := '05';
   stgr_Modo1_5blocos4.Cells[01, 05] := '2';
   stgr_Modo1_5blocos4.Cells[02, 05] := '1';   stgr_Modo1_5blocos4.Cells[03, 05] := '2';
   stgr_Modo1_5blocos4.Cells[04, 05] := '1';   stgr_Modo1_5blocos4.Cells[05, 05] := '0';
  //06
   stgr_Modo1_5blocos4.Cells[00, 06] := '06';
   stgr_Modo1_5blocos4.Cells[01, 06] := '2';
   stgr_Modo1_5blocos4.Cells[02, 06] := '1';   stgr_Modo1_5blocos4.Cells[03, 06] := '1';
   stgr_Modo1_5blocos4.Cells[04, 06] := '2';   stgr_Modo1_5blocos4.Cells[05, 06] := '0';
  //07
   stgr_Modo1_5blocos4.Cells[00, 07] := '07';
   stgr_Modo1_5blocos4.Cells[01, 07] := '2';
   stgr_Modo1_5blocos4.Cells[02, 07] := '1';   stgr_Modo1_5blocos4.Cells[03, 07] := '1';
   stgr_Modo1_5blocos4.Cells[04, 07] := '0';   stgr_Modo1_5blocos4.Cells[05, 07] := '2';
  //08
   stgr_Modo1_5blocos4.Cells[00, 08] := '08';
   stgr_Modo1_5blocos4.Cells[01, 08] := '2';
   stgr_Modo1_5blocos4.Cells[02, 08] := '1';   stgr_Modo1_5blocos4.Cells[03, 08] := '0';
   stgr_Modo1_5blocos4.Cells[04, 08] := '1';   stgr_Modo1_5blocos4.Cells[05, 08] := '2';
  //09
   stgr_Modo1_5blocos4.Cells[00, 09] := '09';
   stgr_Modo1_5blocos4.Cells[01, 09] := '2';
   stgr_Modo1_5blocos4.Cells[02, 09] := '1';   stgr_Modo1_5blocos4.Cells[03, 09] := '0';
   stgr_Modo1_5blocos4.Cells[04, 09] := '2';   stgr_Modo1_5blocos4.Cells[05, 09] := '1';
  //10
   stgr_Modo1_5blocos4.Cells[00, 10] := '10';
   stgr_Modo1_5blocos4.Cells[01, 10] := '2';
   stgr_Modo1_5blocos4.Cells[02, 10] := '0';   stgr_Modo1_5blocos4.Cells[03, 10] := '2';
   stgr_Modo1_5blocos4.Cells[04, 10] := '1';   stgr_Modo1_5blocos4.Cells[05, 10] := '1';
  //11
   stgr_Modo1_5blocos4.Cells[00, 11] := '11';
   stgr_Modo1_5blocos4.Cells[01, 11] := '2';
   stgr_Modo1_5blocos4.Cells[02, 11] := '0';   stgr_Modo1_5blocos4.Cells[03, 11] := '1';
   stgr_Modo1_5blocos4.Cells[04, 11] := '2';   stgr_Modo1_5blocos4.Cells[05, 11] := '1';
  //12
   stgr_Modo1_5blocos4.Cells[00, 12] := '12';
   stgr_Modo1_5blocos4.Cells[01, 12] := '2';
   stgr_Modo1_5blocos4.Cells[02, 12] := '0';   stgr_Modo1_5blocos4.Cells[03, 12] := '1';
   stgr_Modo1_5blocos4.Cells[04, 12] := '1';   stgr_Modo1_5blocos4.Cells[05, 12] := '2';
  //13
   stgr_Modo1_5blocos4.Cells[00, 13] := '13';
   stgr_Modo1_5blocos4.Cells[01, 13] := '1';
   stgr_Modo1_5blocos4.Cells[02, 13] := '2';   stgr_Modo1_5blocos4.Cells[03, 13] := '2';
   stgr_Modo1_5blocos4.Cells[04, 13] := '1';   stgr_Modo1_5blocos4.Cells[05, 13] := '0';
  //14
   stgr_Modo1_5blocos4.Cells[00, 14] := '14';
   stgr_Modo1_5blocos4.Cells[01, 14] := '1';
   stgr_Modo1_5blocos4.Cells[02, 14] := '2';   stgr_Modo1_5blocos4.Cells[03, 14] := '2';
   stgr_Modo1_5blocos4.Cells[04, 14] := '0';   stgr_Modo1_5blocos4.Cells[05, 14] := '1';
  //15
   stgr_Modo1_5blocos4.Cells[00, 15] := '15';
   stgr_Modo1_5blocos4.Cells[01, 15] := '1';
   stgr_Modo1_5blocos4.Cells[02, 15] := '2';   stgr_Modo1_5blocos4.Cells[03, 15] := '1';
   stgr_Modo1_5blocos4.Cells[04, 15] := '2';   stgr_Modo1_5blocos4.Cells[05, 15] := '0';
  //16
   stgr_Modo1_5blocos4.Cells[00, 16] := '16';
   stgr_Modo1_5blocos4.Cells[01, 16] := '1';
   stgr_Modo1_5blocos4.Cells[02, 16] := '2';   stgr_Modo1_5blocos4.Cells[03, 16] := '1';
   stgr_Modo1_5blocos4.Cells[04, 16] := '0';   stgr_Modo1_5blocos4.Cells[05, 16] := '2';
  //17
   stgr_Modo1_5blocos4.Cells[00, 17] := '17';
   stgr_Modo1_5blocos4.Cells[01, 17] := '1';
   stgr_Modo1_5blocos4.Cells[02, 17] := '2';   stgr_Modo1_5blocos4.Cells[03, 17] := '0';
   stgr_Modo1_5blocos4.Cells[04, 17] := '1';   stgr_Modo1_5blocos4.Cells[05, 17] := '2';
  //18
   stgr_Modo1_5blocos4.Cells[00, 18] := '18';
   stgr_Modo1_5blocos4.Cells[01, 18] := '1';
   stgr_Modo1_5blocos4.Cells[02, 18] := '1';   stgr_Modo1_5blocos4.Cells[03, 18] := '2';
   stgr_Modo1_5blocos4.Cells[04, 18] := '2';   stgr_Modo1_5blocos4.Cells[05, 18] := '0';
  //19
   stgr_Modo1_5blocos4.Cells[00, 19] := '19';
   stgr_Modo1_5blocos4.Cells[01, 19] := '1';
   stgr_Modo1_5blocos4.Cells[02, 19] := '1';   stgr_Modo1_5blocos4.Cells[03, 19] := '2';
   stgr_Modo1_5blocos4.Cells[04, 19] := '0';   stgr_Modo1_5blocos4.Cells[05, 19] := '2';
  //20
   stgr_Modo1_5blocos4.Cells[00, 20] := '20';
   stgr_Modo1_5blocos4.Cells[01, 20] := '1';
   stgr_Modo1_5blocos4.Cells[02, 20] := '1';   stgr_Modo1_5blocos4.Cells[03, 20] := '0';
   stgr_Modo1_5blocos4.Cells[04, 20] := '2';   stgr_Modo1_5blocos4.Cells[05, 20] := '2';
  //21
   stgr_Modo1_5blocos4.Cells[00, 21] := '21';
   stgr_Modo1_5blocos4.Cells[01, 21] := '1';
   stgr_Modo1_5blocos4.Cells[02, 21] := '0';   stgr_Modo1_5blocos4.Cells[03, 21] := '2';
   stgr_Modo1_5blocos4.Cells[04, 21] := '2';   stgr_Modo1_5blocos4.Cells[05, 21] := '1';
  //22
   stgr_Modo1_5blocos4.Cells[00, 22] := '22';
   stgr_Modo1_5blocos4.Cells[01, 22] := '1';
   stgr_Modo1_5blocos4.Cells[02, 22] := '0';   stgr_Modo1_5blocos4.Cells[03, 22] := '2';
   stgr_Modo1_5blocos4.Cells[04, 22] := '1';   stgr_Modo1_5blocos4.Cells[05, 22] := '2';
  //23
   stgr_Modo1_5blocos4.Cells[00, 23] := '23';
   stgr_Modo1_5blocos4.Cells[01, 23] := '1';
   stgr_Modo1_5blocos4.Cells[02, 23] := '0';   stgr_Modo1_5blocos4.Cells[03, 23] := '1';
   stgr_Modo1_5blocos4.Cells[04, 23] := '2';   stgr_Modo1_5blocos4.Cells[05, 23] := '2';
  //24
   stgr_Modo1_5blocos4.Cells[00, 24] := '24';
   stgr_Modo1_5blocos4.Cells[01, 24] := '0';
   stgr_Modo1_5blocos4.Cells[02, 24] := '2';   stgr_Modo1_5blocos4.Cells[03, 24] := '2';
   stgr_Modo1_5blocos4.Cells[04, 24] := '1';   stgr_Modo1_5blocos4.Cells[05, 24] := '1';
  //25
   stgr_Modo1_5blocos4.Cells[00, 25] := '25';
   stgr_Modo1_5blocos4.Cells[01, 25] := '0';
   stgr_Modo1_5blocos4.Cells[02, 25] := '2';   stgr_Modo1_5blocos4.Cells[03, 25] := '1';
   stgr_Modo1_5blocos4.Cells[04, 25] := '2';   stgr_Modo1_5blocos4.Cells[05, 25] := '1';
  //26
   stgr_Modo1_5blocos4.Cells[00, 26] := '26';
   stgr_Modo1_5blocos4.Cells[01, 26] := '0';
   stgr_Modo1_5blocos4.Cells[02, 26] := '2';   stgr_Modo1_5blocos4.Cells[03, 26] := '1';
   stgr_Modo1_5blocos4.Cells[04, 26] := '1';   stgr_Modo1_5blocos4.Cells[05, 26] := '2';
  //27
   stgr_Modo1_5blocos4.Cells[00, 27] := '27';
   stgr_Modo1_5blocos4.Cells[01, 27] := '0';
   stgr_Modo1_5blocos4.Cells[02, 27] := '1';   stgr_Modo1_5blocos4.Cells[03, 27] := '2';
   stgr_Modo1_5blocos4.Cells[04, 27] := '2';   stgr_Modo1_5blocos4.Cells[05, 27] := '1';
  //28
   stgr_Modo1_5blocos4.Cells[00, 28] := '28';
   stgr_Modo1_5blocos4.Cells[01, 28] := '0';
   stgr_Modo1_5blocos4.Cells[02, 28] := '1';   stgr_Modo1_5blocos4.Cells[03, 28] := '2';
   stgr_Modo1_5blocos4.Cells[04, 28] := '1';   stgr_Modo1_5blocos4.Cells[05, 28] := '2';
  //29
   stgr_Modo1_5blocos4.Cells[00, 29] := '29';
   stgr_Modo1_5blocos4.Cells[01, 29] := '0';
   stgr_Modo1_5blocos4.Cells[02, 29] := '1';   stgr_Modo1_5blocos4.Cells[03, 29] := '1';
   stgr_Modo1_5blocos4.Cells[04, 29] := '2';   stgr_Modo1_5blocos4.Cells[05, 29] := '2';

  // Modo 2
  //01
   stgr_Modo2_5blocos4.Cells[00, 01] := '01';
   stgr_Modo2_5blocos4.Cells[01, 01] := '3';
   stgr_Modo2_5blocos4.Cells[02, 01] := '2';
   stgr_Modo2_5blocos4.Cells[03, 01] := '1';
   stgr_Modo2_5blocos4.Cells[04, 01] := '0';
   stgr_Modo2_5blocos4.Cells[05, 01] := '0';
  //02
   stgr_Modo2_5blocos4.Cells[00, 02] := '02';
   stgr_Modo2_5blocos4.Cells[01, 02] := '3';
   stgr_Modo2_5blocos4.Cells[02, 02] := '2';
   stgr_Modo2_5blocos4.Cells[03, 02] := '0';
   stgr_Modo2_5blocos4.Cells[04, 02] := '1';
   stgr_Modo2_5blocos4.Cells[05, 02] := '0';
  //03
   stgr_Modo2_5blocos4.Cells[00, 03] := '03';
   stgr_Modo2_5blocos4.Cells[01, 03] := '3';
   stgr_Modo2_5blocos4.Cells[02, 03] := '2';
   stgr_Modo2_5blocos4.Cells[03, 03] := '0';
   stgr_Modo2_5blocos4.Cells[04, 03] := '0';
   stgr_Modo2_5blocos4.Cells[05, 03] := '1';
  //04
   stgr_Modo2_5blocos4.Cells[00, 04] := '04';
   stgr_Modo2_5blocos4.Cells[01, 04] := '2';
   stgr_Modo2_5blocos4.Cells[02, 04] := '3';
   stgr_Modo2_5blocos4.Cells[03, 04] := '1';
   stgr_Modo2_5blocos4.Cells[04, 04] := '0';
   stgr_Modo2_5blocos4.Cells[05, 04] := '0';
  //05
   stgr_Modo2_5blocos4.Cells[00, 05] := '05';
   stgr_Modo2_5blocos4.Cells[01, 05] := '2';
   stgr_Modo2_5blocos4.Cells[02, 05] := '3';
   stgr_Modo2_5blocos4.Cells[03, 05] := '0';
   stgr_Modo2_5blocos4.Cells[04, 05] := '1';
   stgr_Modo2_5blocos4.Cells[05, 05] := '0';
  //06
   stgr_Modo2_5blocos4.Cells[00, 06] := '06';
   stgr_Modo2_5blocos4.Cells[01, 06] := '2';
   stgr_Modo2_5blocos4.Cells[02, 06] := '3';
   stgr_Modo2_5blocos4.Cells[03, 06] := '0';
   stgr_Modo2_5blocos4.Cells[04, 06] := '0';
   stgr_Modo2_5blocos4.Cells[05, 06] := '1';
  //07
   stgr_Modo2_5blocos4.Cells[00, 07] := '07';
   stgr_Modo2_5blocos4.Cells[01, 07] := '1';
   stgr_Modo2_5blocos4.Cells[02, 07] := '3';
   stgr_Modo2_5blocos4.Cells[03, 07] := '2';
   stgr_Modo2_5blocos4.Cells[04, 07] := '0';
   stgr_Modo2_5blocos4.Cells[05, 07] := '0';
  //08
   stgr_Modo2_5blocos4.Cells[00, 08] := '08';
   stgr_Modo2_5blocos4.Cells[01, 08] := '1';
   stgr_Modo2_5blocos4.Cells[02, 08] := '3';
   stgr_Modo2_5blocos4.Cells[03, 08] := '0';
   stgr_Modo2_5blocos4.Cells[04, 08] := '2';
   stgr_Modo2_5blocos4.Cells[05, 08] := '0';
  //09
   stgr_Modo2_5blocos4.Cells[00, 09] := '09';
   stgr_Modo2_5blocos4.Cells[01, 09] := '1';
   stgr_Modo2_5blocos4.Cells[02, 09] := '3';
   stgr_Modo2_5blocos4.Cells[03, 09] := '0';
   stgr_Modo2_5blocos4.Cells[04, 09] := '0';
   stgr_Modo2_5blocos4.Cells[05, 09] := '2';
  //10
   stgr_Modo2_5blocos4.Cells[00, 10] := '10';
   stgr_Modo2_5blocos4.Cells[01, 10] := '1';
   stgr_Modo2_5blocos4.Cells[02, 10] := '2';
   stgr_Modo2_5blocos4.Cells[03, 10] := '3';
   stgr_Modo2_5blocos4.Cells[04, 10] := '0';
   stgr_Modo2_5blocos4.Cells[05, 10] := '0';
  //11
   stgr_Modo2_5blocos4.Cells[00, 11] := '11';
   stgr_Modo2_5blocos4.Cells[01, 11] := '1';
   stgr_Modo2_5blocos4.Cells[02, 11] := '2';
   stgr_Modo2_5blocos4.Cells[03, 11] := '0';
   stgr_Modo2_5blocos4.Cells[04, 11] := '3';
   stgr_Modo2_5blocos4.Cells[05, 11] := '0';
  //12
   stgr_Modo2_5blocos4.Cells[00, 12] := '12';
   stgr_Modo2_5blocos4.Cells[01, 12] := '1';
   stgr_Modo2_5blocos4.Cells[02, 12] := '2';
   stgr_Modo2_5blocos4.Cells[03, 12] := '0';
   stgr_Modo2_5blocos4.Cells[04, 12] := '0';
   stgr_Modo2_5blocos4.Cells[05, 12] := '3';
  //13
   stgr_Modo2_5blocos4.Cells[00, 13] := '13';
   stgr_Modo2_5blocos4.Cells[01, 13] := '1';
   stgr_Modo2_5blocos4.Cells[02, 13] := '0';
   stgr_Modo2_5blocos4.Cells[03, 13] := '3';
   stgr_Modo2_5blocos4.Cells[04, 13] := '2';
   stgr_Modo2_5blocos4.Cells[05, 13] := '0';
  //14
   stgr_Modo2_5blocos4.Cells[00, 14] := '14';
   stgr_Modo2_5blocos4.Cells[01, 14] := '1';
   stgr_Modo2_5blocos4.Cells[02, 14] := '0';
   stgr_Modo2_5blocos4.Cells[03, 14] := '3';
   stgr_Modo2_5blocos4.Cells[04, 14] := '0';
   stgr_Modo2_5blocos4.Cells[05, 14] := '2';
  //15
   stgr_Modo2_5blocos4.Cells[00, 15] := '15';
   stgr_Modo2_5blocos4.Cells[01, 15] := '1';
   stgr_Modo2_5blocos4.Cells[02, 15] := '0';
   stgr_Modo2_5blocos4.Cells[03, 15] := '2';
   stgr_Modo2_5blocos4.Cells[04, 15] := '3';
   stgr_Modo2_5blocos4.Cells[05, 15] := '0';
  //16
   stgr_Modo2_5blocos4.Cells[00, 16] := '16';
   stgr_Modo2_5blocos4.Cells[01, 16] := '1';
   stgr_Modo2_5blocos4.Cells[02, 16] := '0';
   stgr_Modo2_5blocos4.Cells[03, 16] := '2';
   stgr_Modo2_5blocos4.Cells[04, 16] := '0';
   stgr_Modo2_5blocos4.Cells[05, 16] := '3';
  //17
   stgr_Modo2_5blocos4.Cells[00, 17] := '17';
   stgr_Modo2_5blocos4.Cells[01, 17] := '1';
   stgr_Modo2_5blocos4.Cells[02, 17] := '0';
   stgr_Modo2_5blocos4.Cells[03, 17] := '0';
   stgr_Modo2_5blocos4.Cells[04, 17] := '3';
   stgr_Modo2_5blocos4.Cells[05, 17] := '2';
  //18
   stgr_Modo2_5blocos4.Cells[00, 18] := '18';
   stgr_Modo2_5blocos4.Cells[01, 18] := '1';
   stgr_Modo2_5blocos4.Cells[02, 18] := '0';
   stgr_Modo2_5blocos4.Cells[03, 18] := '0';
   stgr_Modo2_5blocos4.Cells[04, 18] := '2';
   stgr_Modo2_5blocos4.Cells[05, 18] := '3';
  //19
   stgr_Modo2_5blocos4.Cells[00, 19] := '19';
   stgr_Modo2_5blocos4.Cells[01, 19] := '0';
   stgr_Modo2_5blocos4.Cells[02, 19] := '3';
   stgr_Modo2_5blocos4.Cells[03, 19] := '2';
   stgr_Modo2_5blocos4.Cells[04, 19] := '1';
   stgr_Modo2_5blocos4.Cells[05, 19] := '0';
  //20
   stgr_Modo2_5blocos4.Cells[00, 20] := '20';
   stgr_Modo2_5blocos4.Cells[01, 20] := '0';
   stgr_Modo2_5blocos4.Cells[02, 20] := '3';
   stgr_Modo2_5blocos4.Cells[03, 20] := '2';
   stgr_Modo2_5blocos4.Cells[04, 20] := '0';
   stgr_Modo2_5blocos4.Cells[05, 20] := '1';
  //21
   stgr_Modo2_5blocos4.Cells[00, 21] := '21';
   stgr_Modo2_5blocos4.Cells[01, 21] := '0';
   stgr_Modo2_5blocos4.Cells[02, 21] := '2';
   stgr_Modo2_5blocos4.Cells[03, 21] := '3';
   stgr_Modo2_5blocos4.Cells[04, 21] := '1';
   stgr_Modo2_5blocos4.Cells[05, 21] := '0';
  //22
   stgr_Modo2_5blocos4.Cells[00, 22] := '22';
   stgr_Modo2_5blocos4.Cells[01, 22] := '0';
   stgr_Modo2_5blocos4.Cells[02, 22] := '2';
   stgr_Modo2_5blocos4.Cells[03, 22] := '3';
   stgr_Modo2_5blocos4.Cells[04, 22] := '0';
   stgr_Modo2_5blocos4.Cells[05, 22] := '1';
  //23
   stgr_Modo2_5blocos4.Cells[00, 23] := '23';
   stgr_Modo2_5blocos4.Cells[01, 23] := '0';
   stgr_Modo2_5blocos4.Cells[02, 23] := '1';
   stgr_Modo2_5blocos4.Cells[03, 23] := '3';
   stgr_Modo2_5blocos4.Cells[04, 23] := '2';
   stgr_Modo2_5blocos4.Cells[05, 23] := '0';
  //24
   stgr_Modo2_5blocos4.Cells[00, 24] := '24';
   stgr_Modo2_5blocos4.Cells[01, 24] := '0';
   stgr_Modo2_5blocos4.Cells[02, 24] := '1';
   stgr_Modo2_5blocos4.Cells[03, 24] := '3';
   stgr_Modo2_5blocos4.Cells[04, 24] := '0';
   stgr_Modo2_5blocos4.Cells[05, 24] := '2';
  //25
   stgr_Modo2_5blocos4.Cells[00, 25] := '25';
   stgr_Modo2_5blocos4.Cells[01, 25] := '0';
   stgr_Modo2_5blocos4.Cells[02, 25] := '1';
   stgr_Modo2_5blocos4.Cells[03, 25] := '2';
   stgr_Modo2_5blocos4.Cells[04, 25] := '3';
   stgr_Modo2_5blocos4.Cells[05, 25] := '0';
  //26
   stgr_Modo2_5blocos4.Cells[00, 26] := '26';
   stgr_Modo2_5blocos4.Cells[01, 26] := '0';
   stgr_Modo2_5blocos4.Cells[02, 26] := '1';
   stgr_Modo2_5blocos4.Cells[03, 26] := '2';
   stgr_Modo2_5blocos4.Cells[04, 26] := '0';
   stgr_Modo2_5blocos4.Cells[05, 26] := '3';
  //27
   stgr_Modo2_5blocos4.Cells[00, 27] := '27';
   stgr_Modo2_5blocos4.Cells[01, 27] := '0';
   stgr_Modo2_5blocos4.Cells[02, 27] := '1';
   stgr_Modo2_5blocos4.Cells[03, 27] := '0';
   stgr_Modo2_5blocos4.Cells[04, 27] := '3';
   stgr_Modo2_5blocos4.Cells[05, 27] := '2';
  //28
   stgr_Modo2_5blocos4.Cells[00, 28] := '28';
   stgr_Modo2_5blocos4.Cells[01, 28] := '0';
   stgr_Modo2_5blocos4.Cells[02, 28] := '1';
   stgr_Modo2_5blocos4.Cells[03, 28] := '0';
   stgr_Modo2_5blocos4.Cells[04, 28] := '2';
   stgr_Modo2_5blocos4.Cells[05, 28] := '3';
  //29
   stgr_Modo2_5blocos4.Cells[00, 29] := '29';
   stgr_Modo2_5blocos4.Cells[01, 29] := '0';
   stgr_Modo2_5blocos4.Cells[02, 29] := '0';
   stgr_Modo2_5blocos4.Cells[03, 29] := '3';
   stgr_Modo2_5blocos4.Cells[04, 29] := '2';
   stgr_Modo2_5blocos4.Cells[05, 29] := '1';
  //30
   stgr_Modo2_5blocos4.Cells[00, 30] := '30';
   stgr_Modo2_5blocos4.Cells[01, 30] := '0';
   stgr_Modo2_5blocos4.Cells[02, 30] := '0';
   stgr_Modo2_5blocos4.Cells[03, 30] := '3';
   stgr_Modo2_5blocos4.Cells[04, 30] := '1';
   stgr_Modo2_5blocos4.Cells[05, 30] := '2';
  //31
   stgr_Modo2_5blocos4.Cells[00, 31] := '31';
   stgr_Modo2_5blocos4.Cells[01, 31] := '0';
   stgr_Modo2_5blocos4.Cells[02, 31] := '0';
   stgr_Modo2_5blocos4.Cells[03, 31] := '2';
   stgr_Modo2_5blocos4.Cells[04, 31] := '3';
   stgr_Modo2_5blocos4.Cells[05, 31] := '1';
  //32
   stgr_Modo2_5blocos4.Cells[00, 32] := '32';
   stgr_Modo2_5blocos4.Cells[01, 32] := '0';
   stgr_Modo2_5blocos4.Cells[02, 32] := '0';
   stgr_Modo2_5blocos4.Cells[03, 32] := '1';
   stgr_Modo2_5blocos4.Cells[04, 32] := '2';
   stgr_Modo2_5blocos4.Cells[05, 32] := '3';

  // Modo 3
  //01
   stgr_Modo3_5blocos4.Cells[00, 01] := '01';
   stgr_Modo3_5blocos4.Cells[01, 01] := '3';
   stgr_Modo3_5blocos4.Cells[02, 01] := '1';
   stgr_Modo3_5blocos4.Cells[03, 01] := '1';
   stgr_Modo3_5blocos4.Cells[04, 01] := '1';
   stgr_Modo3_5blocos4.Cells[05, 01] := '0';
  //02
   stgr_Modo3_5blocos4.Cells[00, 02] := '02';
   stgr_Modo3_5blocos4.Cells[01, 02] := '3';
   stgr_Modo3_5blocos4.Cells[02, 02] := '1';
   stgr_Modo3_5blocos4.Cells[03, 02] := '1';
   stgr_Modo3_5blocos4.Cells[04, 02] := '0';
   stgr_Modo3_5blocos4.Cells[05, 02] := '1';
  //03
   stgr_Modo3_5blocos4.Cells[00, 03] := '03';
   stgr_Modo3_5blocos4.Cells[01, 03] := '3';
   stgr_Modo3_5blocos4.Cells[02, 03] := '1';
   stgr_Modo3_5blocos4.Cells[03, 03] := '0';
   stgr_Modo3_5blocos4.Cells[04, 03] := '1';
   stgr_Modo3_5blocos4.Cells[05, 03] := '1';
  //04
   stgr_Modo3_5blocos4.Cells[00, 04] := '04';
   stgr_Modo3_5blocos4.Cells[01, 04] := '3';
   stgr_Modo3_5blocos4.Cells[02, 04] := '0';
   stgr_Modo3_5blocos4.Cells[03, 04] := '1';
   stgr_Modo3_5blocos4.Cells[04, 04] := '1';
   stgr_Modo3_5blocos4.Cells[05, 04] := '1';
  //05
   stgr_Modo3_5blocos4.Cells[00, 05] := '05';
   stgr_Modo3_5blocos4.Cells[01, 05] := '1';
   stgr_Modo3_5blocos4.Cells[02, 05] := '3';
   stgr_Modo3_5blocos4.Cells[03, 05] := '1';
   stgr_Modo3_5blocos4.Cells[04, 05] := '1';
   stgr_Modo3_5blocos4.Cells[05, 05] := '0';
  //06
   stgr_Modo3_5blocos4.Cells[00, 06] := '06';
   stgr_Modo3_5blocos4.Cells[01, 06] := '1';
   stgr_Modo3_5blocos4.Cells[02, 06] := '3';
   stgr_Modo3_5blocos4.Cells[03, 06] := '1';
   stgr_Modo3_5blocos4.Cells[04, 06] := '0';
   stgr_Modo3_5blocos4.Cells[05, 06] := '1';
  //07
   stgr_Modo3_5blocos4.Cells[00, 07] := '07';
   stgr_Modo3_5blocos4.Cells[01, 07] := '1';
   stgr_Modo3_5blocos4.Cells[02, 07] := '3';
   stgr_Modo3_5blocos4.Cells[03, 07] := '0';
   stgr_Modo3_5blocos4.Cells[04, 07] := '1';
   stgr_Modo3_5blocos4.Cells[05, 07] := '1';
  //08
   stgr_Modo3_5blocos4.Cells[00, 08] := '08';
   stgr_Modo3_5blocos4.Cells[01, 08] := '1';
   stgr_Modo3_5blocos4.Cells[02, 08] := '1';
   stgr_Modo3_5blocos4.Cells[03, 08] := '3';
   stgr_Modo3_5blocos4.Cells[04, 08] := '1';
   stgr_Modo3_5blocos4.Cells[05, 08] := '0';
  //09
   stgr_Modo3_5blocos4.Cells[00, 09] := '09';
   stgr_Modo3_5blocos4.Cells[01, 09] := '1';
   stgr_Modo3_5blocos4.Cells[02, 09] := '1';
   stgr_Modo3_5blocos4.Cells[03, 09] := '3';
   stgr_Modo3_5blocos4.Cells[04, 09] := '0';
   stgr_Modo3_5blocos4.Cells[05, 09] := '1';
  //10
   stgr_Modo3_5blocos4.Cells[00, 10] := '10';
   stgr_Modo3_5blocos4.Cells[01, 10] := '1';
   stgr_Modo3_5blocos4.Cells[02, 10] := '1';
   stgr_Modo3_5blocos4.Cells[03, 10] := '0';
   stgr_Modo3_5blocos4.Cells[04, 10] := '3';
   stgr_Modo3_5blocos4.Cells[05, 10] := '1';
  //11
   stgr_Modo3_5blocos4.Cells[00, 11] := '11';
   stgr_Modo3_5blocos4.Cells[01, 11] := '1';
   stgr_Modo3_5blocos4.Cells[02, 11] := '0';
   stgr_Modo3_5blocos4.Cells[03, 11] := '3';
   stgr_Modo3_5blocos4.Cells[04, 11] := '1';
   stgr_Modo3_5blocos4.Cells[05, 11] := '1';
  //12
   stgr_Modo3_5blocos4.Cells[00, 12] := '12';
   stgr_Modo3_5blocos4.Cells[01, 12] := '1';
   stgr_Modo3_5blocos4.Cells[02, 12] := '0';
   stgr_Modo3_5blocos4.Cells[03, 12] := '1';
   stgr_Modo3_5blocos4.Cells[04, 12] := '3';
   stgr_Modo3_5blocos4.Cells[05, 12] := '1';
  //13
   stgr_Modo3_5blocos4.Cells[00, 13] := '13';
   stgr_Modo3_5blocos4.Cells[01, 13] := '1';
   stgr_Modo3_5blocos4.Cells[02, 13] := '0';
   stgr_Modo3_5blocos4.Cells[03, 13] := '1';
   stgr_Modo3_5blocos4.Cells[04, 13] := '1';
   stgr_Modo3_5blocos4.Cells[05, 13] := '3';
  //14
   stgr_Modo3_5blocos4.Cells[00, 14] := '14';
   stgr_Modo3_5blocos4.Cells[01, 14] := '0';
   stgr_Modo3_5blocos4.Cells[02, 14] := '1';
   stgr_Modo3_5blocos4.Cells[03, 14] := '3';
   stgr_Modo3_5blocos4.Cells[04, 14] := '1';
   stgr_Modo3_5blocos4.Cells[05, 14] := '1';
  //15
   stgr_Modo3_5blocos4.Cells[00, 15] := '15';
   stgr_Modo3_5blocos4.Cells[01, 15] := '0';
   stgr_Modo3_5blocos4.Cells[02, 15] := '1';
   stgr_Modo3_5blocos4.Cells[03, 15] := '1';
   stgr_Modo3_5blocos4.Cells[04, 15] := '3';
   stgr_Modo3_5blocos4.Cells[05, 15] := '1';
  //16
   stgr_Modo3_5blocos4.Cells[00, 16] := '16';
   stgr_Modo3_5blocos4.Cells[01, 16] := '0';
   stgr_Modo3_5blocos4.Cells[02, 16] := '1';
   stgr_Modo3_5blocos4.Cells[03, 16] := '1';
   stgr_Modo3_5blocos4.Cells[04, 16] := '1';
   stgr_Modo3_5blocos4.Cells[05, 16] := '3';
  //17
   stgr_Modo3_5blocos4.Cells[00, 17] := '17';
   stgr_Modo3_5blocos4.Cells[01, 17] := '0';
   stgr_Modo3_5blocos4.Cells[02, 17] := '3';
   stgr_Modo3_5blocos4.Cells[03, 17] := '1';
   stgr_Modo3_5blocos4.Cells[04, 17] := '1';
   stgr_Modo3_5blocos4.Cells[05, 17] := '1';

  // Modo 4
  //01
   stgr_Modo4_5blocos4.Cells[00, 01] := '01';
   stgr_Modo4_5blocos4.Cells[01, 01] := '2';
   stgr_Modo4_5blocos4.Cells[02, 01] := '2';
   stgr_Modo4_5blocos4.Cells[03, 01] := '2';
   stgr_Modo4_5blocos4.Cells[04, 01] := '0';
   stgr_Modo4_5blocos4.Cells[05, 01] := '0';
  //02
   stgr_Modo4_5blocos4.Cells[00, 02] := '02';
   stgr_Modo4_5blocos4.Cells[01, 02] := '2';
   stgr_Modo4_5blocos4.Cells[02, 02] := '2';
   stgr_Modo4_5blocos4.Cells[03, 02] := '0';
   stgr_Modo4_5blocos4.Cells[04, 02] := '0';
   stgr_Modo4_5blocos4.Cells[05, 02] := '2';
  //03
   stgr_Modo4_5blocos4.Cells[00, 03] := '03';
   stgr_Modo4_5blocos4.Cells[01, 03] := '2';
   stgr_Modo4_5blocos4.Cells[02, 03] := '2';
   stgr_Modo4_5blocos4.Cells[03, 03] := '0';
   stgr_Modo4_5blocos4.Cells[04, 03] := '2';
   stgr_Modo4_5blocos4.Cells[05, 03] := '0';
  //04
   stgr_Modo4_5blocos4.Cells[00, 04] := '04';
   stgr_Modo4_5blocos4.Cells[01, 04] := '2';
   stgr_Modo4_5blocos4.Cells[02, 04] := '0';
   stgr_Modo4_5blocos4.Cells[03, 04] := '2';
   stgr_Modo4_5blocos4.Cells[04, 04] := '0';
   stgr_Modo4_5blocos4.Cells[05, 04] := '2';
  //05
   stgr_Modo4_5blocos4.Cells[00, 05] := '05';
   stgr_Modo4_5blocos4.Cells[01, 05] := '0';
   stgr_Modo4_5blocos4.Cells[02, 05] := '2';
   stgr_Modo4_5blocos4.Cells[03, 05] := '2';
   stgr_Modo4_5blocos4.Cells[04, 05] := '0';
   stgr_Modo4_5blocos4.Cells[05, 05] := '2';
  //06
   stgr_Modo4_5blocos4.Cells[00, 06] := '06';
   stgr_Modo4_5blocos4.Cells[01, 06] := '0';
   stgr_Modo4_5blocos4.Cells[02, 06] := '2';
   stgr_Modo4_5blocos4.Cells[03, 06] := '0';
   stgr_Modo4_5blocos4.Cells[04, 06] := '2';
   stgr_Modo4_5blocos4.Cells[05, 06] := '2';
  //07
   stgr_Modo4_5blocos4.Cells[00, 07] := '07';
   stgr_Modo4_5blocos4.Cells[01, 07] := '2';
   stgr_Modo4_5blocos4.Cells[02, 07] := '0';
   stgr_Modo4_5blocos4.Cells[03, 07] := '0';
   stgr_Modo4_5blocos4.Cells[04, 07] := '2';
   stgr_Modo4_5blocos4.Cells[05, 07] := '2';
  //08
   stgr_Modo4_5blocos4.Cells[00, 08] := '08';
   stgr_Modo4_5blocos4.Cells[01, 08] := '2';
   stgr_Modo4_5blocos4.Cells[02, 08] := '0';
   stgr_Modo4_5blocos4.Cells[03, 08] := '2';
   stgr_Modo4_5blocos4.Cells[04, 08] := '2';
   stgr_Modo4_5blocos4.Cells[05, 08] := '0';
  //09
   stgr_Modo4_5blocos4.Cells[00, 09] := '09';
   stgr_Modo4_5blocos4.Cells[01, 09] := '2';
   stgr_Modo4_5blocos4.Cells[02, 09] := '0';
   stgr_Modo4_5blocos4.Cells[03, 09] := '0';
   stgr_Modo4_5blocos4.Cells[04, 09] := '2';
   stgr_Modo4_5blocos4.Cells[05, 09] := '2';
  //10
   stgr_Modo4_5blocos4.Cells[00, 10] := '10';
   stgr_Modo4_5blocos4.Cells[01, 10] := '0';
   stgr_Modo4_5blocos4.Cells[02, 10] := '0';
   stgr_Modo4_5blocos4.Cells[03, 10] := '2';
   stgr_Modo4_5blocos4.Cells[04, 10] := '2';
   stgr_Modo4_5blocos4.Cells[05, 10] := '2';

 // =====>>> Conjunto 01
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 01] := '+11';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 01] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 01] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 01] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 01] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 01] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 01] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 01] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 01] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 01] := '28';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 01] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 01] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 01] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 01] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 02] := '+12';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 02] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 02] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 02] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 02] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 02] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 02] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 02] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 02] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 02] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 02] := '27';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 02] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 02] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 02] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 03] := '+11';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 03] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 03] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 03] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 03] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 03] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 03] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 03] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 03] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 03] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 03] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 03] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 03] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 03] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 04] := '+12';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 04] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 04] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 04] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 04] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 04] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 04] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 04] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 04] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 04] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 04] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 04] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 04] := '27';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 04] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 05] := '+13';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 05] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 05] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 05] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 05] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 05] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 05] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 05] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 05] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 05] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 05] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 05] := '27';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 05] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 05] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 05] := '00';
   // 06
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 06] := '+12';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 06] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 06] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 06] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 06] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 06] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 06] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 06] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 06] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 06] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 06] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 06] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 06] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 06] := '00';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 06] := '00';
   // 07
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 07] := '+13';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 07] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 07] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 07] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 07] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 07] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 07] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 07] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 07] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 07] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 07] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 07] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 07] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 07] := '27';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 07] := '00';
   // 08
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 08] := '+13';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 08] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 08] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 08] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 08] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 08] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 08] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 08] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 08] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 08] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 08] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 08] := '18';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 08] := '29';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 08] := '30';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 08] := '00';
   // 09
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 09] := '+14';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 09] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 09] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 09] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 09] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 09] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 09] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 09] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 09] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 09] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 09] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 09] := '20';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 09] := '21';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 09] := '22';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 09] := '27';
   // 10
   stgr_bloco2Com10LinhasParaCj1.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj1.Cells[01, 10] := '+13';
   stgr_bloco2Com10LinhasParaCj1.Cells[02, 10] := '01';
   stgr_bloco2Com10LinhasParaCj1.Cells[03, 10] := '03';
   stgr_bloco2Com10LinhasParaCj1.Cells[04, 10] := '04';
   stgr_bloco2Com10LinhasParaCj1.Cells[05, 10] := '06';
   stgr_bloco2Com10LinhasParaCj1.Cells[06, 10] := '08';
   stgr_bloco2Com10LinhasParaCj1.Cells[07, 10] := '11';
   stgr_bloco2Com10LinhasParaCj1.Cells[08, 10] := '12';
   stgr_bloco2Com10LinhasParaCj1.Cells[09, 10] := '13';
   stgr_bloco2Com10LinhasParaCj1.Cells[10, 10] := '14';
   stgr_bloco2Com10LinhasParaCj1.Cells[11, 10] := '15';
   stgr_bloco2Com10LinhasParaCj1.Cells[12, 10] := '16';
   stgr_bloco2Com10LinhasParaCj1.Cells[13, 10] := '24';
   stgr_bloco2Com10LinhasParaCj1.Cells[14, 10] := '25';
   stgr_bloco2Com10LinhasParaCj1.Cells[15, 10] := '00';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 07 09 17 19 23 26 28 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 01] := '+8';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 01] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 01] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 01] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 01] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 01] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 01] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 01] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 01] := '31';
   // Linha 02
   // 05 10 17 19 26 28 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 02] := '+7';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 02] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 02] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 02] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 02] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 02] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 02] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 02] := '31';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 02] := '00';
   // Linha 03
   // 05 07 09 10 17 19 23 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 03] := '+8';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 03] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 03] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 03] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 03] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 03] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 03] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 03] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 03] := '31';
   // Linha 04
   // 05 07 09 10 23 26 28
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 04] := '+7';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 04] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 04] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 04] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 04] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 04] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 04] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 04] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 04] := '00';
   // Linha 05
   // 02 17 19 26 28 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 05] := '+6';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 05] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 05] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 05] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 05] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 05] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 05] := '31';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 05] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 05] := '00';
   // Linha 06
   // 02 07 09 17 19 23 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 06] := '+7';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 06] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 06] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 06] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 06] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 06] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 06] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 06] := '31';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 06] := '00';
   // Linha 07
   // 02 07 09 23 26 28
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 07] := '+6';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 07] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 07] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 07] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 07] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 07] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 07] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 07] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 07] := '00';
   // Linha 08
   // 02 05 10 17 19 31
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 08] := '+6';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 08] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 08] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 08] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 08] := '17';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 08] := '19';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 08] := '31';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 08] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 08] := '00';
   // Linha 09
   // 02 05 10 26 28
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 09] := '+5';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 09] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 09] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 09] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 09] := '26';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 09] := '28';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 09] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 09] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 09] := '00';
   // Linha 10
   // 02 05 07 09 10 23
   stgr_bloco3Com10LinhasParaCj1.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[01, 10] := '+6';
   stgr_bloco3Com10LinhasParaCj1.Cells[02, 10] := '02';
   stgr_bloco3Com10LinhasParaCj1.Cells[03, 10] := '05';
   stgr_bloco3Com10LinhasParaCj1.Cells[04, 10] := '07';
   stgr_bloco3Com10LinhasParaCj1.Cells[05, 10] := '09';
   stgr_bloco3Com10LinhasParaCj1.Cells[06, 10] := '10';
   stgr_bloco3Com10LinhasParaCj1.Cells[07, 10] := '23';
   stgr_bloco3Com10LinhasParaCj1.Cells[08, 10] := '00';
   stgr_bloco3Com10LinhasParaCj1.Cells[09, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 02 05 10
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 01] := '+3';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 01] := '02';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 01] := '05';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 01] := '10';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 01] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 01] := '00';
   // Linha 02
   // 02 07 09 23
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 02] := '+4';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 02] := '02';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 02] := '07';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 02] := '09';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 02] := '23';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 02] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 02] := '00';
   // Linha 03
   // 02 26 28
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 03] := '+4';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 03] := '02';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 03] := '26';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 03] := '28';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 03] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 03] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 03] := '00';
   // Linha 04
   // 02 17 19 31
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 04] := '+4';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 04] := '02';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 04] := '17';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 04] := '19';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 04] := '31';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 04] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 04] := '00';
   // Linha 05
   // 05 07 09 10 23
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 05] := '+5';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 05] := '05';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 05] := '07';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 05] := '09';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 05] := '10';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 05] := '23';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 05] := '00';
   // Linha 06
   // 05 10 26 28
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 06] := '+4';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 06] := '05';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 06] := '10';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 06] := '26';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 06] := '28';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 06] := '00';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 06] := '00';
   // Linha 07
   // 05 10 17 19 31
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 07] := '+5';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 07] := '05';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 07] := '10';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 07] := '17';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 07] := '19';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 07] := '31';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 07] := '00';
   // Linha 08
   // 07 09 23 26 28
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 08] := '+5';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 08] := '07';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 08] := '09';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 08] := '23';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 08] := '26';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 08] := '28';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 08] := '00';
   // Linha 09
   // 07 09 17 19 23 31
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 09] := '+6';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 09] := '07';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 09] := '09';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 09] := '17';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 09] := '19';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 09] := '23';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 09] := '31';
   // Linha 10
   // 17 19 26 28 31
   stgr_bloco4Com10LinhasParaCj1.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj1.Cells[01, 10] := '+5';
   stgr_bloco4Com10LinhasParaCj1.Cells[02, 10] := '17';
   stgr_bloco4Com10LinhasParaCj1.Cells[03, 10] := '19';
   stgr_bloco4Com10LinhasParaCj1.Cells[04, 10] := '26';
   stgr_bloco4Com10LinhasParaCj1.Cells[05, 10] := '28';
   stgr_bloco4Com10LinhasParaCj1.Cells[06, 10] := '31';
   stgr_bloco4Com10LinhasParaCj1.Cells[07, 10] := '00';

 // =====>>> Conjunto 02
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 01] := '+12';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 01] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 01] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 01] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 01] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 01] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 01] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 01] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 01] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 01] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 01] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 01] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 01] := '31';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 01] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 02] := '+12';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 02] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 02] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 02] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 02] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 02] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 02] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 02] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 02] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 02] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 02] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 02] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 02] := '31';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 02] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 03] := '+11';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 03] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 03] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 03] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 03] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 03] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 03] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 03] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 03] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 03] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 03] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 03] := '31';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 03] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 03] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 04] := '+11';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 04] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 04] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 04] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 04] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 04] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 04] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 04] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 04] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 04] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 04] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 04] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 04] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 04] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 05] := '+14';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 05] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 05] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 05] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 05] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 05] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 05] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 05] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 05] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 05] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 05] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 05] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 05] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 05] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 05] := '31';
   // 06
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 06] := '+13';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 06] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 06] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 06] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 06] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 06] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 06] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 06] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 06] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 06] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 06] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 06] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 06] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 06] := '31';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 06] := '00';
   // 07
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 07] := '+13';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 07] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 07] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 07] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 07] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 07] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 07] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 07] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 07] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 07] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 07] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 07] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 07] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 07] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 07] := '00';
   // 08
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 08] := '+13';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 08] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 08] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 08] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 08] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 08] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 08] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 08] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 08] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 08] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 08] := '17';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 08] := '18';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 08] := '29';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 08] := '31';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 08] := '00';
   // 09
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 09] := '+13';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 09] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 09] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 09] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 09] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 09] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 09] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 09] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 09] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 09] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 09] := '20';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 09] := '22';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 09] := '26';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 09] := '28';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 09] := '00';
   // 10
   stgr_bloco2Com10LinhasParaCj2.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[01, 10] := '+12';
   stgr_bloco2Com10LinhasParaCj2.Cells[02, 10] := '02';
   stgr_bloco2Com10LinhasParaCj2.Cells[03, 10] := '03';
   stgr_bloco2Com10LinhasParaCj2.Cells[04, 10] := '05';
   stgr_bloco2Com10LinhasParaCj2.Cells[05, 10] := '07';
   stgr_bloco2Com10LinhasParaCj2.Cells[06, 10] := '08';
   stgr_bloco2Com10LinhasParaCj2.Cells[07, 10] := '10';
   stgr_bloco2Com10LinhasParaCj2.Cells[08, 10] := '11';
   stgr_bloco2Com10LinhasParaCj2.Cells[09, 10] := '13';
   stgr_bloco2Com10LinhasParaCj2.Cells[10, 10] := '14';
   stgr_bloco2Com10LinhasParaCj2.Cells[11, 10] := '15';
   stgr_bloco2Com10LinhasParaCj2.Cells[12, 10] := '16';
   stgr_bloco2Com10LinhasParaCj2.Cells[13, 10] := '24';
   stgr_bloco2Com10LinhasParaCj2.Cells[14, 10] := '00';
   stgr_bloco2Com10LinhasParaCj2.Cells[15, 10] := '00';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 09 19 21 23 25 27 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 01] := '+7';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 01] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 01] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 01] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 01] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 01] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 01] := '27';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 01] := '30';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 01] := '00';
   // Linha 02
   // 04 06 12 19 21 27 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 02] := '+7';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 02] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 02] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 02] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 02] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 02] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 02] := '27';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 02] := '30';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 02] := '00';
   // Linha 03
   // 04 06 09 12 19 23 25 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 03] := '+8';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 03] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 03] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 03] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 03] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 03] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 03] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 03] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 03] := '30';
   // Linha 04
   // 04 06 09 12 21 23 25 27
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 04] := '+8';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 04] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 04] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 04] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 04] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 04] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 04] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 04] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 04] := '27';
   // Linha 05
   // 01 19 21 27 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 05] := '+5';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 05] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 05] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 05] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 05] := '27';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 05] := '30';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 05] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 05] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 05] := '00';
   // Linha 06
   // 01 09 19 23 25 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 06] := '+6';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 06] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 06] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 06] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 06] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 06] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 06] := '30';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 06] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 06] := '00';
   // Linha 07
   // 01 09 21 23 25 27
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 07] := '+6';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 07] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 07] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 07] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 07] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 07] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 07] := '27';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 07] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 07] := '00';
   // Linha 08
   // 01 04 06 12 19 30
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 08] := '+6';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 08] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 08] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 08] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 08] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 08] := '19';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 08] := '30';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 08] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 08] := '00';
   // Linha 09
   // 01 04 06 12 21 27
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 09] := '+6';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 09] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 09] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 09] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 09] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 09] := '21';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 09] := '27';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 09] := '00';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 09] := '00';
   // Linha 10
   // 01 04 06 09 12 23 25
   stgr_bloco3Com10LinhasParaCj2.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj2.Cells[01, 10] := '+7';
   stgr_bloco3Com10LinhasParaCj2.Cells[02, 10] := '01';
   stgr_bloco3Com10LinhasParaCj2.Cells[03, 10] := '04';
   stgr_bloco3Com10LinhasParaCj2.Cells[04, 10] := '06';
   stgr_bloco3Com10LinhasParaCj2.Cells[05, 10] := '09';
   stgr_bloco3Com10LinhasParaCj2.Cells[06, 10] := '12';
   stgr_bloco3Com10LinhasParaCj2.Cells[07, 10] := '23';
   stgr_bloco3Com10LinhasParaCj2.Cells[08, 10] := '25';
   stgr_bloco3Com10LinhasParaCj2.Cells[09, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 01 04 06 12
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 01] := '+4';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 01] := '01';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 01] := '04';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 01] := '06';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 01] := '12';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 01] := '00';
   // Linha 02
   // 01 09 23 25
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 02] := '+4';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 02] := '01';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 02] := '09';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 02] := '23';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 02] := '25';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 02] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 02] := '00';
   // Linha 03
   // 01 21 27
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 03] := '+3';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 03] := '01';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 03] := '21';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 03] := '27';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 03] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 03] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 03] := '00';
   // Linha 04
   // 01 19 30
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 04] := '+3';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 04] := '01';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 04] := '19';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 04] := '30';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 04] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 04] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 04] := '00';
   // Linha 05
   // 04 06 09 12 23 25
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 05] := '+6';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 05] := '04';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 05] := '06';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 05] := '09';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 05] := '12';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 05] := '23';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 05] := '25';
   // Linha 06
   // 04 06 12 21 27
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 06] := '+5';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 06] := '04';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 06] := '06';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 06] := '12';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 06] := '21';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 06] := '27';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 06] := '00';
   // Linha 07
   // 04 06 12 19 30
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 07] := '+5';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 07] := '04';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 07] := '06';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 07] := '12';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 07] := '19';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 07] := '30';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 07] := '00';
   // Linha 08
   // 09 21 23 25 27
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 08] := '+5';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 08] := '09';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 08] := '21';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 08] := '23';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 08] := '25';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 08] := '27';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 08] := '00';
   // Linha 09
   // 09 19 23 25 30
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 09] := '+5';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 09] := '09';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 09] := '19';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 09] := '23';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 09] := '25';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 09] := '30';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 09] := '00';
   // Linha 10
   // 19 21 27 30
   stgr_bloco4Com10LinhasParaCj2.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj2.Cells[01, 10] := '+4';
   stgr_bloco4Com10LinhasParaCj2.Cells[02, 10] := '19';
   stgr_bloco4Com10LinhasParaCj2.Cells[03, 10] := '21';
   stgr_bloco4Com10LinhasParaCj2.Cells[04, 10] := '27';
   stgr_bloco4Com10LinhasParaCj2.Cells[05, 10] := '30';
   stgr_bloco4Com10LinhasParaCj2.Cells[06, 10] := '00';
   stgr_bloco4Com10LinhasParaCj2.Cells[07, 10] := '00';


 // =====>>> Conjunto 03
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 01] := '+12';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 01] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 01] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 01] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 01] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 01] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 01] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 01] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 01] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 01] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 01] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 01] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 01] := '30';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 01] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 02] := '+13';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 02] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 02] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 02] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 02] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 02] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 02] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 02] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 02] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 02] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 02] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 02] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 02] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 02] := '30';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 03] := '+13';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 03] := '05';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 03] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 03] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 03] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 03] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 03] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 03] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 03] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 03] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 03] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 03] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 03] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 03] := '30';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 04] := '+11';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 04] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 04] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 04] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 04] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 04] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 04] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 04] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 04] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 04] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 04] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 04] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 04] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 04] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 05] := '+13';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 05] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 05] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 05] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 05] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 05] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 05] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 05] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 05] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 05] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 05] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 05] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 05] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 05] := '30';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 05] := '00';
   // 06
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 06] := '+14';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 06] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 06] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 06] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 06] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 06] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 06] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 06] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 06] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 06] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 06] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 06] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 06] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 06] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 06] := '30';
   // 07
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 07] := '+11';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 07] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 07] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 07] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 07] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 07] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 07] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 07] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 07] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 07] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 07] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 07] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 07] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 07] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 07] := '00';
   // 08
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 08] := '+14';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 08] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 08] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 08] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 08] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 08] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 08] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 08] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 08] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 08] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 08] := '17';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 08] := '18';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 08] := '19';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 08] := '29';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 08] := '30';
   // 09
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 09] := '+11';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 09] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 09] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 09] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 09] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 09] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 09] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 09] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 09] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 09] := '22';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 09] := '27';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 09] := '28';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 09] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 09] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 09] := '00';
   // 10
   stgr_bloco2Com10LinhasParaCj3.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[01, 10] := '+12';
   stgr_bloco2Com10LinhasParaCj3.Cells[02, 10] := '02';
   stgr_bloco2Com10LinhasParaCj3.Cells[03, 10] := '04';
   stgr_bloco2Com10LinhasParaCj3.Cells[04, 10] := '06';
   stgr_bloco2Com10LinhasParaCj3.Cells[05, 10] := '07';
   stgr_bloco2Com10LinhasParaCj3.Cells[06, 10] := '08';
   stgr_bloco2Com10LinhasParaCj3.Cells[07, 10] := '10';
   stgr_bloco2Com10LinhasParaCj3.Cells[08, 10] := '11';
   stgr_bloco2Com10LinhasParaCj3.Cells[09, 10] := '13';
   stgr_bloco2Com10LinhasParaCj3.Cells[10, 10] := '14';
   stgr_bloco2Com10LinhasParaCj3.Cells[11, 10] := '15';
   stgr_bloco2Com10LinhasParaCj3.Cells[12, 10] := '16';
   stgr_bloco2Com10LinhasParaCj3.Cells[13, 10] := '25';
   stgr_bloco2Com10LinhasParaCj3.Cells[14, 10] := '00';
   stgr_bloco2Com10LinhasParaCj3.Cells[15, 10] := '00';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 09 20 21 23 24 26 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 01] := '+7';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 01] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 01] := '20';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 01] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 01] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 01] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 01] := '26';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 01] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 01] := '00';
   // Linha 02
   // 05 12 20 21 26 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 02] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 02] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 02] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 02] := '20';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 02] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 02] := '26';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 02] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 02] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 02] := '00';
   // Linha 03
   // 05 09 12 23 24 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 03] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 03] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 03] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 03] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 03] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 03] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 03] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 03] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 03] := '00';
   // Linha 04
   // 05 09 12 20 21 23 24 26
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 04] := '+8';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 04] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 04] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 04] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 04] := '20';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 04] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 04] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 04] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 04] := '26';
   // Linha 05
   // 01 03 20 21 26 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 05] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 05] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 05] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 05] := '20';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 05] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 05] := '26';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 05] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 05] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 05] := '00';
   // Linha 06
   // 01 03 09 23 24 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 06] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 06] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 06] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 06] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 06] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 06] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 06] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 06] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 06] := '00';
   // Linha 07
   // 01 03 09 20 21 23 24 26
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 07] := '+8';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 07] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 07] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 07] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 07] := '20';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 07] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 07] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 07] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 07] := '26';
   // Linha 08
   // 01 03 05 12 31
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 08] := '+5';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 08] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 08] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 08] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 08] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 08] := '31';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 08] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 08] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 08] := '00';
   // Linha 09
   // 01 03 05 12 20 21 26
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 09] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 09] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 09] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 09] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 09] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 09] := '21';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 09] := '26';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 09] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 09] := '00';
   // Linha 10
   // 01 03 05 09 12 23 24
   stgr_bloco3Com10LinhasParaCj3.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj3.Cells[01, 10] := '+6';
   stgr_bloco3Com10LinhasParaCj3.Cells[02, 10] := '01';
   stgr_bloco3Com10LinhasParaCj3.Cells[03, 10] := '03';
   stgr_bloco3Com10LinhasParaCj3.Cells[04, 10] := '05';
   stgr_bloco3Com10LinhasParaCj3.Cells[05, 10] := '12';
   stgr_bloco3Com10LinhasParaCj3.Cells[06, 10] := '23';
   stgr_bloco3Com10LinhasParaCj3.Cells[07, 10] := '24';
   stgr_bloco3Com10LinhasParaCj3.Cells[08, 10] := '00';
   stgr_bloco3Com10LinhasParaCj3.Cells[09, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 01 03 05 12
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 01] := '+4';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 01] := '01';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 01] := '03';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 01] := '05';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 01] := '12';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 01] := '00';
   // Linha 02
   // 01 03 09 23 24
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 02] := '+5';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 02] := '01';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 02] := '03';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 02] := '09';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 02] := '23';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 02] := '24';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 02] := '00';
   // Linha 03
   // 01 03 20 21 26
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 03] := '+5';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 03] := '01';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 03] := '03';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 03] := '20';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 03] := '21';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 03] := '26';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 03] := '00';
   // Linha 04
   // 01 03 31
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 04] := '+3';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 04] := '01';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 04] := '03';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 04] := '31';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 04] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 04] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 04] := '00';
   // Linha 05
   // 05 09 12 23 24
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 05] := '+5';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 05] := '05';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 05] := '09';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 05] := '12';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 05] := '23';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 05] := '24';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 05] := '00';
   // Linha 06
   // 05 12 20 21 26
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 06] := '+5';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 06] := '05';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 06] := '12';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 06] := '20';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 06] := '21';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 06] := '26';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 06] := '00';
   // Linha 07
   // 05 12 31
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 07] := '+3';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 07] := '05';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 07] := '12';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 07] := '31';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 07] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 07] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 07] := '00';
   // Linha 08
   // 09 20 21 23 24 26
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 08] := '+6';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 08] := '09';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 08] := '20';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 08] := '21';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 08] := '23';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 08] := '24';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 08] := '26';
   // Linha 09
   // 09 23 24 31
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 09] := '+4';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 09] := '09';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 09] := '23';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 09] := '24';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 09] := '31';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 09] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 09] := '00';
   // Linha 10
   // 20 21 26 31
   stgr_bloco4Com10LinhasParaCj3.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj3.Cells[01, 10] := '+4';
   stgr_bloco4Com10LinhasParaCj3.Cells[02, 10] := '20';
   stgr_bloco4Com10LinhasParaCj3.Cells[03, 10] := '21';
   stgr_bloco4Com10LinhasParaCj3.Cells[04, 10] := '26';
   stgr_bloco4Com10LinhasParaCj3.Cells[05, 10] := '31';
   stgr_bloco4Com10LinhasParaCj3.Cells[06, 10] := '00';
   stgr_bloco4Com10LinhasParaCj3.Cells[07, 10] := '00';


 // =====>>> Conjunto 04
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 01] := '+13';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 01] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 01] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 01] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 01] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 01] := '18';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 01] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 01] := '21';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 01] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 01] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 01] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 01] := '28';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 01] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 01] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 02] := '+11';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 02] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 02] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 02] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 02] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 02] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 02] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 02] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 02] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 02] := '28';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 02] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 02] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 02] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 02] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 03] := '+11';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 03] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 03] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 03] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 03] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 03] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 03] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 03] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 03] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 03] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 03] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 03] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 03] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 03] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 04] := '+12';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 04] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 04] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 04] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 04] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 04] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 04] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 04] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 04] := '21';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 04] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 04] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 04] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 04] := '28';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 04] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 05] := '+14';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 05] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 05] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 05] := '13';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 05] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 05] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 05] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 05] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 05] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 05] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 05] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 05] := '28';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 05] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 05] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 05] := '00';
   // 06
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 06] := '+13';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 06] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 06] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 06] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 06] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 06] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 06] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 06] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 06] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 06] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 06] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 06] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 06] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 06] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 06] := '00';
   // 07
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 07] := '+14';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 07] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 07] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 07] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 07] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 07] := '13';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 07] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 07] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 07] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 07] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 07] := '21';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 07] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 07] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 07] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 07] := '28';
   // 08
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 08] := '+12';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 08] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 08] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 08] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 08] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 08] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 08] := '13';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 08] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 08] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 08] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 08] := '17';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 08] := '29';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 08] := '30';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 08] := '00';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 08] := '00';
   // 09
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 09] := '+13';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 09] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 09] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 09] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 09] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 09] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 09] := '13';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 09] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 09] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 09] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 09] := '20';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 09] := '21';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 09] := '22';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 09] := '28';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 09] := '00';
   // 10
   stgr_bloco2Com10LinhasParaCj4.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj4.Cells[01, 10] := '+13';
   stgr_bloco2Com10LinhasParaCj4.Cells[02, 10] := '02';
   stgr_bloco2Com10LinhasParaCj4.Cells[03, 10] := '03';
   stgr_bloco2Com10LinhasParaCj4.Cells[04, 10] := '04';
   stgr_bloco2Com10LinhasParaCj4.Cells[05, 10] := '07';
   stgr_bloco2Com10LinhasParaCj4.Cells[06, 10] := '08';
   stgr_bloco2Com10LinhasParaCj4.Cells[07, 10] := '11';
   stgr_bloco2Com10LinhasParaCj4.Cells[08, 10] := '12';
   stgr_bloco2Com10LinhasParaCj4.Cells[09, 10] := '13';
   stgr_bloco2Com10LinhasParaCj4.Cells[10, 10] := '14';
   stgr_bloco2Com10LinhasParaCj4.Cells[11, 10] := '15';
   stgr_bloco2Com10LinhasParaCj4.Cells[12, 10] := '16';
   stgr_bloco2Com10LinhasParaCj4.Cells[13, 10] := '24';
   stgr_bloco2Com10LinhasParaCj4.Cells[14, 10] := '25';
   stgr_bloco2Com10LinhasParaCj4.Cells[15, 10] := '00';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 09 18 19 23 26 27 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 01] := '+7';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 01] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 01] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 01] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 01] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 01] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 01] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 01] := '31';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 01] := '00';
   // Linha 02
   // 05 06 07 10 18 19 26 27 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 02] := '+8';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 02] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 02] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 02] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 02] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 02] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 02] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 02] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 02] := '31';
   // Linha 03
   // 05 06 09 10 18 19 23 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 03] := '+8';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 03] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 03] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 03] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 03] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 03] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 03] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 03] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 03] := '31';
   // Linha 04
   // 05 06 09 10 23 26 27
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 04] := '+7';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 04] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 04] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 04] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 04] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 04] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 04] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 04] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 04] := '00';
   // Linha 05
   // 01 18 19 26 27 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 05] := '+6';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 05] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 05] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 05] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 05] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 05] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 05] := '31';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 05] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 05] := '00';
   // Linha 06
   // 01 09 18 19 23 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 06] := '+6';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 06] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 06] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 06] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 06] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 06] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 06] := '31';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 06] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 06] := '00';
   // Linha 07
   // 01 09 23 26 27
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 07] := '+5';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 07] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 07] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 07] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 07] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 07] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 07] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 07] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 07] := '00';
   // Linha 08
   // 01 05 06 10 18 19 31
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 08] := '+7';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 08] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 08] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 08] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 08] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 08] := '18';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 08] := '19';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 08] := '31';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 08] := '00';
   // Linha 09
   // 01 05 06 10 26 27
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 09] := '+6';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 09] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 09] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 09] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 09] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 09] := '26';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 09] := '27';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 09] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 09] := '00';
   // Linha 10
   // 01 05 06 09 10 23
   stgr_bloco3Com10LinhasParaCj4.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[01, 10] := '+6';
   stgr_bloco3Com10LinhasParaCj4.Cells[02, 10] := '01';
   stgr_bloco3Com10LinhasParaCj4.Cells[03, 10] := '05';
   stgr_bloco3Com10LinhasParaCj4.Cells[04, 10] := '06';
   stgr_bloco3Com10LinhasParaCj4.Cells[05, 10] := '09';
   stgr_bloco3Com10LinhasParaCj4.Cells[06, 10] := '10';
   stgr_bloco3Com10LinhasParaCj4.Cells[07, 10] := '23';
   stgr_bloco3Com10LinhasParaCj4.Cells[08, 10] := '00';
   stgr_bloco3Com10LinhasParaCj4.Cells[09, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 01 05 06 10
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 01] := '+4';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 01] := '01';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 01] := '05';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 01] := '06';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 01] := '10';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 01] := '00';
   // Linha 02
   // 01 09 23
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 02] := '+3';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 02] := '01';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 02] := '09';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 02] := '23';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 02] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 02] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 02] := '00';
   // Linha 03
   // 01 26 27
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 03] := '+3';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 03] := '01';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 03] := '26';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 03] := '27';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 03] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 03] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 03] := '00';
   // Linha 04
   // 01 18 19 31
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 04] := '+3';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 04] := '01';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 04] := '18';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 04] := '19';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 04] := '31';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 04] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 04] := '00';
   // Linha 05
   // 05 06 09 10 23
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 05] := '+5';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 05] := '05';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 05] := '06';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 05] := '09';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 05] := '10';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 05] := '23';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 05] := '00';
   // Linha 06
   // 05 06 10 26 27
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 06] := '+5';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 06] := '05';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 06] := '06';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 06] := '10';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 06] := '26';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 06] := '27';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 06] := '00';
   // Linha 07
   // 05 06 10 18 19 31
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 07] := '+6';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 07] := '05';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 07] := '06';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 07] := '10';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 07] := '18';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 07] := '19';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 07] := '31';
   // Linha 08
   // 09 23 26 27
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 08] := '+4';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 08] := '09';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 08] := '23';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 08] := '26';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 08] := '27';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 08] := '00';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 08] := '00';
   // Linha 09
   // 09 18 19 23 31
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 09] := '+5';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 09] := '09';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 09] := '18';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 09] := '19';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 09] := '23';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 09] := '31';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 09] := '00';
   // Linha 10
   // 18 19 26 27 31
   stgr_bloco4Com10LinhasParaCj4.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj4.Cells[01, 10] := '+5';
   stgr_bloco4Com10LinhasParaCj4.Cells[02, 10] := '18';
   stgr_bloco4Com10LinhasParaCj4.Cells[03, 10] := '19';
   stgr_bloco4Com10LinhasParaCj4.Cells[04, 10] := '26';
   stgr_bloco4Com10LinhasParaCj4.Cells[05, 10] := '27';
   stgr_bloco4Com10LinhasParaCj4.Cells[06, 10] := '31';
   stgr_bloco4Com10LinhasParaCj4.Cells[07, 10] := '00';



 // =====>>> Conjunto 05
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 01] := '+12';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 01] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 01] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 01] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 01] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 01] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 01] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 01] := '22';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 01] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 01] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 01] := '25';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 01] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 01] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 01] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 02] := '+11';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 02] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 02] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 02] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 02] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 02] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 02] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 02] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 02] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 02] := '22';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 02] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 02] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 02] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 02] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 03] := '+11';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 03] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 03] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 03] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 03] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 03] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 03] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 03] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 03] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 03] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 03] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 03] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 03] := '25';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 03] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 04] := '+13';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 04] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 04] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 04] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 04] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 04] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 04] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 04] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 04] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 04] := '22';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 04] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 04] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 04] := '25';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 04] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 05] := '+11';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 05] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 05] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 05] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 05] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 05] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 05] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 05] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 05] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 05] := '22';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 05] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 05] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 05] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 05] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 05] := '00';
   // 06
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 06] := '+13';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 06] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 06] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 06] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 06] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 06] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 06] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 06] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 06] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 06] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 06] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 06] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 06] := '25';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 06] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 06] := '00';
   // 07
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 07] := '+13';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 07] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 07] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 07] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 07] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 07] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 07] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 07] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 07] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 07] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 07] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 07] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 07] := '25';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 07] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 07] := '00';
   // 08
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 08] := '+12';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 08] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 08] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 08] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 08] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 08] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 08] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 08] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 08] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 08] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 08] := '17';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 08] := '18';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 08] := '31';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 08] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 08] := '00';
   // 09
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 09] := '+12';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 09] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 09] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 09] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 09] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 09] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 09] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 09] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 09] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 09] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 09] := '20';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 09] := '22';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 09] := '26';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 09] := '00';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 09] := '00';
   // 10
   stgr_bloco2Com10LinhasParaCj5.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[01, 10] := '+14';
   stgr_bloco2Com10LinhasParaCj5.Cells[02, 10] := '01';
   stgr_bloco2Com10LinhasParaCj5.Cells[03, 10] := '06';
   stgr_bloco2Com10LinhasParaCj5.Cells[04, 10] := '08';
   stgr_bloco2Com10LinhasParaCj5.Cells[05, 10] := '09';
   stgr_bloco2Com10LinhasParaCj5.Cells[06, 10] := '10';
   stgr_bloco2Com10LinhasParaCj5.Cells[07, 10] := '11';
   stgr_bloco2Com10LinhasParaCj5.Cells[08, 10] := '12';
   stgr_bloco2Com10LinhasParaCj5.Cells[09, 10] := '13';
   stgr_bloco2Com10LinhasParaCj5.Cells[10, 10] := '14';
   stgr_bloco2Com10LinhasParaCj5.Cells[11, 10] := '15';
   stgr_bloco2Com10LinhasParaCj5.Cells[12, 10] := '16';
   stgr_bloco2Com10LinhasParaCj5.Cells[13, 10] := '23';
   stgr_bloco2Com10LinhasParaCj5.Cells[14, 10] := '24';
   stgr_bloco2Com10LinhasParaCj5.Cells[15, 10] := '25';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 07 19 21 27 28 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 01] := '+7';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 01] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 01] := '13';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 01] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 01] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 01] := '28';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 01] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 01] := '30';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 01] := '00';
   // Linha 02
   // 04 05 19 21 27 28 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 02] := '+7';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 02] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 02] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 02] := '19';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 02] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 02] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 02] := '28';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 02] := '30';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 02] := '00';
   // Linha 03
   // 04 05 07 19 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 03] := '+6';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 03] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 03] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 03] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 03] := '19';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 03] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 03] := '30';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 03] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 03] := '00';
   // Linha 04
   // 04 05 07 21 27 28
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 04] := '+6';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 04] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 04] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 04] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 04] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 04] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 04] := '28';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 04] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 04] := '00';
   // Linha 05
   // 02 03 19 21 27 28 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 05] := '+8';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 05] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 05] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 05] := '19';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 05] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 05] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 05] := '28';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 05] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 05] := '30';
   // Linha 06
   // 02 03 07 19 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 06] := '+6';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 06] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 06] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 06] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 06] := '19';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 06] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 06] := '30';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 06] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 06] := '00';
   // Linha 07
   // 02 03 07 21 27 28
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 07] := '+6';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 07] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 07] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 07] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 07] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 07] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 07] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 07] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 07] := '00';
   // Linha 08
   // 02 03 04 05 19 29 30
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 08] := '+7';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 08] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 08] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 08] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 08] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 08] := '19';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 08] := '29';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 08] := '30';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 08] := '00';
   // Linha 09
   // 02 03 04 05 21 27 28
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 09] := '+7';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 09] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 09] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 09] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 09] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 09] := '21';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 09] := '27';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 09] := '28';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 09] := '00';
   // Linha 10
   // 02 03 04 05 07
   stgr_bloco3Com10LinhasParaCj5.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj5.Cells[01, 10] := '+5';
   stgr_bloco3Com10LinhasParaCj5.Cells[02, 10] := '02';
   stgr_bloco3Com10LinhasParaCj5.Cells[03, 10] := '03';
   stgr_bloco3Com10LinhasParaCj5.Cells[04, 10] := '04';
   stgr_bloco3Com10LinhasParaCj5.Cells[05, 10] := '05';
   stgr_bloco3Com10LinhasParaCj5.Cells[06, 10] := '07';
   stgr_bloco3Com10LinhasParaCj5.Cells[07, 10] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[08, 10] := '00';
   stgr_bloco3Com10LinhasParaCj5.Cells[09, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 02 03 04 05
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 01] := '+4';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 01] := '02';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 01] := '03';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 01] := '04';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 01] := '05';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 01] := '00';
   // Linha 02
   // 02 03 07
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 02] := '+3';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 02] := '02';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 02] := '03';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 02] := '07';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 02] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 02] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 02] := '00';
   // Linha 03
   // 02 03 21 27 28
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 03] := '+5';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 03] := '02';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 03] := '03';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 03] := '21';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 03] := '27';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 03] := '28';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 03] := '00';
   // Linha 04
   // 02 03 19 29 30
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 04] := '+5';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 04] := '02';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 04] := '03';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 04] := '19';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 04] := '29';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 04] := '30';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 04] := '00';
   // Linha 05
   // 04 05 07
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 05] := '+3';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 05] := '04';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 05] := '05';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 05] := '07';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 05] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 05] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 05] := '00';
   // Linha 06
   // 04 05 21 27 28
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 06] := '+5';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 06] := '04';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 06] := '05';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 06] := '21';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 06] := '27';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 06] := '28';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 06] := '00';
   // Linha 07
   // 04 05 19 29 30
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 07] := '+5';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 07] := '04';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 07] := '05';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 07] := '19';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 07] := '29';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 07] := '30';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 07] := '00';
   // Linha 08
   // 07 21 27 28
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 08] := '+4';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 08] := '07';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 08] := '21';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 08] := '27';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 08] := '28';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 08] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 08] := '00';
   // Linha 09
   // 07 19 29 30
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 09] := '+4';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 09] := '07';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 09] := '19';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 09] := '29';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 09] := '30';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 09] := '00';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 09] := '00';
   // Linha 10
   // 19 21 27 28 29 30
   stgr_bloco4Com10LinhasParaCj5.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj5.Cells[01, 10] := '+6';
   stgr_bloco4Com10LinhasParaCj5.Cells[02, 10] := '19';
   stgr_bloco4Com10LinhasParaCj5.Cells[03, 10] := '21';
   stgr_bloco4Com10LinhasParaCj5.Cells[04, 10] := '27';
   stgr_bloco4Com10LinhasParaCj5.Cells[05, 10] := '28';
   stgr_bloco4Com10LinhasParaCj5.Cells[06, 10] := '29';
   stgr_bloco4Com10LinhasParaCj5.Cells[07, 10] := '30';


 // =====>>> Conjunto 06
  // -----> Bloco 2 com 10 linhas
   // 01
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 01] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 01] := '+12';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 01] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 01] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 01] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 01] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 01] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 01] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 01] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 01] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 01] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 01] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 01] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 01] := '31';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 01] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 01] := '00';
   // 02
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 02] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 02] := '+11';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 02] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 02] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 02] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 02] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 02] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 02] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 02] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 02] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 02] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 02] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 02] := '31';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 02] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 02] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 02] := '00';
   // 03
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 03] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 03] := '+11';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 03] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 03] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 03] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 03] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 03] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 03] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 03] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 03] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 03] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 03] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 03] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 03] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 03] := '31';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 03] := '00';
   // 04
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 04] := '04';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 04] := '+10';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 04] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 04] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 04] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 04] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 04] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 04] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 04] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 04] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 04] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 04] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 04] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 04] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 04] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 04] := '00';
   // 05
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 05] := '05';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 05] := '+13';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 05] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 05] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 05] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 05] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 05] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 05] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 05] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 05] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 05] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 05] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 05] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 05] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 05] := '31';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 05] := '00';
   // 06
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 06] := '06';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 06] := '+13';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 06] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 06] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 06] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 06] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 06] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 06] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 06] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 06] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 06] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 06] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 06] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 06] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 06] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 06] := '31';
   // 07
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 07] := '07';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 07] := '+12';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 07] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 07] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 07] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 07] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 07] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 07] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 07] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 07] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 07] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 07] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 07] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 07] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 07] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 07] := '00';
   // 08
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 08] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 08] := '+13';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 08] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 08] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 08] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 08] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 08] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 08] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 08] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 08] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 08] := '18';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 08] := '19';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 08] := '29';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 08] := '30';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 08] := '31';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 08] := '00';
   // 09
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 09] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 09] := '+11';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 09] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 09] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 09] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 09] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 09] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 09] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 09] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 09] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 09] := '20';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 09] := '21';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 09] := '22';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 09] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 09] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 09] := '00';
   // 10
   stgr_bloco2Com10LinhasParaCj6.Cells[00, 10] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[01, 10] := '+12';
   stgr_bloco2Com10LinhasParaCj6.Cells[02, 10] := '01';
   stgr_bloco2Com10LinhasParaCj6.Cells[03, 10] := '02';
   stgr_bloco2Com10LinhasParaCj6.Cells[04, 10] := '03';
   stgr_bloco2Com10LinhasParaCj6.Cells[05, 10] := '08';
   stgr_bloco2Com10LinhasParaCj6.Cells[06, 10] := '09';
   stgr_bloco2Com10LinhasParaCj6.Cells[07, 10] := '10';
   stgr_bloco2Com10LinhasParaCj6.Cells[08, 10] := '11';
   stgr_bloco2Com10LinhasParaCj6.Cells[09, 10] := '12';
   stgr_bloco2Com10LinhasParaCj6.Cells[10, 10] := '13';
   stgr_bloco2Com10LinhasParaCj6.Cells[11, 10] := '14';
   stgr_bloco2Com10LinhasParaCj6.Cells[12, 10] := '23';
   stgr_bloco2Com10LinhasParaCj6.Cells[13, 10] := '24';
   stgr_bloco2Com10LinhasParaCj6.Cells[14, 10] := '00';
   stgr_bloco2Com10LinhasParaCj6.Cells[15, 10] := '00';
  // -----> Bloco 3 com 10 linhas
   // Linha 01
   // 07 16 17 25 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 01] := '01';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 01] := '+7';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 01] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 01] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 01] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 01] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 01] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 01] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 01] := '28';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 01] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 01] := '00';
   // Linha 02
   // 04 05 06 16 17 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 02] := '02';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 02] := '+8';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 02] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 02] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 02] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 02] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 02] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 02] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 02] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 02] := '28';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 02] := '00';
   // Linha 03
   // 04 05 06 07 16 17 25
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 03] := '03';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 03] := '+7';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 03] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 03] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 03] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 03] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 03] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 03] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 03] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 03] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 03] := '00';
   // Linha 04
   // 04 05 06 07 16 25 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 04] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 04] := '+9';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 04] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 04] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 04] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 04] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 04] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 04] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 04] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 04] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 04] := '28';
   // Linha 05
   // 15 16 17 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 05] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 05] := '+6';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 05] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 05] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 05] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 05] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 05] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 05] := '28';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 05] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 05] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 05] := '00';
   // Linha 06
   // 07 15 16 17 25
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 06] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 06] := '+5';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 06] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 06] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 06] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 06] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 06] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 06] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 06] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 06] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 06] := '00';
   // Linha 07
   // 07 15 16 25 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 07] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 07] := '+7';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 07] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 07] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 07] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 07] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 07] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 07] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 07] := '28';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 07] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 07] := '00';
   // Linha 08
   // 04 05 06 15 16 17
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 08] := '08';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 08] := '+6';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 08] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 08] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 08] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 08] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 08] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 08] := '17';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 08] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 08] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 08] := '00';
   // Linha 09
   // 04 05 06 15 16 26 27 28
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 09] := '09';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 09] := '+7';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 09] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 09] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 09] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 09] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 09] := '26';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 09] := '27';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 09] := '28';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 09] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 09] := '00';
   // Linha 10
   // 04 05 06 07 15 16 25
   stgr_bloco3Com10LinhasParaCj6.Cells[00, 10] := '10';
   stgr_bloco3Com10LinhasParaCj6.Cells[01, 10] := '+7';
   stgr_bloco3Com10LinhasParaCj6.Cells[02, 10] := '04';
   stgr_bloco3Com10LinhasParaCj6.Cells[03, 10] := '05';
   stgr_bloco3Com10LinhasParaCj6.Cells[04, 10] := '06';
   stgr_bloco3Com10LinhasParaCj6.Cells[05, 10] := '07';
   stgr_bloco3Com10LinhasParaCj6.Cells[06, 10] := '15';
   stgr_bloco3Com10LinhasParaCj6.Cells[07, 10] := '16';
   stgr_bloco3Com10LinhasParaCj6.Cells[08, 10] := '25';
   stgr_bloco3Com10LinhasParaCj6.Cells[09, 10] := '00';
   stgr_bloco3Com10LinhasParaCj6.Cells[10, 10] := '00';
  // -----> Bloco 4 com 10 linhas
   // Linha 01
   // 07 15 25
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 01] := '01';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 01] := '+3';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 01] := '07';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 01] := '15';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 01] := '25';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 01] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 01] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 01] := '00';
   // Linha 02
   // 15 26 27 28
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 02] := '02';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 02] := '+4';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 02] := '15';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 02] := '26';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 02] := '27';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 02] := '28';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 02] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 02] := '00';
   // Linha 03
   //
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 03] := '03';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 03] := '+5';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 03] := '02';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 03] := '03';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 03] := '21';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 03] := '27';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 03] := '28';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 03] := '00';
   // Linha 04
   // 15 17
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 04] := '04';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 04] := '+2';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 04] := '15';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 04] := '17';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 04] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 04] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 04] := '30';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 04] := '00';
   // Linha 05
   // 04 05 06 07 25
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 05] := '05';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 05] := '+5';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 05] := '04';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 05] := '05';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 05] := '06';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 05] := '07';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 05] := '25';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 05] := '00';
   // Linha 06
   // 04 05 06 26 27 28
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 06] := '06';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 06] := '+5';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 06] := '04';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 06] := '05';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 06] := '06';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 06] := '26';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 06] := '27';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 06] := '28';
   // Linha 07
   // 04 05 06 17
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 07] := '07';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 07] := '+4';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 07] := '04';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 07] := '05';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 07] := '06';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 07] := '17';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 07] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 07] := '00';
   // Linha 08
   // 07 25 26 27 28
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 08] := '08';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 08] := '+5';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 08] := '07';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 08] := '25';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 08] := '26';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 08] := '27';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 08] := '28';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 08] := '00';
   // Linha 09
   // 07 17 25
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 09] := '09';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 09] := '+3';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 09] := '07';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 09] := '17';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 09] := '25';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 09] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 09] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 09] := '00';
   // Linha 10
   // 17 26 27 28
   stgr_bloco4Com10LinhasParaCj6.Cells[00, 10] := '10';
   stgr_bloco4Com10LinhasParaCj6.Cells[01, 10] := '+4';
   stgr_bloco4Com10LinhasParaCj6.Cells[02, 10] := '17';
   stgr_bloco4Com10LinhasParaCj6.Cells[03, 10] := '26';
   stgr_bloco4Com10LinhasParaCj6.Cells[04, 10] := '27';
   stgr_bloco4Com10LinhasParaCj6.Cells[05, 10] := '28';
   stgr_bloco4Com10LinhasParaCj6.Cells[06, 10] := '00';
   stgr_bloco4Com10LinhasParaCj6.Cells[07, 10] := '00';



   Stgr_base20.RowCount := 7;
   Stgr_base20.ColWidths[0] := 39;
   Stgr_base20.Height := Scbx_gabarito6cj20p11.Height - 59;
   Stgr_base20.Repaint;
   Stgr_base11.RowCount := 7;
   Stgr_base11.Height := scbx_gabarito6cj20p11.Height - 59;
   Stgr_base11.Repaint;
   Stgr_base20VF.RowCount := 7;
   Stgr_base20VF.Height := Scbx_gabarito6cj20p11.Height - 59;
   Stgr_base20VF.Repaint;
   Stgr_linhasDe3.RowCount := 11;
   Stgr_linhasDe3.Height := scbx_gabarito6cj20p11.Height - 59;
   Stgr_linhasDe3.Repaint;
   stgr_bloco1com10Linhas.RowCount := 11;
   stgr_bloco1com10Linhas.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco1com10Linhas.Repaint;

   stgr_Modo1_5blocos4.RowCount := 30;
   stgr_Modo1_5blocos4.Height := scbx_gabarito6cj20p11.Height - 39;
   stgr_Modo1_5blocos4.Repaint;
   stgr_Modo2_5blocos4.RowCount := 33;
   stgr_Modo2_5blocos4.Height := scbx_gabarito6cj20p11.Height - 39;
   stgr_Modo2_5blocos4.Repaint;
   stgr_Modo3_5blocos4.RowCount := 18;
   stgr_Modo3_5blocos4.Height := scbx_gabarito6cj20p11.Height - 39;
   stgr_Modo3_5blocos4.Repaint;
   stgr_Modo4_5blocos4.RowCount := 11;
   stgr_Modo4_5blocos4.Height := scbx_gabarito6cj20p11.Height - 39;
   stgr_Modo4_5blocos4.Repaint;

   stgr_bloco2Com10LinhasParaCj1.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj1.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj1.Repaint;
   stgr_bloco3Com10LinhasParaCj1.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj1.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj1.Repaint;
   stgr_bloco4Com10LinhasParaCj1.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj1.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj1.Repaint;
    stgr_bloco2Com10LinhasParaCj2.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj2.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj2.Repaint;
   stgr_bloco3Com10LinhasParaCj2.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj2.Repaint;
   stgr_bloco4Com10LinhasParaCj2.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj2.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj2.Repaint;
    stgr_bloco2Com10LinhasParaCj3.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj3.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj3.Repaint;
   stgr_bloco3Com10LinhasParaCj3.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj3.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj3.Repaint;
   stgr_bloco4Com10LinhasParaCj3.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj3.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj3.Repaint;
    stgr_bloco2Com10LinhasParaCj4.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj4.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj4.Repaint;
   stgr_bloco3Com10LinhasParaCj4.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj4.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj4.Repaint;
   stgr_bloco4Com10LinhasParaCj4.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj4.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj4.Repaint;
    stgr_bloco2Com10LinhasParaCj5.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj5.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj5.Repaint;
   stgr_bloco3Com10LinhasParaCj5.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj5.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj5.Repaint;
   stgr_bloco4Com10LinhasParaCj5.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj5.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj5.Repaint;
    stgr_bloco2Com10LinhasParaCj6.RowCount := 11;
   stgr_bloco2Com10LinhasParaCj6.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco2Com10LinhasParaCj6.Repaint;
   stgr_bloco3Com10LinhasParaCj6.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj6.Height := scbx_gabarito6cj20p11.Height - 59;
   stgr_bloco3Com10LinhasParaCj6.Repaint;
   stgr_bloco4Com10LinhasParaCj6.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj6.Height := scbx_gabarito6cj20p11.Height - 58;
   stgr_bloco4Com10LinhasParaCj6.Repaint;

   stgr_bloco2Com10LinhasParaCj1.ColWidths[01] := 41;
   stgr_bloco2Com10LinhasParaCj1.RowCount := 11;
   stgr_bloco3Com10LinhasParaCj1.RowCount := 11;
   stgr_bloco4Com10LinhasParaCj1.RowCount := 11;

   lab_numeroConjunto.Caption := '00';
   lab_numeroLinha.Caption := '000';

   stgr_cjBase20.RowCount := 2 ;
   stgr_cjBase20.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_cjBase20.Repaint;
   stgr_cjBase11.RowCount := 2;
   stgr_cjBase11.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_cjBase11.Repaint;
   stgr_base20Parte1.RowCount := 2;
   stgr_base20Parte1.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_base20Parte1.Repaint;
   stgr_base20Parte2.RowCount := 2;
   stgr_base20Parte2.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_base20Parte2.Repaint;
   stgr_base20Parte3.RowCount := 2;
   stgr_base20Parte3.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_base20Parte3.Repaint;
   stgr_base20Parte4.RowCount := 2;
   stgr_base20Parte4.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_base20Parte4.Repaint;
   stgr_base20Parte5.RowCount := 2;
   stgr_base20Parte5.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_base20Parte5.Repaint;
   stgr_cjBloco2.RowCount := 2 ;
   stgr_cjBloco2.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_cjBloco2.Repaint;
   stgr_cjBloco3.RowCount := 2 ;
   stgr_cjBloco3.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_cjBloco3.Repaint;
   stgr_cjBloco4.RowCount := 2 ;
   stgr_cjBloco4.Height := ScrollBox_resultado6cj20p11.Height-359;
   stgr_cjBloco4.Repaint;

   stgr_acBase20Parte1.ColWidths[0] := 39;
   stgr_acBase20Parte1.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_acBase20Parte1.Repaint;
   stgr_acBase20Parte2.ColWidths[0] := 39;
   stgr_acBase20Parte2.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_acBase20Parte2.Repaint;
   stgr_acBase20Parte3.ColWidths[0] := 39;
   stgr_acBase20Parte3.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_acBase20Parte3.Repaint;
   stgr_acBase20Parte4.ColWidths[0] := 39;
   stgr_acBase20Parte4.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_acBase20Parte4.Repaint;
   stgr_acBase20Parte5.ColWidths[0] := 39;
   stgr_acBase20Parte5.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_acBase20Parte5.Repaint;
   stgr_6NumerosDaBase20.ColWidths[0] := 60;
   stgr_6NumerosDaBase20.ColWidths[1] := 110;
   stgr_6NumerosDaBase20.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_6NumerosDaBase20.Repaint;
   stgr_1NumeroDaBase11.ColWidths[0] := 45;
   stgr_1NumeroDaBase11.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_1NumeroDaBase11.Repaint;
   stgr_7NumerosPreSorteados.ColWidths[0] := 65;
   stgr_7NumerosPreSorteados.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_7NumerosPreSorteados.Repaint;
   stgr_24NumerosPreNaoSorteados.ColWidths[0] := 65;
   stgr_24NumerosPreNaoSorteados.ColWidths[2] := 65;
   stgr_24NumerosPreNaoSorteados.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_24NumerosPreNaoSorteados.Repaint;
   stgr_flagsPre.ColWidths[0] := 65;
   stgr_flagsPre.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_flagsPre.Repaint;
   stgr_flagFiltro4Blocos.ColWidths[0] := 65;
   stgr_flagFiltro4Blocos.Height := Scbx_gabarito6cj20p11.Height - 9;
   stgr_flagFiltro4Blocos.Repaint;
end;



end.
