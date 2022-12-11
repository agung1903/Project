unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, sLabel, Buttons, sCheckBox,
  ExtCtrls, sPanel, sButton,
  sDialogs, sEdit, sMemo, jpeg, IniFiles, acImage, ExtDlgs;

type
  TForm11 = class(TForm)
    sLabel3: TsLabel;
    sGroupBox1: TsGroupBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sColorDialog1: TsColorDialog;
    sLabel1: TsLabel;
    sButton1: TsButton;
    sPanel1: TsPanel;
    sGroupBox4: TsGroupBox;
    sPanel3: TsPanel;
    sMemo1: TsMemo;
    sPanel4: TsPanel;
    sButton6: TsButton;
    sButton7: TsButton;
    sGroupBox2: TsGroupBox;
    sLabel2: TsLabel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sLabel4: TsLabel;
    sGroupBox3: TsGroupBox;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sImage1: TsImage;
    sLabel5: TsLabel;
    sButton2: TsButton;
    sOpenPictureDialog1: TsOpenPictureDialog;
    sImage2: TsImage;
    sButton3: TsButton;
    sLabel6: TsLabel;
    sPanel2: TsPanel;
    sButton4: TsButton;
    sButton5: TsButton;
    sEdit6: TsEdit;
    procedure sButton1Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit3KeyPress(Sender: TObject; var Key: Char);
  private
    procedure ambilinfo;
  public
    procedure simpancfg;
  end;

var
  Form11: TForm11;

implementation

uses Unit2, Unit10, Unit1;

{$R *.dfm}

procedure hanyaangka(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13,#32]) then
    begin
      key:=#0;
    end;
end;

procedure tambahinfo(jeb:string;gjp:TsEdit);
begin
  with dmod.qry_inputdata2 do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE info SET gaji_perhari=:gaji_perharie WHERE jabatan=:jbtn';
      ParamByName('jbtn').AsString := jeb;
      ParamByName('gaji_perharie').AsString := gjp.Text;
      ExecSQL;
    end;
end;

procedure TForm11.simpancfg;
var
  Simpan       : TIniFile;
  nm, ta, ss: string;
begin
  Simpan := TINIFile.Create(ExtractFilePath(Application.EXEName)+ 'settingapp.ini');
  try
    Simpan.WriteString('Konfig','Password',sedit6.Text);
    ta := 'TAMPILAN';
    Simpan.WriteString(ta,'WarnaX',ColorToString(spanel2.Color));
    Simpan.WriteString(ta,'Nama',sedit4.Text);
    Simpan.WriteString(ta,'Alamat',sedit5.Text);
    sImage1.Picture.SaveToFile(ExtractFilePath(Application.EXEName)+ 'files\logo.jpg');
    sImage2.Picture.SaveToFile(ExtractFilePath(Application.EXEName)+ 'files\barcode.jpg');
    nm := 'PENGATURAN';
    simpan.WriteBool(nm,'Absen1',sCheckBox1.Checked);
    simpan.WriteBool(nm,'Absen2',sCheckBox2.Checked);
    simpan.WriteBool(nm,'Absen3',sCheckBox3.Checked);
    Simpan.WriteString(nm,'Warna',ColorToString(spanel1.Color));
    ss := StringReplace(smemo1.Text,Char(13)+Char(10), ':',[rfReplaceAll,rfIgnoreCase]);
    Simpan.WriteString(nm,'Pesan',ss); 
  finally
    FreeAndNil(simpan);
  end;
end;

procedure TForm11.ambilinfo;
begin
  with dmod.qry_inputdata2 do
    begin
      Close;
      SQL.Clear;
      sql.Text := 'SELECT * FROM info';
      Open;
      Filtered := true;
      Filter := 'jabatan=' + QuotedStr('PKL');
      sedit1.Text := FieldByName('gaji_perhari').AsString;
      Filter := 'jabatan=' + QuotedStr('Training');
      sedit2.Text := FieldByName('gaji_perhari').AsString;
      Filter := 'jabatan=' + QuotedStr('Karyawan Kontrak');
      sedit3.Text := FieldByName('gaji_perhari').AsString;
    end;
end;

procedure TForm11.FormActivate(Sender: TObject);
begin
  ambilinfo;
end;

procedure TForm11.sButton1Click(Sender: TObject);
begin
  if sColorDialog1.Execute then
    begin
      sPanel1.Color := sColorDialog1.Color;
    end;
end;

procedure TForm11.sButton6Click(Sender: TObject);
begin
  Form10.sMemo1.Text := sMemo1.Text;
  Form10.spanel3.Color := sPanel1.Color;
  form1.sPanel1.Color := spanel2.Color;
end;


procedure TForm11.sButton7Click(Sender: TObject);
begin
  tambahinfo('PKL',sedit1);
  tambahinfo('Training',sedit2);
  tambahinfo('Karyawan Kontrak',sedit3);
  if not ( sedit6.Text = '' ) then
    begin
      simpancfg;
      sLabel4.Caption := 'Data telah disimpan di ' + ExtractFilePath(Application.ExeName) + 'settingapp.ini'
    end
  else
    begin
      slabel4.Caption := 'Masukan password konfigurasi!';
    end;
end;


procedure TForm11.FormShow(Sender: TObject);
begin
  sButton6.Click;
end;

procedure TForm11.sButton2Click(Sender: TObject);
begin
  if  sOpenPictureDialog1.Execute then
    begin
      sImage1.Picture.LoadFromFile(sOpenPictureDialog1.FileName);
    end;
end;

procedure TForm11.sButton3Click(Sender: TObject);
begin
  if  sOpenPictureDialog1.Execute then
    begin
      sImage2.Picture.LoadFromFile(sOpenPictureDialog1.FileName);
    end;
end;

procedure TForm11.sButton4Click(Sender: TObject);
begin
  if sColorDialog1.Execute then
    begin
      sPanel2.Color := sColorDialog1.Color;
    end;
end;

procedure TForm11.sButton5Click(Sender: TObject);
var
  buka : Tinifile;
  nm,ta: string;
begin
  ambilinfo;
  buka :=  TINIFile.Create(ExtractFilePath(Application.EXEName)+'settingapp.ini');
  try
    simage1.Picture.LoadFromFile(ExtractFilePath(Application.EXEName)+'\files\logo.jpg');
    simage2.Picture.LoadFromFile(ExtractFilePath(Application.EXEName)+'\files\barcode.jpg');    ta := 'TAMPILAN';
    sedit4.Text := buka.ReadString(ta,'Nama','PT.');
    sedit5.Text := buka.ReadString(ta,'Alamat','Jalan Raya Bogor');
    spanel2.Color := StringToColor(buka.ReadString(ta,'WarnaX','clBlack'));
    nm := 'PENGATURAN';
    sCheckBox1.Checked := buka.ReadBool(nm,'Absen1',false);
    sCheckBox2.Checked := buka.ReadBool(nm,'Absen2',false);
    sCheckBox3.Checked := buka.ReadBool(nm,'Absen3',false);
    sPanel1.Color := StringToColor(buka.ReadString(nm,'Warna','clBlack'));
    smemo1.Text := StringReplace(buka.ReadString(nm,'Pesan',''),':',#13#10,[rfReplaceAll,rfIgnoreCase]);
  finally
    FreeAndNil(buka);
  end;
end;

procedure TForm11.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  hanyaangka(sender,key);
end;

procedure TForm11.sEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  hanyaangka(sender,key);
end;

procedure TForm11.sEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  hanyaangka(sender,key);
end;

end.





