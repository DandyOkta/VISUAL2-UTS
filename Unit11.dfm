object Form11: TForm11
  Left = 323
  Top = 163
  Width = 709
  Height = 511
  Caption = 'Form11'
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
  object lbl1: TLabel
    Left = 104
    Top = 49
    Width = 24
    Height = 11
    Caption = 'NIM'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 89
    Width = 112
    Height = 12
    Caption = 'NAMA MAHASISWA'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 129
    Width = 112
    Height = 12
    Caption = 'TAHUN ANGKATAN'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 136
    Top = 128
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023')
  end
  object strngrd1: TStringGrid
    Left = 288
    Top = 48
    Width = 393
    Height = 145
    TabOrder = 3
  end
  object btn1: TButton
    Left = 40
    Top = 168
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 5
    OnClick = btn2Click
  end
  object cht1: TChart
    Left = 24
    Top = 208
    Width = 657
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
    TabOrder = 6
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
end
