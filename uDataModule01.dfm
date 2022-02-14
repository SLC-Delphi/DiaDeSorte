object DM1: TDM1
  OldCreateOrder = False
  Height = 258
  Width = 542
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 41
    Top = 72
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 41
    Top = 18
  end
  object IBQ_Combinacoes: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 100
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 41
    Top = 128
  end
  object IBDatabase2: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction2
    ServerType = 'IBServer'
    Left = 308
    Top = 30
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 308
    Top = 84
  end
  object IBQ_Combin_02: TIBQuery
    Database = IBDatabase2
    Transaction = IBTransaction2
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 305
    Top = 133
  end
  object IBQ_Estatisica: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT numero, qtd  FROM ESTATISTICA_25N'
      '    ORDER BY (qtd) DESC, numero')
    UniDirectional = True
    Left = 479
    Top = 31
  end
  object IBQ_Gravacoes1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    ForcedRefresh = True
    Active = True
    BufferChunks = 100
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 41
    Top = 184
  end
end
