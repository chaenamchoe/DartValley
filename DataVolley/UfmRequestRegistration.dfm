object fmRequestRegistration: TfmRequestRegistration
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088' '#46321#47197#49888#52397
  ClientHeight = 364
  ClientWidth = 390
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
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 384
    Height = 358
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 375
      Height = 33
      Caption = #49324#50857#51088' '#46321#47197' '#49888#52397
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 5
      Top = 42
      Width = 375
      Height = 311
      TabOrder = 1
      object Label1: TLabel
        Left = 11
        Top = 12
        Width = 226
        Height = 13
        Caption = #44144#47000#52376#47749'('#49548#49549' '#44144#47000#52376#47749#51012' '#51077#47141#54616#49464#50836')'
      end
      object Label10: TLabel
        Left = 138
        Top = 94
        Width = 82
        Height = 13
        Caption = #54056#49828#50892#46300' '#54869#51064
      end
      object Label11: TLabel
        Left = 22
        Top = 221
        Width = 327
        Height = 39
        Caption = 
          #46321#47197#49888#52397#51060' '#50756#47308#46104#47732' '#44144#47000#52376' '#48143' '#49324#50857#51088' '#54869#51064' '#51208#52264#47484' '#44144#52432#13#10#49849#51064#51060' '#46121#45768#45796'. '#49849#51064#51060' '#50756#47308#46104#47732' '#51077#47141#54616#49888' '#51204#54868#48264#54840' '#46608#45716#13#10 +
          #51060#47700#51068#51012' '#53685#54644#49436' '#49849#51064#50668#48512#47484' '#50508#47140' '#46300#47549#45768#45796'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 174
        Width = 88
        Height = 13
        Caption = #51452#49548#51648'('#51648#50669#47749')'
      end
      object Label5: TLabel
        Left = 11
        Top = 133
        Width = 39
        Height = 13
        Caption = #51060#47700#51068
      end
      object Label7: TLabel
        Left = 11
        Top = 53
        Width = 52
        Height = 13
        Caption = #49324#50857#51088#47749
      end
      object Label8: TLabel
        Left = 138
        Top = 53
        Width = 92
        Height = 13
        Caption = #47196#44536#51064' ID(10'#51088')'
      end
      object Label9: TLabel
        Left = 11
        Top = 94
        Width = 89
        Height = 13
        Caption = #54056#49828#50892#46300'(10'#51088')'
      end
      object BitBtn2: TBitBtn
        Left = 194
        Top = 276
        Width = 75
        Height = 25
        Caption = #52712#49548
        Kind = bkCancel
        TabOrder = 9
      end
      object btnCheckUser: TBitBtn
        Left = 265
        Top = 67
        Width = 84
        Height = 25
        Caption = #51473#48373#54869#51064
        Enabled = False
        TabOrder = 3
        OnClick = btnCheckUserClick
      end
      object btnSave: TBitBtn
        Left = 118
        Top = 276
        Width = 75
        Height = 25
        Caption = #51200#51109
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
        TabOrder = 8
        OnClick = btnSaveClick
      end
      object edtBigo: TEdit
        Left = 11
        Top = 190
        Width = 248
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 7
      end
      object edtComp_name: TEdit
        Left = 11
        Top = 28
        Width = 248
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ImeName = 'Microsoft IME 2010'
        ParentFont = False
        TabOrder = 0
      end
      object edtEmail: TEdit
        Left = 11
        Top = 149
        Width = 248
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 6
      end
      object edtLOGIN_ID: TEdit
        Left = 138
        Top = 69
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        TabOrder = 2
        OnChange = edtLOGIN_IDChange
      end
      object edtLOGIN_PASS: TEdit
        Left = 11
        Top = 108
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        PasswordChar = '*'
        TabOrder = 4
      end
      object edtLOGIN_PASS2: TEdit
        Left = 138
        Top = 108
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        PasswordChar = '*'
        TabOrder = 5
      end
      object edtUSER_NAME: TEdit
        Left = 11
        Top = 69
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
      end
    end
  end
  object LOGIN_USER_INS: TUniStoredProc
    StoredProcName = 'LOGIN_USER_INS'
    Connection = fmLogin.UniConnection1
    Left = 320
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'USER_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'LOGIN_ID'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'LOGIN_PASS'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'USER_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'APPROVED'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REG_DATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'REMARK'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SYSTEM_SERIAL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMP_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'LOGIN_USER_INS'
  end
  object LOGIN_USER_SEL_ID: TUniStoredProc
    StoredProcName = 'LOGIN_USER_SEL_ID'
    Connection = fmLogin.UniConnection1
    Left = 320
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptInput
        Size = 20
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
    CommandStoredProcName = 'LOGIN_USER_SEL_ID'
  end
end
