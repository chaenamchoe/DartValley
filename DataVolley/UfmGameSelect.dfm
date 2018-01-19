object fmGameSelect: TfmGameSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44172#51076#49440#53469
  ClientHeight = 463
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnSelect: TcxButton
      Left = 24
      Top = 2
      Width = 75
      Height = 25
      Caption = #49440#53469
      LookAndFeel.SkinName = 'DevExpressStyle'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000808
        0826070707250202020800000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000909092C2A2A
        2AD0262626BF0D0D0D4200000000000000000000000000000000000000000000
        00000000000014141466000000000000000000000000000000001D1D1D923232
        32FB2D2D2DE10909092D00000000000000000000000000000000000000000000
        000000000000323232F90B0B0B3900000000000000000A0A0A322F2F2FE93333
        33FF141414650101010500000000000000000000000000000000000000000000
        000000000000333333FF2E2E2EE70505051B0202020C1E1E1E98333333FF2828
        28CA030303100000000000000000000000000000000000000000000000000000
        000000000000333333FF333333FF282828C70E0E0E46333333FD313131F31717
        1771000000000000000000000000000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF333333FF2C2C2CDD0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF303030F0111111570000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF303030F011111157000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF262626BD0505051B00000000000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF333333FF313131F61717
        1772000000000000000000000000000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF333333FF2A2A2AD20909092D0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333333FF333333FF333333FF1C1C1C8A01010106000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333333FF2D2D2DE10D0D0D3F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000212121A50303030F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
    end
    object btnDel: TcxButton
      Left = 184
      Top = 2
      Width = 69
      Height = 25
      Caption = #49325#51228
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      TabOrder = 1
      OnClick = btnDelClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 828
    Height = 433
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridGame: TcxGridDBBandedTableView
      OnDblClick = gridGameDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_GAME_DATA_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.RowSeparatorColor = clRed
      OptionsView.RowSeparatorWidth = 1
      OptionsView.BandHeaders = False
      Bands = <
        item
          Caption = 'No'
          Width = 43
        end
        item
          Caption = #47588#52824
          Width = 254
        end
        item
          Caption = #54856#54016
          Width = 208
        end
        item
          Caption = #49345#45824#54016
          Width = 202
        end
        item
          Caption = #51109#49548
          Width = 160
        end>
      object gridGameID: TcxGridDBBandedColumn
        Caption = 'No'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.LineCount = 2
        Position.RowIndex = 0
      end
      object gridGameGAME_NAME: TcxGridDBBandedColumn
        Caption = #47588#52824#47749
        DataBinding.FieldName = 'GAME_NAME'
        Width = 263
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridGameG_DATE: TcxGridDBBandedColumn
        Caption = #45216#51676
        DataBinding.FieldName = 'G_DATE'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object gridGameG_TIME: TcxGridDBBandedColumn
        Caption = #49884#44036
        DataBinding.FieldName = 'G_TIME'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
      object gridGameA_CODE: TcxGridDBBandedColumn
        Caption = #54016#53076#46300
        DataBinding.FieldName = 'A_CODE'
        Width = 71
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridGameA_NAME: TcxGridDBBandedColumn
        Caption = #54016#47749
        DataBinding.FieldName = 'A_NAME'
        Width = 160
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridGameA_COACH: TcxGridDBBandedColumn
        Caption = #44048#46021'/'#53076#52824
        DataBinding.FieldName = 'A_COACH'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object gridGameB_CODE: TcxGridDBBandedColumn
        Caption = #54016#53076#46300
        DataBinding.FieldName = 'B_CODE'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridGameB_NAME: TcxGridDBBandedColumn
        Caption = #54016#47749
        DataBinding.FieldName = 'B_NAME'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridGameB_COACH: TcxGridDBBandedColumn
        Caption = #44048#46021'/'#53076#52824
        DataBinding.FieldName = 'B_COACH'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object gridGameG_PLACE: TcxGridDBBandedColumn
        Caption = #51109#49548
        DataBinding.FieldName = 'G_PLACE'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridGameG_GYMNAME: TcxGridDBBandedColumn
        Caption = #52404#50977#44288
        DataBinding.FieldName = 'G_GYMNAME'
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridGame
    end
  end
  object GAME_DATA_SEL: TUniStoredProc
    StoredProcName = 'GAME_DATA_SEL'
    Connection = DataModule1.UniConnection1
    Left = 136
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'GAME_NAME'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'G_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'G_TIME'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'A_CODE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'A_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'A_COACH'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'B_CODE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'B_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'B_COACH'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'G_PLACE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'G_GYMNAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'GAME_DATA_SEL'
    object GAME_DATA_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object GAME_DATA_SELGAME_NAME: TStringField
      FieldName = 'GAME_NAME'
      Size = 100
    end
    object GAME_DATA_SELG_DATE: TStringField
      FieldName = 'G_DATE'
      Size = 10
    end
    object GAME_DATA_SELG_TIME: TStringField
      FieldName = 'G_TIME'
      Size = 10
    end
    object GAME_DATA_SELA_CODE: TStringField
      FieldName = 'A_CODE'
      Size = 10
    end
    object GAME_DATA_SELA_NAME: TStringField
      FieldName = 'A_NAME'
      Size = 30
    end
    object GAME_DATA_SELA_COACH: TStringField
      FieldName = 'A_COACH'
      Size = 50
    end
    object GAME_DATA_SELB_CODE: TStringField
      FieldName = 'B_CODE'
      Size = 10
    end
    object GAME_DATA_SELB_NAME: TStringField
      FieldName = 'B_NAME'
      Size = 30
    end
    object GAME_DATA_SELB_COACH: TStringField
      FieldName = 'B_COACH'
      Size = 50
    end
    object GAME_DATA_SELG_PLACE: TStringField
      FieldName = 'G_PLACE'
      Size = 10
    end
    object GAME_DATA_SELG_GYMNAME: TStringField
      FieldName = 'G_GYMNAME'
      Size = 50
    end
  end
  object ds_GAME_DATA_SEL: TDataSource
    DataSet = GAME_DATA_SEL
    Left = 136
    Top = 216
  end
  object GAME_DATA_DEL: TUniStoredProc
    StoredProcName = 'GAME_DATA_DEL'
    Connection = DataModule1.UniConnection1
    Left = 288
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'GAME_DATA_DEL'
  end
end
