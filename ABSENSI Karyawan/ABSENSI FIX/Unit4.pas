unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, sRadioButton, sGroupBox, 
  Grids, DBGrids, acDBGrid,
  sCheckBox, ExtCtrls, sPanel, Buttons, sBitBtn, sLabel, sEdit, ActnList,
  acProgressBar, sComboBox, DBCtrls, acImage;

type
  TForm4 = class(TForm)
    sGroupBox1: TsGroupBox;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sRadioButton1: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sPanel3: TsPanel;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sRadioButton6: TsRadioButton;
    sRadioButton7: TsRadioButton;
    sPanel4: TsPanel;
    sLabel2: TsLabel;
    sDBGrid1: TsDBGrid;
    sRadioButton2: TsRadioButton;
    sRadioButton11: TsRadioButton;
    sRadioButton12: TsRadioButton;
    tmr2: TTimer;
    sProgressBar1: TsProgressBar;
    sCheckBox1: TsCheckBox;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    sLabel1: TsLabel;
    sComboBox2: TsComboBox;
    sComboBox3: TsComboBox;
    sComboBox4: TsComboBox;
    sBitBtn2: TsBitBtn;
    sPanel6: TsPanel;
    sEdit2: TsEdit;
    sPanel7: TsPanel;
    sPanel8: TsPanel;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sPanel5: TsPanel;
    sComboBox1: TsComboBox;
    sComboBox5: TsComboBox;
    sEdit3: TsEdit;
    sComboBox6: TsComboBox;
    sComboBox7: TsComboBox;
    sImage1: TsImage;
    procedure sDateEdit1Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure sComboBox3Change(Sender: TObject);
    procedure sComboBox4Change(Sender: TObject);
    procedure sRadioButton3Click(Sender: TObject);
    procedure sRadioButton1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sEdit2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sDBGrid1CellClick(Column: TColumn);
    procedure sComboBox7Change(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
  private
    
  public
    procedure pencariandata;
    
  end;

var
  Form4: TForm4;

implementation

uses Unit2, Unit3, Unit10;

{$R *.dfm}

procedure ambildata(qry:string);
begin
  with dmod.qry_absensi do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure TForm4.pencariandata;
var
  nama, tegl, tanggal, jabatan, status:string;
begin
  if (Length(sEdit2.Text)>=1) then nama := ' WHERE fullname LIKE ' + QuotedStr('%' + sEdit2.Text + '%');

  if (length(scombobox2.Text) < 2)  then tegl := '0';
  tegl := tegl + scombobox2.Text + ' ' + sComboBox3.Text + ' ' +scombobox4.Text;
  if sRadioButton3.Checked = True then tanggal := 'tanggal LIKE '+ QuotedStr(tegl) + ' AND ';

  if sRadioButton4.Checked = True then jabatan:= 'jabatan LIKE ' + quotedstr('PKL') + ' AND ';
  if sRadioButton5.Checked = True then jabatan:= 'jabatan LIKE ' + quotedstr('Training') + ' AND ';
  if sRadioButton6.Checked = True then jabatan:= 'jabatan LIKE ' + quotedstr('Karyawan Kontrak') + ' AND ';

  if sRadioButton2.Checked = True then status:= 'keterangan LIKE '+ quotedstr('Masuk');
  if sRadioButton11.Checked = True then status:= 'keterangan LIKE '+ quotedstr('Izin');
  if sRadioButton12.Checked = True then status:= 'keterangan LIKE '+ quotedstr('Terlambat');
  
  ambildata('SELECT * FROM absensi JOIN member ON absensi.kode_pengguna=member.kode_pengguna' + nama);
    with dmod.qry_absensi do
    begin
      Open;
      Filter := tanggal + jabatan  + status  ;
      Filtered := true;
      First;
    end;
  dmod.ambilkd(scombobox7);
end;

procedure TForm4.sDateEdit1Change(Sender: TObject);
begin
  sRadioButton3.Checked := True;
end;

procedure TForm4.sBitBtn1Click(Sender: TObject);
begin
  pencariandata;
end;

procedure TForm4.tmr2Timer(Sender: TObject);
begin
  tmr2.Interval := StrToInt(sEdit1.Text);
  sProgressBar1.Position := sProgressBar1.Position + 1;
  if sProgressBar1.Position = sProgressBar1.Max then
    begin
      sProgressBar1.Position := 0;
      sBitBtn1.Click;
    end;
end;

procedure TForm4.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13,#32]) then
    begin
      key:=#0;
    end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  dmod.isi_tahun(scombobox4);
  dmod.isi_bulan(sComboBox3);
  dmod.isi_tanggal(sComboBox2,sComboBox3,sComboBox4);
  dmod.isi_bulan(sComboBox5);
  dmod.isi_tanggal(sComboBox1,sComboBox5,scombobox4);
  sRadioButton3.Checked := true;
end;

procedure TForm4.sComboBox3Change(Sender: TObject);
begin
  dmod.isi_tanggal(sComboBox2,sComboBox3,sComboBox4);
end;

procedure TForm4.sComboBox4Change(Sender: TObject);
begin
  dmod.isi_tanggal(sComboBox2,sComboBox3,sComboBox4);
end;

procedure TForm4.sRadioButton3Click(Sender: TObject);
begin
  if sRadioButton3.Checked = true then
    begin
      sComboBox2.Enabled := True;
      sComboBox3.Enabled := True;
      sComboBox4.Enabled := True;
    end;
end;

procedure TForm4.sRadioButton1Click(Sender: TObject);
begin
  if sRadioButton1.Checked = true then
    begin
      sComboBox2.Enabled := false;
      sComboBox3.Enabled := false;
      sComboBox4.Enabled := false;
    end;
end;

procedure TForm4.sBitBtn2Click(Sender: TObject);
begin
  Form10.Show;
end;

procedure TForm4.sEdit2Change(Sender: TObject);
begin
  sBitBtn1.Click;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  pencariandata;
  sDBGrid1.Columns[0].Color := form3.shp1.brush.Color;
  sDBGrid1.Columns[1].Color := form3.shp2.brush.Color;
  sDBGrid1.Columns[2].Color := form3.shp3.brush.Color;
end;

procedure TForm4.sCheckBox1Click(Sender: TObject);
begin
  case sCheckBox1.Checked of
    True : tmr2.Enabled := True;
    False : tmr2.Enabled := false;
  end;
end;

procedure TForm4.sDBGrid1CellClick(Column: TColumn);
begin
  if spanel7.Visible = true then
    begin
      sComboBox7.Text := sDBGrid1.Fields[1].Text;
      sComboBox6.Text := sDBGrid1.Fields[6].Text;
      scombobox1.ItemIndex := strtoint(copy(sDBGrid1.Fields[0].Text,0,2)) -1;
      scombobox5.Text := copy(sDBGrid1.Fields[0].Text,4,length(sDBGrid1.Fields[0].Text)-8);
      dmod.cekkd(sComboBox7,sedit3);
    end;
end;

procedure TForm4.sComboBox7Change(Sender: TObject);
begin
  dmod.cekkd(sComboBox7,sedit3);
end;

procedure TForm4.sBitBtn4Click(Sender: TObject);
var
  s:string;
begin
  if (length(scombobox1.Text)<2) then s := '0';
  with dmod.qry_inputdata3 do
    begin
      if not (scombobox7.Text = '') AND not (sedit3.Text = '') then
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'INSERT INTO absensi (kode_pengguna,tanggal,absen_awal,absen_akhir,keterangan) VALUES (:kode_penggunae,:tanggale,:absen_awale,:absen_akhire,:keterangane)';
          ParamByName('kode_penggunae').AsString := sComboBox7.Text;
          ParamByName('tanggale').AsString := s + sComboBox1.Text + ' ' + scombobox5.Text + ' ' + FormatDateTime('yyyy',Now);
          ParamByName('absen_awale').AsString := FormatDateTime('hh:nn:ss',now);
          ParamByName('absen_akhire').AsString := '00:00:00';
          ParamByName('keterangane').AsString := sComboBox6.Text;
          ExecSQL;
          ShowMessage('Kode '+ scombobox7.Text +' Data berhasil Ditambah!');
        end
      else
        begin
          ShowMessage('Terjadi Kesalahan!');
        end;
    end;
  sBitBtn1.Click;
end;

procedure TForm4.sBitBtn3Click(Sender: TObject);
var
  s:string;
begin
  if (length(scombobox1.Text)<2) then s := '0';
  with dmod.qry_inputdata3 do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT kode_pengguna, tanggal FROM absensi WHERE kode_pengguna=' + QuotedStr(sComboBox7.Text) + ' AND tanggal=' + QuotedStr(Form10.sLabelFX5.Caption);
      Open;
      if not ( RecordCount = 0 ) AND not (scombobox7.Text = '') or not (sedit3.Text = '') then
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'UPDATE absensi SET keterangan=:keterangane WHERE kode_pengguna=:kdpgn AND tanggal=:tgl';
          ParamByName('kdpgn').AsString := sComboBox7.Text;
          ParamByName('tgl').AsString := s+  sComboBox1.Text + ' ' + sComboBox5.Text + ' ' + FormatDateTime('yyyy',now);
          ParamByName('keterangane').AsString := sComboBox6.Text;
          ExecSQL;
          ShowMessage('Kode '+ scombobox7.Text +' Data berhasil Disimpan!');
        end
      else
        begin
          ShowMessage('Terjadi Kesalahan!');
        end;
    end;
    sBitBtn1.Click;
end;

procedure TForm4.sComboBox5Change(Sender: TObject);
begin
  dmod.isi_tanggal(sComboBox1,sComboBox5,sComboBox4);
end;

end.




