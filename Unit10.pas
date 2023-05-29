unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm10 = class(TForm)
    cht1: TChart;
    psrsSeries1: TPieSeries;
    StringGrid1: TStringGrid;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    cbb1: TComboBox;
    btn3: TButton;
    btn4: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
StringGrid1.Cells[0,1]:='COVID 19';
StringGrid1.Cells[0,2]:='FLU BIASA';
StringGrid1.Cells[0,3]:='DEMAM';
StringGrid1.Cells[0,4]:='RINDU';
StringGrid1.Cells[1,0]:='JUMLAH';

cht1.Title.Text.Add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm10.btn1Click(Sender: TObject);
var i: Integer;
begin
for i:=1 to StringGrid1.rowcount-1 do
cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),stringgrid1.cells[0,i]);
end;

procedure TForm10.btn4Click(Sender: TObject);
begin
StringGrid1.Cells[1,cbb1.ItemIndex+1]:=edt1.Text
end;

end.
