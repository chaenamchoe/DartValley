object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 517
  Width = 796
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = 'datavolly.fdb'
    Username = 'sysdba'
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 80
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 56
    Top = 32
  end
  object GET_GENERATOR_NUMBER: TUniStoredProc
    StoredProcName = 'GET_GENERATOR_NUMBER'
    Connection = UniConnection1
    Left = 56
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NEW_GEN_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'GET_GENERATOR_NUMBER'
    object GET_GENERATOR_NUMBERNEW_GEN_ID: TIntegerField
      FieldName = 'NEW_GEN_ID'
    end
  end
  object ds_GET_GENERATOR_NUMBER: TDataSource
    DataSet = GET_GENERATOR_NUMBER
    Left = 56
    Top = 184
  end
end
