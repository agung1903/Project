unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sPanel, sGroupBox, jpeg, acImage,
  sEdit, Buttons, sBitBtn, OleCtrls, sMemo, db;

type
  TForm10 = class(TForm)
    sPanel3: TsPanel;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    sLabelFX2: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sBitBtn2: TsBitBtn;
    sLabelFX3: TsLabelFX;
    sLabelFX5: TsLabelFX;
    shp1: TShape;
    sBitBtn3: TsBitBtn;
    sPanel4: TsPanel;
    sBitBtn5: TsBitBtn;
    sLabelFX29: TsLabelFX;
    sPanel1: TsPanel;
    sLabelFX35: TsLabelFX;
    sLabelFX36: TsLabelFX;
    sLabelFX37: TsLabelFX;
    sLabelFX38: TsLabelFX;
    sImage2: TsImage;
    sPanel5: TsPanel;
    sBitBtn4: TsBitBtn;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sMemo1: TsMemo;
    sPanel6: TsPanel;
    sBitBtn6: TsBitBtn;
    sLabelFX1: TsLabelFX;
    sPanel7: TsPanel;
    sBitBtn7: TsBitBtn;
    sGroupBox2: TsGroupBox;
    sLabelFX6: TsLabelFX;
    sLabelFX7: TsLabelFX;
    sLabelFX8: TsLabelFX;
    sLabelFX9: TsLabelFX;
    sImage1: TsImage;
    sLabelFX10: TsLabelFX;
    sLabelFX11: TsLabelFX;
    sLabelFX12: TsLabelFX;
    sLabelFX13: TsLabelFX;
    sLabelFX14: TsLabelFX;
    sLabelFX15: TsLabelFX;
    sLabelFX16: TsLabelFX;
    sLabelFX17: TsLabelFX;
    sLabelFX18: TsLabelFX;
    sLabelFX19: TsLabelFX;
    sLabelFX20: TsLabelFX;
    sLabelFX21: TsLabelFX;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    sGroupBox3: TsGroupBox;
    sLabelFX22: TsLabelFX;
    sLabelFX23: TsLabelFX;
    sLabelFX24: TsLabelFX;
    sLabelFX25: TsLabelFX;
    sLabelFX26: TsLabelFX;
    sLabelFX27: TsLabelFX;
    sGroupBox4: TsGroupBox;
    sLabelFX28: TsLabelFX;
    sLabelFX30: TsLabelFX;
    sLabelFX31: TsLabelFX;
    sLabelFX32: TsLabelFX;
    sLabelFX33: TsLabelFX;
    sLabelFX34: TsLabelFX;
    sGroupBox5: TsGroupBox;
    sLabel5: TsLabel;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure sMemo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn3Click(Sender: TObject);
  private
    procedure simpandata;
    procedure lihatdata;
    procedure fiel;
    procedure info;
  public
    procedure ledwaktu;
  end;

var
  Form10: TForm10;
  bs : TStream;

implementation

uses Unit3, Unit2, Unit8, Unit11, Unit1, Unit4;

{$R *.dfm}

procedure TForm10.ledwaktu;
var
  led:integer;
begin
  led := StrToInt(FormatDateTime('hhnn',now)) ;
  if (led >= 0100) then shp1.Brush.Color := clBlue;
  if (led >= 1100) then shp1.Brush.Color := clWhite;
  if (led >= 1600) then shp1.Brush.Color := clMaroon;
  if (led >= 2000) or (led <= 0100) then shp1.Brush.Color := clBlack;
end;

procedure ambildata(qry:string);
begin
  with dmod.qry_inputdata do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
      Filtered := False;
    end;
end;

procedure nonaktip(cs:TsEdit);
begin
  ambildata('UPDATE member SET status=:statuse WHERE kode_pengguna=:kdpgn');
  with dmod.qry_inputdata do
    begin
      ParamByName('kdpgn').AsString := cs.Text;
      ParamByName('statuse').AsString := '0';
      ExecSQL;
    end
end;

procedure cekst(isi:string;status:TsLabel;bnr:boolean);
begin
  if bnr = true then
    begin
      status.Color := clGreen;
    end
  else
    begin
      status.Color := clRed;
    end;
  status.Caption := isi;
end;

procedure TForm10.fiel;
begin
  with dmod.qry_inputdata do
    begin
      sLabelFX9.Caption := FieldbyName('fullname').AsString;
      sLabelFX8.Caption := FieldbyName('ttl').AsString;
      sLabelFX11.Caption := FieldbyName('email').AsString;
      sLabelFX13.Caption := FieldbyName('agama').AsString;
      sLabelFX15.Caption := FieldbyName('jabatan').AsString;
      sLabelFX17.Caption := FieldbyName('departement').AsString;
      sLabelFX19.Caption := FieldbyName('jam_kerja').AsString;
      sLabelFX21.Caption := FieldByName('akhir_masuk').AsString;
      bs := CreateBlobStream(FieldByName('foto'),bmread);
      try
        Form8.MuatGambar(sImage1.Picture, bs);
      finally
        FreeAndNil(bs);
      end;
    end;
end;

procedure TForm10.lihatdata;
var
  har, hat, bul, but, tan, tat :integer;
begin
  har := strtoint(FormatDateTime('dd',now));
  bul := strtoint(FormatDateTime('mm',now));
  tan := strtoint(FormatDateTime('yyyy',now));
  ambildata('SELECT * FROM member WHERE kode_pengguna=' + QuotedStr(sedit1.Text));
  with dmod.qry_inputdata do
    begin
      Open;
      if RecordCount > 0 then
        begin
          hat := strtoint(FormatDateTime('dd',FieldByName('akhir_masuk').AsDateTime));
          but := strtoint(FormatDateTime('mm',FieldByName('akhir_masuk').AsDateTime));
          tat := strtoint(FormatDateTime('yyyy',FieldByName('akhir_masuk').AsDateTime));
          if (( hat <> har ) and ( bul > but ) and ( tan >= tat )) or (( har > hat ) and ( bul = but ) and ( tan >= tat )) then
            begin
              nonaktip(sedit1);
              cekst('Akun anda dinon-aktifkan',slabel5,false);
              sedit1.Clear;
            end
          else
            begin
              fiel;
              simpandata;
            end;
        end
      else
        begin
          sLabelFX9.Caption := '-';
          sLabelFX8.Caption := '-';
          sLabelFX11.Caption := '-';
          sLabelFX13.Caption := '-';
          sLabelFX15.Caption := '-';
          sLabelFX17.Caption := '-';
          sLabelFX19.Caption := '-';
          sLabelFX21.Caption := '-';
          sImage1.Picture := nil;
          cekst('Akun anda belum terdaftar!',slabel5,false);
        end;
    end;
end;

procedure TForm10.info;
var
  sy1,sy2,sy3,sy,inf1,inf2,inf3:string;
begin
  sy1 := '(select count(tanggal) from absensi where tanggal=' + QuotedStr(sLabelFX5.Caption) +' and absen_akhir=' + QuotedStr('00:00:00') + ')';
  sy3 := '(select count(tanggal) from absensi where tanggal=' + QuotedStr(sLabelFX5.Caption) +')';
  sy2 := '(select count(kode_pengguna) from member)';
  sy := 'SELECT ' + sy1 + ' as jml_masuk, ' + sy2 + ' - '+ sy3 + ' as jml_pengguna, ' + sy3 + ' - ' + sy1 + ' as jml_pulang FROM absensi JOIN member ON absensi.kode_pengguna=member.kode_pengguna';
  ambildata(sy);
  with dmod.qry_inputdata do
    begin
      Open;
      if recordcount > 0 then
        begin
          inf1 := FieldByName('jml_masuk').AsString;
          inf2 := FieldByName('jml_pengguna').AsString;
          inf3 := FieldByName('jml_pulang').AsString;
        end
      else
        begin
          Inf1 := '0';
          Inf2 := '0';
          Inf3 := '0';
        end;
        sLabel2.Caption := inf1;
        sLabel3.Caption := inf2;
        sLabel4.Caption := inf3;
    end;
    
  if not ( sEdit1.Text = sLabelFX25.Caption ) then
    begin
      sLabelFX28.Caption := sLabelFX22.Caption;
      slabelfx32.Caption := sLabelFX25.Caption;
      sLabelFX34.Caption := sLabelFX27.Caption;
    end;
  sLabelFX22.Caption := sLabelFX3.Caption;
  sLabelFX25.Caption := sedit1.Text;
  sLabelFX27.Caption := slabelfx9.Caption;
  
  sEdit1.Text := '';
end;

procedure TForm10.simpandata;
var
  wak,plgs:integer;
  ket,plkt,pljk,j :String;
begin
  wak := StrToInt(FormatDateTime('hhnn',now)) ;
  if (wak <= 0730) and (sLabelFX38.Caption = 'Shift 1') then ket := 'Masuk';
  if (wak >= 0730) and (sLabelFX38.Caption = 'Shift 1') then ket := 'Terlambat';
  if (wak <= 1600) and (sLabelFX38.Caption = 'Shift 2') then ket := 'Masuk';
  if (wak >= 1600) and (sLabelFX38.Caption = 'Shift 2') then ket := 'Terlambat';

  ambildata('SELECT * FROM absensi');
  with dmod.qry_inputdata do
    begin
      Open;
      Filter := 'kode_pengguna LIKE ' + QuotedStr(sedit1.Text) +' AND tanggal LIKE '+ QuotedStr(sLabelFX5.Caption);
      Filtered := true;
      if RecordCount = 0 then
        begin
          ambildata('SELECT * FROM member WHERE kode_pengguna=' + QuotedStr(sedit1.Text));
          Open;
          pljk := FieldByName('jam_kerja').AsString;
          j := FieldByName('status').AsString;

          if ((pljk = '07.30-16.30') and ( wak < 1300)) or ((pljk = '16.00-22.00') and ( wak > 1300)) or Form11.sCheckBox1.Checked = true or Not (j = '0') then
            begin
              ambildata('INSERT INTO absensi (kode_pengguna,tanggal,absen_awal,absen_akhir,keterangan) VALUES (:kode_penggunae,:tanggale,:absen_awale,:absen_akhire,:keterangane)');
              ParamByName('kode_penggunae').AsString := sEdit1.Text;
              ParamByName('tanggale').AsString := sLabelFX5.Caption;
              ParamByName('absen_awale').AsString := sLabelFX3.Caption;
              ParamByName('absen_akhire').AsString := '00:00:00';
              ParamByName('keterangane').AsString := ket;
              ExecSQL;
              cekst('Berhasil Masuk',slabel5, true);
            end
          else
            begin
              cekst('Jam Kerja anda ' + pljk,slabel5,false);
            end;
        end
      else
        begin
          plkt := FieldByName('keterangan').AsString;
          plgs  := StrToInt(StringReplace(Copy(Fieldbyname('absen_awal').AsString,1,5),':','',[rfReplaceAll]));
          if plkt = 'Izin' then
            begin
              ambildata('UPDATE absensi SET absen_akhir=:absen WHERE kode_pengguna=:kdpgn AND tanggal=:tgl');
              ParamByName('kdpgn').AsString := sEdit1.Text;
              ParamByName('tgl').AsString := sLabelFX5.Caption;
              ParamByName('absen').AsString := sLabelFX3.Caption;
              ExecSQL;
              cekst('Berhasil Izin',slabel5,true);
            end
          else
            begin
              if ((plgs <= 800 ) AND (wak > 1600)) OR ((plgs <= 1630 ) AND (wak > 2130)) then
                begin
                  ExecSQL;
                  cekst('Berhasil Keluar',slabel5,true);
                end
              else
                begin
                  cekst('Tidak berhasil Keluar',slabel5,false);
                end;
            end;
        end;
        info;
    end;
end;

procedure TForm10.sBitBtn1Click(Sender: TObject);
begin
  try
    begin
      if Form11.sCheckBox3.Checked = False then
        begin
          if ((sLabelFX35.Caption = 'Sabtu') and (Form11.sCheckBox2.Checked = false)) or (sLabelFX35.Caption = 'Minggu') then
            begin
              cekst('Hari ini Libur!',slabel5,false);
              sedit1.Clear;
            end
          else
            begin
              lihatdata;
            end;
        end
      else
        begin
          cekst('Tidak diperbolehkan masuk',slabel5,false);
          sedit1.Clear;
        end;
    end
  except
    on Exception do
      begin
        Close;
      end;
  end;
end;

procedure TForm10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  sEdit1.SetFocus;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
  sEdit1.SetFocus;
end;

procedure TForm10.sMemo1Click(Sender: TObject);
begin
  sEdit1.SetFocus;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  spanel1.Color := form1.sPanel1.Color;
  sImage2.Picture.Assign(form1.simage1.Picture);
  slabelfx1.Caption := form1.sLabelFX1.Caption + ' - ABSENSI';
end;

procedure TForm10.sEdit1Change(Sender: TObject);
begin
  if (Length(sedit1.Text)=8) then sBitBtn1.Click;
end;

procedure TForm10.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    begin
      Key := #0;
      sBitBtn1.Click;
    end;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.show;
  Form3.sBitBtn1.Click;
  form4.Show;
end;

procedure TForm10.sBitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.





