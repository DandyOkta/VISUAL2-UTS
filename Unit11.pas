unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Grids;

type
  TForm11 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    strngrd1: TStringGrid;
    btn1: TButton;
    btn2: TButton;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.FormCreate(Sender: TObject);
begin
strngrd1.RowCount:=1;
strngrd1.ColCount:=4;
strngrd1.Cells[0,0]:='NO';
strngrd1.Cells[1,0]:='NIM';
strngrd1.Cells[2,0]:='NAMA MAHASISWA';
strngrd1.Cells[3,0]:='TAHUN ANGKATAN';

strngrd1.ColWidths[0]:=20;
strngrd1.ColWidths[1]:=100;
strngrd1.ColWidths[2]:=100;
strngrd1.ColWidths[3]:=70;

end;

procedure TForm11.btn1Click(Sender: TObject);
begin
strngrd1.RowCount := strngrd1.RowCount+1;
strngrd1.Cells[0,strngrd1.RowCount -1] := IntToStr(strngrd1.RowCount -1);
strngrd1.Cells[1,strngrd1.RowCount -1] := edt1.Text;
strngrd1.Cells[2,strngrd1.RowCount -1] := edt2.Text;
strngrd1.Cells[3,strngrd1.RowCount -1] := cbb1.Text;
end;

procedure TForm11.btn2Click(Sender: TObject);
var i : Integer;
begin
for i:=1 to strngrd1.RowCount-1 do
begin
  cht1.Series[0].Add(StrToFloat(strngrd1.Cells[1,i]),strngrd1.Cells[2,i]);
end;
end;

end.
