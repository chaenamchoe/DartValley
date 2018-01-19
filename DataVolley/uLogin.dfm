object fmLogin: TfmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088' '#47196#44536#51064
  ClientHeight = 357
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 10
    Width = 427
    Height = 339
    Margins.Left = 8
    Margins.Top = 10
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object lbl3: TLabel
      Left = 32
      Top = 41
      Width = 353
      Height = 31
      AutoSize = False
      Caption = 'Dartfish Data Converter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object lbl7: TLabel
      Left = 27
      Top = 49
      Width = 4
      Height = 13
      IsControl = True
    end
    object lblVersion: TLabel
      Left = 32
      Top = 92
      Width = 62
      Height = 13
      Caption = 'lblVersion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
    end
    object cxPageControl1: TcxPageControl
      Left = 27
      Top = 178
      Width = 378
      Height = 155
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      ClientRectBottom = 155
      ClientRectRight = 378
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Login'
        ImageIndex = 0
        object grpLogin: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 358
          Height = 121
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Align = alTop
          Caption = #47196#44536#51064
          TabOrder = 0
          object Label1: TLabel
            Left = 27
            Top = 27
            Width = 59
            Height = 13
            Caption = #47196#44536#51064' ID:'
          end
          object Label2: TLabel
            Left = 30
            Top = 51
            Width = 56
            Height = 13
            Caption = #48708#48128#48264#54840':'
          end
          object Label4: TLabel
            Left = 89
            Top = 76
            Width = 120
            Height = 13
            Caption = #48120#46321#47197#51088' '#46321#47197#54596#49688'!!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
          end
          object edtUserID: TEdit
            Left = 90
            Top = 23
            Width = 128
            Height = 21
            ImeName = 'Microsoft IME 2010'
            TabOrder = 0
          end
          object edtPassword: TEdit
            Left = 90
            Top = 48
            Width = 128
            Height = 21
            ImeName = 'Microsoft IME 2010'
            PasswordChar = '*'
            TabOrder = 1
          end
          object btnLocalOK: TBitBtn
            Left = 224
            Top = 21
            Width = 96
            Height = 25
            Caption = #47196#44536#51064
            Default = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            TabOrder = 2
            OnClick = btnLocalOKClick
          end
          object BitBtn1: TBitBtn
            Left = 224
            Top = 46
            Width = 96
            Height = 25
            Cancel = True
            Caption = #52712#49548
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            ModalResult = 2
            NumGlyphs = 2
            TabOrder = 3
          end
          object btnRegistUser: TBitBtn
            Left = 224
            Top = 71
            Width = 96
            Height = 25
            Caption = #46321#47197
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADADADADADADAD0ADADA0ADADA5ADA0DA000ADADA55DADD00AD0DADA55
              55DAAD0D000DA555555DD00ADAD0DA5555550000ADA0ADA55D55000ADADA0ADA
              5AD5000DAD00ADADADA500000AD0DADADAD50000000D0DADAD5DD00000000ADA
              DADAAD00000DADADADADDADADADADADADADAADADADADADADADAD}
            TabOrder = 4
            OnClick = btnRegistUserClick
          end
          object chkSaveLogin: TCheckBox
            Left = 3
            Top = 101
            Width = 121
            Height = 17
            Caption = 'ID, '#48708#48128#48264#54840' '#44592#50613
            TabOrder = 5
            Visible = False
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Activation'
        ImageIndex = 2
        object grpActivation: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 358
          Height = 95
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Align = alTop
          Caption = #49324#50857#49849#51064' '#45824#44592
          TabOrder = 0
          object lblActivationMsg: TLabel
            Left = 42
            Top = 23
            Width = 272
            Height = 26
            Caption = #49324#50857#51088' '#49849#51064' '#52376#47532#51473#51077#45768#45796'.'#13#10#49849#51064#52376#47532#44032' '#50756#47308#46104#50612#50556' '#49324#50857#51060' '#44032#45733#54633#45768#45796'.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnBack: TBitBtn
            Left = 133
            Top = 58
            Width = 70
            Height = 25
            Caption = #54869#51064
            TabOrder = 0
            OnClick = btnBackClick
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'cxTabSheet2'
        ImageIndex = 2
        object Label5: TLabel
          Left = 43
          Top = 18
          Width = 296
          Height = 26
          Caption = #50629#45936#51060#53944' '#48260#51204#51060' '#51080#49845#45768#45796'.'#13#10#50629#45936#51060#53944' '#48260#53948#51012' '#53364#47533#54616#50668' '#49444#52824#47484' '#51652#54665#54616#49464#50836'. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnDown: TcxButton
          Left = 136
          Top = 67
          Width = 97
          Height = 25
          Caption = #50629#45936#51060#53944
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00010000000B08271977051D11770000000B0000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000604190F501D7951FB11643EFB03110A520000000700000000000000020000
            000A0000000F000000100000001000000010000000110000001100000015020B
            0739147048ED20B175FF18AA6DFF0F5233EC0108052D00000004000000094633
            2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFC69777FFC4A891FF3986
            5FFF26B07BFF1EB97CFF1EB87BFF1AA26AFF0B442BD1000201160000000D6F53
            47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFE5CFB4FF659674FF4BB5
            91FF8FE5CCFF7FE1C3FF5CD4ABFF69D8B4FF40A581FF093420A50000000C7357
            4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6F2EFFF208760FF2086
            5DFF1F845DFF97EBD4FF77E1C3FF1A774FFF1A764EFF19754FFF0000000B785C
            4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFFAF6F4FFF6F2F0FFEFEB
            E9FF218B63FFA8F1DFFF8CEBD2FF1C7B55FF0000000F000000070000000A7C60
            50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
            FAFF229067FFC7F8EFFFC5F8EDFF1C8158FF0000000600000000000000097F63
            54FFA78E7DFF977A6AFF967969FF957967FF84695CFF705548FF775C51FFBAAD
            A7FF4D9B7BFF24946BFF23936AFF19694CBD0000000300000000000000088367
            57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF594139FF9485
            7FFFAA9E9AFFBBACA8FFAFA29DFF0000000C000000000000000000000007866A
            59FFAF9788FF674E44FFF3EAE4FFE7D5C8FFE7D4C6FFE6D3C5FFE6D3C5FFE6D3
            C5FF594139FF795D54FF674C40FF00000009000000000000000000000006886D
            5CFFB39C8CFF6B5248FFF4ECE6FFE9D9CDFFE8D7CAFF4B3D3AFF50433EFFE6D3
            C5FF5D453CFF7B6056FF6B4F43FF000000080000000000000000000000058B70
            5EFFB7A091FF70564DFFF6EFEAFFECDDD3FFEADAD0FF473A36FF473A36FFE7D4
            C7FF604740FF7D6257FF6E5347FF000000070000000000000000000000048E72
            60FFBBA595FF755A50FFF7F1ECFFF6F0EBFFF5EEE9FFF5EDE7FFF4ECE6FFF4EB
            E4FF654B43FF7F6459FF72574AFF000000060000000000000000000000026A56
            49BF8F7361FF795E54FF765D52FF745A50FF72584EFF70564CFF6E544AFF6B52
            48FF6A5047FF795D4EFF574439C0000000040000000000000000000000010000
            0002000000030000000300000003000000040000000400000004000000040000
            0004000000040000000400000003000000010000000000000000}
          TabOrder = 0
          OnClick = btnDownClick
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'cxTabSheet4'
        ImageIndex = 3
        object Label6: TLabel
          Left = 48
          Top = 19
          Width = 291
          Height = 39
          Caption = #50629#45936#51060#53944' '#48260#51204#54028#51068#51012' '#45796#50868#47196#46300' '#54616#44256' '#51080#49845#45768#45796'.'#13#10#13#10#45796#50868#47196#46300#44032' '#50756#47308#46104#47732' '#50629#45936#51060#53944#47484' '#49884#51089#54633#45768#45796'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 112
          Top = 75
          Width = 141
          Height = 13
          ParentCustomHint = False
          Caption = #51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object edtSN: TEdit
      Left = 27
      Top = 10
      Width = 196
      Height = 18
      TabStop = False
      BorderStyle = bsNone
      Color = clBtnFace
      ImeName = 'Microsoft IME 2010'
      ReadOnly = True
      TabOrder = 1
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\DartVolley\dart_volley.fdb'
    Username = 'sysdba'
    Server = '210.122.7.39'
    Connected = True
    LoginPrompt = False
    Left = 232
    Top = 64
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 232
    Top = 16
  end
  object ExeInfo1: TExeInfo
    Version = '1.3.3.0'
    Left = 288
    Top = 16
  end
  object LOGIN_USER_SEL: TUniStoredProc
    StoredProcName = 'LOGIN_USER_SEL'
    Connection = UniConnection1
    Left = 336
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SYSTEM_ID'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'USER_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'LOGIN_ID'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'LOGIN_PASS'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'USER_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'APPROVED'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'REG_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'REMARK'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SYSTEM_SERIAL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'BRANCH_CODE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'COMP_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'LOGIN_USER_SEL'
    object LOGIN_USER_SELID: TIntegerField
      FieldName = 'ID'
    end
    object LOGIN_USER_SELUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 50
    end
    object LOGIN_USER_SELLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
    end
    object LOGIN_USER_SELLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
    end
    object LOGIN_USER_SELUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object LOGIN_USER_SELAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object LOGIN_USER_SELREG_DATE: TStringField
      FieldName = 'REG_DATE'
      Size = 10
    end
    object LOGIN_USER_SELREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object LOGIN_USER_SELEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object LOGIN_USER_SELTEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object LOGIN_USER_SELSYSTEM_SERIAL: TStringField
      FieldName = 'SYSTEM_SERIAL'
      Size = 50
    end
    object LOGIN_USER_SELBRANCH_CODE: TIntegerField
      FieldName = 'BRANCH_CODE'
    end
    object LOGIN_USER_SELCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 50
    end
  end
  object ds_LOGIN_USER_SEL: TUniDataSource
    DataSet = LOGIN_USER_SEL
    Left = 336
    Top = 128
  end
end
