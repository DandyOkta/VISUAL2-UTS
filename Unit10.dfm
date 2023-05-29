object Form10: TForm10
  Left = 212
  Top = 192
  Width = 870
  Height = 425
  Caption = 'Grafik Pasien'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 152
    Top = 104
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object cbb1: TComboBox
    Left = 152
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'COVID 19'
      'FLU BIASA'
      'DEMAM'
      'RINDU')
  end
  object cht1: TChart
    Left = 408
    Top = 64
    Width = 400
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 2
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object strngrd1: TStringGrid
    Left = 64
    Top = 184
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object btn1: TButton
    Left = 184
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 64
    Top = 320
    Width = 97
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 184
    Top = 320
    Width = 97
    Height = 25
    Caption = 'Abort'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 304
    Top = 320
    Width = 81
    Height = 25
    Caption = 'Close'
    TabOrder = 7
    OnClick = btn4Click
  end
end
