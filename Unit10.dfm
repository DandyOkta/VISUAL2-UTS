object Form10: TForm10
  Left = 229
  Top = 173
  Width = 829
  Height = 409
  Caption = 'FormPenyakit'
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
    Left = 56
    Top = 24
    Width = 85
    Height = 19
    Caption = 'PENYAKIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 56
    Width = 154
    Height = 18
    Caption = 'JUMLAH PENDERITA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cht1: TChart
    Left = 400
    Top = 24
    Width = 400
    Height = 290
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
    TabOrder = 0
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
  object StringGrid1: TStringGrid
    Left = 40
    Top = 144
    Width = 320
    Height = 137
    TabOrder = 1
  end
  object btn1: TButton
    Left = 40
    Top = 304
    Width = 105
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 304
    Width = 97
    Height = 25
    Caption = 'Abort'
    TabOrder = 3
  end
  object edt1: TEdit
    Left = 176
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 176
    Top = 24
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'COVID 19'
      'FLU BIASA'
      'DEMAM'
      'RINDU'
      'JUMLAH')
  end
  object btn3: TButton
    Left = 272
    Top = 304
    Width = 89
    Height = 25
    Caption = 'Close'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 160
    Top = 96
    Width = 89
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn4Click
  end
end
