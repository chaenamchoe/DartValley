object fmDataView: TfmDataView
  Left = 0
  Top = 0
  Caption = #45936#51060#53552' '#44032#51256#50724#44592
  ClientHeight = 556
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 656
    Top = 42
    Width = 82
    Height = 13
    Caption = #44160#49353#49353#49496#49884#51089':'
  end
  object Label2: TLabel
    Left = 656
    Top = 64
    Width = 73
    Height = 13
    Caption = #44160#49353#49353#49496' '#45149':'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 33
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 136
      Top = 3
      Width = 75
      Height = 25
      Caption = #54028#51068#50676#44592
      TabOrder = 0
      OnClick = cxButton1Click
    end
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 625
    Height = 517
    Align = alLeft
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 744
    Top = 39
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 744
    Top = 61
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 634
    Top = 120
    Width = 313
    Height = 273
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object cxButton2: TcxButton
    Left = 744
    Top = 85
    Width = 75
    Height = 25
    Caption = #54869#51064
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 40
    Top = 48
  end
end
