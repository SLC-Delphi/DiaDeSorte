unit uDataModule01;

interface

uses
  SysUtils, Classes, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  TDM1 = class(TDataModule)
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBQ_Combinacoes: TIBQuery;
    IBDatabase2: TIBDatabase;
    IBTransaction2: TIBTransaction;
    IBQ_Combin_02: TIBQuery;
    IBQ_Estatisica: TIBQuery;
    IBQ_Gravacoes1: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
