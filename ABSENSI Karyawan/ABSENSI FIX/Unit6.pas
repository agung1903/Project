unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sRadioButton, ExtCtrls, sPanel, Buttons,
  sBitBtn, sGroupBox, Grids, DBGrids, acDBGrid, sEdit, 
  sComboBox;

type
  TForm6 = class(TForm)
    sGroupBox1: TsGroupBox;
    sPanel2: TsPanel;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sDBGrid1: TsDBGrid;
    sPanel3: TsPanel;
    sLabel2: TsLabel;
    sGroupBox2: TsGroupBox;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sGroupBox4: TsGroupBox;
    sEdit6: TsEdit;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    sEdit9: TsEdit;
    sPanel4: TsPanel;
    sBitBtn2: TsBitBtn;
    sLabel4: TsLabel;
    sComboBox1: TsComboBox;
    sComboBox2: TsComboBox;
    sEdit4: TsEdit;
    sLabel3: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1CellClick(Column: TColumn);
    procedure sBitBtn2Click(Sender: TObject);
  private
    
  public
    procedure pencariandata;
    
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit1, Unit3, Unit12, Unit10;

{$R *.dfm}

procedure ambildata(qry:string);
begin
  with dmod.qry_gaji do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure TForm6.pencariandata;
var
  jabatan,sy1,sy2,sy3,sy4,sy5,qry_1,qry_2:string;
  totl : integer;
begin
  totl := 0;
  qry_1 := '(select gaji_perhari from info where info.jabatan=member.jabatan) * (select count(tanggal) from absensi where tanggal like '+ QuotedStr('%'+ sComboBox1.Text + ' ' + sComboBox2.Text +'%')+ ' and absensi.kode_pengguna=member.kode_pengguna)';
  qry_2 := '(select count(tanggal) from absensi where tanggal like ' + QuotedStr('%'+ sComboBox1.Text + ' ' + sComboBox2.Text +'%')+ ' and absensi.kode_pengguna=member.kode_pengguna';
  sy2 := qry_1 + ' as gaji';
  sy1 := qry_2 + ') as jml_masuk';
  sy4 := qry_2 + ' and keterangan like ' + quotedstr('Izin')+') as jml_izin';
  sy5 := qry_2 + ' and keterangan like ' + quotedstr('Terlambat')+') as jml_terlambat';
  sy3 := 'SELECT DISTINCT absensi.kode_pengguna, awal_masuk, fullname, jabatan, '+ sy1 + ', ' + sy2 + ', ' + sy4 + ', ' + sy5 + ' FROM absensi LEFT JOIN member ON absensi.kode_pengguna=absensi.kode_pengguna WHERE absensi.kode_pengguna=member.kode_pengguna and absensi.tanggal like '+ QuotedStr('%'+ sComboBox1.Text + ' ' + sComboBox2.Text +'%');
  ambildata(sy3);
  if sRadioButton1.Checked = true then jabatan:= 'jabatan LIKE '+ quotedstr('PKL');
  if sRadioButton2.Checked = true then jabatan:= 'jabatan LIKE '+ quotedstr('Training');
  if sRadioButton3.Checked = true then jabatan:= 'jabatan LIKE '+ quotedstr('Karyawan Kontrak');
  with dmod.qry_gaji do
    begin
      Open;
      Filter :=  jabatan;
      Filtered := true;
      slabel5.caption := inttostr(RecordCount) + ' Karyawan';
      First;
      while not eof do
        begin
          totl := totl + fieldbyname('gaji').AsInteger;
          Next;
        end;
      slabel7.Caption := 'Rp. ' + FormatCurr('#,###',totl) + ',-'; ;
    end;
  with Form12.ZQuery2 do
    begin
      Close;
      Sql.Clear;
      SQL.Text := sy3;
      Open;
      Filter := jabatan;
      Filtered := true;
    end;
end;

procedure TForm6.sBitBtn1Click(Sender: TObject);
begin
  pencariandata;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  dmod.isi_tahun(scombobox2);
  dmod.isi_bulan(sComboBox1);
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  pencariandata;
  sDBGrid1.Columns[1].Color := form3.shp3.brush.Color;
  sDBGrid1.Columns[0].Color := form3.shp2.brush.Color;
end;

procedure TForm6.sDBGrid1CellClick(Column: TColumn);
begin
  sedit1.Text := sDBGrid1.Fields[0].AsString;
  sedit6.Text := sDBGrid1.Fields[1].AsString;
  sedit9.Text := 'Rp. ' + sDBGrid1.Fields[4].AsString + ',-';
  sedit2.Text := sDBGrid1.Fields[3].AsString + ' Hari';
  sedit3.Text := sDBGrid1.Fields[6].AsString + ' Hari';
  sedit4.Text := sDBGrid1.Fields[7].AsString + ' Hari';
end;

procedure TForm6.sBitBtn2Click(Sender: TObject);
begin
  Form12.qrlbl24.Caption := slabel5.Caption;
  Form12.qrlbl21.Caption := slabel7.Caption;
  Form12.qrlbl23.Caption := Form10.sLabelFX5.Caption;
  Form12.QuickRep2.preview;
end;

end.




