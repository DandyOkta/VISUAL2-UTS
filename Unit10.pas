unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, Grids, ExtCtrls, TeeProcs, Chart;

type
  TForm10 = class(TForm)
    edt1: TEdit;
    cbb1: TComboBox;
    cht1: TChart;
    strngrd1: TStringGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    psrsSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
strngrd1.Cells[0,0]:='JENIS PENYAKIT';
strngrd1.Cells[0,1]:='COVID 19';
strngrd1.Cells[0,2]:='FLU BIASA';
strngrd1.Cells[0,3]:='DEMAM';
strngrd1.Cells[0,4]:='RINDU';
strngrd1.Cells[1,0]:='JUMLAH';
cht1.Title.Text.Add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm10.btn1Click(Sender: TObject);
begin
 strngrd1.Cells[1,cbb1.ItemIndex+1]:=edt1.Text;
end;

procedure TForm10.btn2Click(Sender: TObject);
var i : integer;
begin
for i := 1 to strngrd1.RowCount-1 do
cht1.Series[0].Add(StrToFloat(strngrd1.Cells[1,i]),strngrd1.Cells[0,i]);
end;

procedure TForm10.btn4Click(Sender: TObject);
begin
Close;
end;

end.
