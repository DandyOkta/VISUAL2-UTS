program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormPertambahan},
  Unit3 in 'Unit3.pas' {FormKalkulator},
  Unit4 in 'Unit4.pas' {FormKondisional1},
  Unit5 in 'Unit5.pas' {FormKondisional2},
  Unit6 in 'Unit6.pas' {FormGrafik},
  Unit7 in 'Unit7.pas' {FormRevisi},
  Unit8 in 'Unit8.pas' {FormLatihan},
  Unit9 in 'Unit9.pas' {FormTambahdata},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormPertambahan, FormPertambahan);
  Application.CreateForm(TFormKalkulator, FormKalkulator);
  Application.CreateForm(TFormKondisional1, FormKondisional1);
  Application.CreateForm(TFormKondisional2, FormKondisional2);
  Application.CreateForm(TFormGrafik, FormGrafik);
  Application.CreateForm(TFormRevisi, FormRevisi);
  Application.CreateForm(TFormLatihan, FormLatihan);
  Application.CreateForm(TFormTambahdata, FormTambahdata);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
