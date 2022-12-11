unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, acImage, sMemo, sComboBox,
  sEdit, sGroupBox, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sCheckBox,
  sLabel, jpeg, sPanel, ExtDlgs, sDialogs, IdComponent,
  ZDataset;

type
  TForm8 = class(TForm)
    sGroupBox1: TsGroupBox;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sComboBox1: TsComboBox;
    sMemo1: TsMemo;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sGroupBox2: TsGroupBox;
    sComboBox2: TsComboBox;
    sPanel1: TsPanel;
    sLabel2: TsLabel;
    sDateEdit3: TsDateEdit;
    sBitBtn6: TsBitBtn;
    sOpenPictureDialog1: TsOpenPictureDialog;
    sPanel2: TsPanel;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sCheckBox3: TsCheckBox;
    sImage1: TsImage;
    sComboBox5: TsComboBox;
    sDateEdit1: TsDateEdit;
    sDateEdit2: TsDateEdit;
    sComboBox4: TsComboBox;
    sComboBox3: TsComboBox;
    sCheckBox1: TsCheckBox;
    sEdit1: TsEdit;
    sBitBtn5: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sEdit5Change(Sender: TObject);
  private
    procedure hapusfoto;
    procedure simpandata;
    procedure param;
  public
    Procedure MuatGambar(Picture : TPicture; Stream : TStream);
  end;

var
  Form8: TForm8;
  jpg : TJPEGImage;
  bs : TStream;

implementation

uses Unit2, Unit3, DB, Unit5;

{$R *.dfm}

Procedure TForm8.MuatGambar(Picture : TPicture; Stream : TStream);
var
  g : TGraphic;
  id : Word;
begin
  g := nil;
  Stream.Position := 0;
  Stream.Read(id,SizeOf(id));
  if Stream.Size > 1 then
    case id of
      $0000 : g := TIcon.Create;
      $4D42 : g := TBitmap.Create;
      $CDD7 : g := TMetafile.Create;
      $D8FF : g := TJPEGImage.Create;
    end;
  Stream.Position := 0;
  if Assigned(g) then g.LoadFromStream(stream);
  Picture.Assign(g);
  g.Free
end;

procedure ambildata(qry:String);
begin
  with dmod.qry_inputs do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure tform8.hapusfoto;
begin
  simage1.Picture := nil;
end;

procedure acak_kode(box:TsComboBox;muncul:TsEdit;er:TsLabel);
var
  ak :Real;
  ks,kk: string;
begin
  if box.ItemIndex = 0 then ks := 'PKL';
  if box.ItemIndex = 1 then ks := 'TRI';
  if box.ItemIndex = 2 then ks := 'KKK';
  ambildata('SELECT kode_pengguna FROM member WHERE kode_pengguna LIKE ' + QuotedStr(ks + '%') + ' Order By kode_pengguna DESC Limit 1');
  with dmod.qry_inputs do
    begin
      Open;
      kk := fieldbyname('kode_pengguna').AsString;
      if RecordCount = 0 then
        begin
          ak := 00001;
        end
      else
        begin
          ak := StrToInt(Copy(kk,Length(ks)+1,Length(kk)));
          ak := ak+1;
        end;
      muncul.Text := ks + FormatFloat('00000',ak);
    end;
end;

procedure TForm8.param;
var
  ms : TMemoryStream;
  jpg : TJPEGImage;
begin
  with dmod.qry_inputs do
    begin
      ParamByName('kode_penggunae').AsString := sEdit1.Text;
      ParamByName('fullnamee').AsString := sEdit2.Text;
      ParamByName('ttle').AsString := sEdit3.Text + ' ' + FormatDateTime('yyyy-mm-dd',sDateEdit3.Date);
      ParamByName('jenis_ke').AsString := sComboBox5.Text;
      ParamByName('emaile').AsString := sEdit4.Text;
      ParamByName('pekerjaane').AsString :=  sEdit5.Text;
      ParamByName('agamae').AsString := sComboBox1.Text;
      ParamByName('alamate').AsString := sMemo1.Text;
      ParamByName('jabatane').AsString := sComboBox2.Text;
      ParamByName('departemente').AsString := sComboBox3.Text;
      ParamByName('awal_masuke').AsDate := sDateEdit1.Date;
      ParamByName('akhir_masuke').AsDate := sDateEdit2.Date;
      ParamByName('jam_kerjae').AsString := sComboBox4.Text;
      ParamByName('statuse').AsString := BoolToStr(sCheckBox1.Checked);
      try
        ms := TMemoryStream.Create;
        jpg := TJPEGImage.Create;
        ms.Seek(0,soFromBeginning);
        jpg.Assign(sImage1.Picture.Graphic);
        jpg.SaveToStream(ms);
        ms.Position :=0;
        ParamByName('fotoe').LoadFromStream(ms,ftBlob);
      finally
        FreeAndNil(ms);
        FreeAndNil(jpg);
      end;
    end;
end;

procedure TForm8.simpandata;
var
  up1,up2,up11,in1,in2, pf:String;
begin
  up1 := 'fullname=:fullnamee, foto=:fotoe, ttl=:ttle, jenis_k=:jenis_ke, email=:emaile, ';
  up11 := up1 + 'pekerjaan=:pekerjaane, agama=:agamae, alamat=:alamate, jabatan=:jabatane, departement=:departemente, awal_masuk=:awal_masuke, akhir_masuk=:akhir_masuke, jam_kerja=:jam_kerjae, status=:statuse';
  up2 := 'kode_pengguna=:kode_penggunae';
  in1 := 'kode_pengguna, fullname, foto, ttl, jenis_k, email, pekerjaan, agama, alamat, jabatan, departement, awal_masuk, akhir_masuk, jam_kerja, status';
  in2 := ':kode_penggunae, :fullnamee, :fotoe, :ttle, :jenis_ke, :emaile, :pekerjaane, :agamae, :alamate, :jabatane, :departemente, :awal_masuke, :akhir_masuke, :jam_kerjae, :statuse';
  ambildata('SELECT * FROM member WHERE kode_pengguna=' + QuotedStr(sEdit1.Text));
  with dmod.qry_inputs do
    begin
      Open;
      if RecordCount = 0 then
        begin
          pf := 'INSERT INTO member (' + in1 + ') VALUES (' + in2 + ')';
        end
      else
        begin
          pf := 'UPDATE member SET ' + up11 + '  WHERE ' + up2;
        end;
      ambildata(pf);
      param;
      ExecSQL;
      sLabel2.Caption := 'Kode '+ sedit1.Text +' Sukses Disimpan!';
    end;
end;

procedure TForm8.sBitBtn5Click(Sender: TObject);
var
  s:string;
begin
  try
    begin
      sImage1.Picture := nil;
      sLabel2.Caption := '';
      sBitBtn4.Enabled := True;
      sComboBox2.Enabled := False;
      ambildata('SELECT * FROM member WHERE kode_pengguna=' + QuotedStr(sEdit1.Text));
      with dmod.qry_inputs do
        begin                 
          Open;
          if recordcount > 0 then
            begin
              s := fieldbyname('ttl').asstring;
              sEdit2.Text := FieldByName('fullname').AsString;
              SetLength(s,Pos(' ',s)-1);
              sEdit3.Text := Trim(s);
              sDateEdit3.Date := StrToDate(StringReplace(fieldbyname('ttl').asstring,sEdit3.Text + ' ', '',[rfReplaceAll]));
              sEdit4.text := FieldByName('email').AsString;
              sedit5.text := FieldByName('pekerjaan').AsString;
              scombobox1.text := FieldByName('agama').AsString;
              sMemo1.Text := FieldByName('alamat').AsString;
              sComboBox3.Text := FieldByName('departement').AsString;
              sDateEdit1.Date := Fieldbyname('awal_masuk').AsDateTime;
              sComboBox5.Text := Fieldbyname('jenis_k').AsString;
              sDateEdit2.Date := Fieldbyname('akhir_masuk').AsDateTime;
              sComboBox4.Text := FieldByName('jam_kerja').AsString;
              sCheckBox1.Checked := StrToBool(Fieldbyname('status').AsString);
              sComboBox2.Text := FieldByName('jabatan').AsString;
              bs := CreateBlobStream(FieldByName('foto'),bmread);
            end
          else
            begin
              sLabel2.Caption := 'Kode ' + sEdit1.Text + ' Tidak Ada!';
            end;
          try
            MuatGambar(sImage1.Picture, bs);
          finally
            FreeAndNil(bs);
          end;
        end;
    end
  except
    on Exception do
      begin
        sLabel2.Caption := 'Terjadi kesalahan!';
        Close;
      end;
  end;
end;

procedure TForm8.sBitBtn1Click(Sender: TObject);
begin
  if sOpenPictureDialog1.Execute then
    begin
      sImage1.Picture.LoadFromFile(sOpenPictureDialog1.FileName);
    end;
end;

procedure TForm8.sBitBtn3Click(Sender: TObject);
begin
  if (sEdit2.Text = '') or (sEdit3.Text = '') or (sEdit4.Text = '') or (sMemo1.Text = '') then
    begin
      sLabel2.Caption := 'Masukan Semua Data!';
    end
  else begin
    simpandata;
    if sCheckBox3.Checked = true then
      begin
        sBitBtn6.Click;
      end
    else
      begin
        close;
      end;
  end;
  form5.sbitbtn1.Click;
end;

procedure TForm8.sBitBtn2Click(Sender: TObject);
begin
  try
    begin
      hapusfoto;
    end;
  except
    on Exception do
      begin
        sLabel2.Caption := 'Terjadi kesalahan!';
        Close;
      end;
  end;
end;

procedure TForm8.sBitBtn6Click(Sender: TObject);
begin
  sBitBtn7.Click;
  acak_kode(sComboBox2,sEdit1,slabel2);
  sComboBox2.Enabled := True;
  sBitBtn1.Enabled := True;
  sBitBtn2.Enabled := True;
  sBitBtn4.Enabled := False;
  sBitBtn5.Enabled := False;
  if sCheckBox3.Checked = false then sLabel2.Caption := '';
end;

procedure TForm8.sBitBtn7Click(Sender: TObject);
begin
  sEdit2.Clear;
  sEdit3.clear;
  sEdit4.Clear;
  sEdit5.Clear;
  smemo1.Clear;
  sComboBox1.ItemIndex := 0;
  sComboBox3.ItemIndex := 0;
  sComboBox4.ItemIndex := 0;
  sImage1.Picture := nil;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form3.sBitBtn2.Click;
end;

procedure TForm8.sBitBtn4Click(Sender: TObject);
begin
  try
    begin
      ambildata('DELETE FROM member WHERE kode_pengguna='+ QuotedStr(sedit1.Text));
      with dmod.qry_inputs do
        begin
          if not ( MessageDlg('Apakah anda yakin ingin menghapus Kode ' + sedit1.Text + ' ?', mtConfirmation, [mbOk, mbCancel], 0) = mrCancel ) then
            begin
              ExecSQL;
              sBitBtn7.Click;
              Close;
              slabel2.Caption := 'Kode ' + sedit1.Text + ' Berhasil Dihapus!';
            end;
        end;
    end
   except
     on E: Exception do
     begin
       ShowMessage('Kode ' + sedit1.Text + ' Gagal Dihapus!');
     end;
   end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin;

end;

procedure TForm8.sEdit5Change(Sender: TObject);
begin
  if (Length(sedit1.Text)=0) then sEdit1.Text := '-';
end;

end.





