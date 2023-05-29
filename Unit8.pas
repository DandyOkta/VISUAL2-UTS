unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DB, Grids, ADODB,
  StdCtrls, DBGrids, Unit9,
  frxClass, frxDBSet;

type
  TFormLatihan = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    frxDBjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    qry2: TADOQuery;
    frxdetailjadwalrep: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure frxjadwalClickObject(view: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLatihan: TFormLatihan;

implementation

{$R *.dfm}

procedure TFormLatihan.btn1Click(Sender: TObject);
var i:Integer;
begin
 qry1.SQL.Clear;
 qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa, kelas as nama_kelas from jadwal_table group by kelas');
 qry1.Open;
 for i:=1 to qry1.RecordCount do
 begin
   cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
   qry1.Next;
 end;
 dbgrd1.Columns[2].Width:=90;
end;

procedure TFormLatihan.btn3Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;

dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
end;

procedure TFormLatihan.FormCreate(Sender: TObject);
begin
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
end;

procedure TFormLatihan.btn4Click(Sender: TObject);
begin
FormTambahdata.Show;
end;

procedure TFormLatihan.btn2Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TFormLatihan.frxjadwalClickObject(view: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if view.Name ='Memo7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select * from jadwal_table where kelas= "'+view.TagStr+'"');
    qry2.Open;

    frxdetailjadwalrep.ShowReport();
  end;
end;

end.
