object fmVideoPlayer: TfmVideoPlayer
  Left = 0
  Top = 0
  Caption = 'Video Player'
  ClientHeight = 552
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wmp: TWindowsMediaPlayer
    Left = 0
    Top = 0
    Width = 854
    Height = 552
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 245
    ExplicitHeight = 240
    ControlData = {
      000300000800000000000500000000000000F03F030000000000050000000000
      0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
      08000200000000000300320000000B00000008000A000000660075006C006C00
      00000B0000000B0000000B00FFFF0B00FFFF0B00000008000200000000000800
      020000000000080002000000000008000200000000000B000000435800000D39
      0000}
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 136
    object dxMemData1video_id: TIntegerField
      FieldName = 'video_id'
    end
    object dxMemData1video_file: TStringField
      FieldName = 'video_file'
      Size = 255
    end
    object dxMemData1media_idx: TIntegerField
      FieldName = 'media_idx'
    end
  end
end
