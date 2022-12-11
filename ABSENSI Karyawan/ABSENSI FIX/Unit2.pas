unit Unit2;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset,Dialogs, IdComponent, 
  sComboBox, ExtCtrls, ImgList, Controls, acAlphaImageList,sedit;

type
  Tdmod = class(TDataModule)
    koneksi: TZConnection;
    tmr1: TTimer;
    sAlphaImageList1: TsAlphaImageList;
    qry_bebas: TZQuery;
    qry_absensi: TZQuery;
    qry_karyawan: TZQuery;
    qry_gaji: TZQuery;
    qry_gantishift: TZQuery;
    qry_inputdata: TZQuery;
    qry_inputdata2: TZQuery;
    qry_inputdata3: TZQuery;
    ds_absensi: TDataSource;
    ds_karyawan: TDataSource;
    ds_gaji: TDataSource;
    ds_shift: TDataSource;
    qry_inputs: TZQuery;
    procedure qry_sql_1AfterOpen(DataSet: TDataSet);
    procedure tmr1Timer(Sender: TObject);
    procedure qry_gajiAfterOpen(DataSet: TDataSet);
    procedure qry_karyawanAfterOpen(DataSet: TDataSet);
  private
    procedure cekaktf(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure jmlmsk(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure GetCurr(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure memoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
  public
    procedure cekkd(bok:TsComboBox;tek:TsEdit);
    procedure isi_tanggal(isibox: TsComboBox;blnbox :TsComboBox;thnbox :TsComboBox);
    Procedure isi_tahun(isithn:TsCombobox);
    procedure isi_bulan(isibln :TsComboBox);
    procedure ambilkd(cmb:TsComboBox);
  end;

var
  dmod: Tdmod;

implementation

uses Unit10, Unit3, Unit1,dsiwin32;

{$R *.dfm}

procedure ambiltanggal;
var
  i :Integer;
const
  NamaHari : array[1..7] of string = ('Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu');
  NamaBulan : array[1..12] of string = ('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
begin
  for i := 1 to 7 do LongDayNames[i] := NamaHari[i];
  for i := 1 to 12 do LongMonthNames[i] := NamaBulan[i];
end;

procedure tdmod.ambilkd(cmb:TsComboBox);
begin
  cmb.clear;
  with dmod.qry_bebas do
    begin
      Close;
      SQL.Clear;
      Sql.Text := 'SELECT kode_pengguna FROM member';
      Open;
      while not Eof do
        begin
          cmb.Items.Add(FieldByName('kode_pengguna').AsString);
          Next;
        end;
    end;
end;

procedure tdmod.cekkd(bok:TsComboBox;tek:TsEdit);
begin
  with dmod.qry_bebas do
    begin
      Close;
      SQL.Clear;
      sql.Text := 'Select kode_pengguna,fullname FROM member WHERE kode_pengguna=' + QuotedStr(bok.Text);
      Open;
      if not(bok.Text= '') then tek.Text := FieldbyName('fullname').AsString;
    end;
end;

procedure tdmod.isi_tanggal(isibox: TsComboBox;blnbox :TsComboBox;thnbox :TsComboBox);
var
  i: Integer;
begin
  if blnbox.ItemIndex = 0 then
    begin
    isibox.Clear;
    for i := 1 to 31 do
      begin
        isibox.Items.Add(IntToStr(i));
      end;
    end
  else
  if blnbox.ItemIndex = 1 then
    begin
      isibox.Clear;
      if StrToInt(thnbox.Text) mod 4=0 then
        Begin
          for i := 1 to 29 do
          begin
            isibox.Items.Add(IntToStr(i));
          end;
        end
      else
        begin
          for i := 1 to 28 do
            begin
              isibox.Items.Add(IntToStr(i));
            end;
        end;
    end
  else
  if blnbox.ItemIndex = 2 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 3 then
    begin
      isibox.Clear;
      for i := 1 to 30 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 4 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 5 then
    begin
      isibox.Clear;
      for i := 1 to 30 do
      begin
        isibox.Items.Add(IntToStr(i));
      end;
    end
  else
  if blnbox.ItemIndex = 6 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 7 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 8 then
    begin
      isibox.Clear;
      for i := 1 to 30 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 9 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 10 then
    begin
      isibox.Clear;
      for i := 1 to 30 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end
  else
  if blnbox.ItemIndex = 11 then
    begin
      isibox.Clear;
      for i := 1 to 31 do
        begin
          isibox.Items.Add(IntToStr(i));
        end;
    end;
  isibox.ItemIndex := strtoint(FormatDateTime('dd',now)) -1;
end;

procedure tdmod.isi_bulan(isibln :TsComboBox);
var
  b,buln :string;
begin
  buln:= 'Januari:Februari:Maret:April:Mei:Juni:Juli:Agustus:September:Oktober:November:Desember';
  isibln.Items.Text := StringReplace(buln,':',Char(13)+Char(10),[rfReplaceAll]);
  b := copy(FormatDateTime('mm',now),1,2);
  isibln.ItemIndex := strtoint(b)-1;
end;

Procedure tdmod.isi_tahun(isithn:TsCombobox);
var
  thn, blan, hari: Word;
  i: Integer;
begin
  DecodeDate(Date(),thn,blan,hari);
  isithn.Items.Clear;
  for i := thn downto (thn-6) do
    begin
      isithn.Items.Add(IntToStr(i));
    end;
  isithn.ItemIndex := 0;
end;

procedure Tdmod.qry_sql_1AfterOpen(DataSet: TDataSet);
var
  i : integer;
begin
  for i := 0 to DataSet.FieldCount - 1 do
  if (DataSet.Fields[i] is TMemoField) then DataSet.Fields[i].OnGetText := memoGetText;
end;

procedure Tdmod.memoGetText(Sender: TField; var Text: String; DisplayText: Boolean);
var
  i : integer;
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
      i := pos(#13,Text);
      if i > 0 then
        Text := copy(Text,1,i-1) + '...';
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure Tdmod.tmr1Timer(Sender: TObject);
var
  ambiljam:Integer;
  waktu:string;
begin
  ambiltanggal;
  ambiljam := StrToInt(FormatDateTime('hhnn',now));

  dsiwin32.DSiTrimWorkingSet;
  dsiwin32.DSiGetThreadTime;

  Form3.sStatusBar1.Panels[5].Text := FormatDateTime('hh:nn:ss',now);

  Form10.ledwaktu;
  Form10.sLabelFX3.Caption := FormatDateTime('hh:nn:ss',now);
  Form10.sLabelFX35.Caption := FormatDateTime('dddd',now);
  Form10.sLabelFX5.Caption := FormatDateTime('dd mmmm yyyy',now);

  if (ambiljam <= 1600) then Form10.sPanel4.Caption := 'SELAMAT DATANG KEMBALI DI ' + form1.slabelfx1.caption;
  if (ambiljam >= 1630) then Form10.sPanel4.Caption := 'TERIMAKASIH SUDAH MASUK, SILAHKAN PULANG DAN BERISTIRAHAT DIRUMAH';

  if ambiljam <= 1430 then
    begin
      Form10.sLabelFX38.Caption := 'Shift 1';
      if Form10.sLabelFX35.Caption = 'Jumat' then
        begin
          waktu := '07:30:00 - 17:00:00';
        end
      else
        begin
          waktu := '07:30:00 - 16:30:00';
        end;
    end
  else
    begin
      Form10.sLabelFX38.Caption := 'Shift 2';
      waktu := '16:00:00 - 22:00:00';
    end;
  Form10.sLabelFX37.Caption := waktu;
end;

procedure Tdmod.GetCurr(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
      if not (Text = '') then Text := 'Rp. ' + FormatCurr('#,###',StrToCurr(text)) + ',-';
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure tdmod.jmlmsk(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
        Text := Text + ' Hari'
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure tdmod.cekaktf(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
        if Text = '0' then Text := 'Tidak Aktif';
        if Text = '-1' then Text := 'Aktif';
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure Tdmod.qry_gajiAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('gaji').OnGetText := GetCurr;
  DataSet.FieldByName('jml_masuk').OnGetText := jmlmsk;
end;

procedure Tdmod.qry_karyawanAfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('status').OnGetText := cekaktf;
end;

end.





