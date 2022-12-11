unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sLabel, StdCtrls, jpeg, ExtCtrls, acImage, sGroupBox, sButton,
  sEdit, sSkinManager, sPanel;

type
  TForm1 = class(TForm)
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sButton1: TsButton;
    sSkinManager1: TsSkinManager;
    sPanel1: TsPanel;
    sLabelFX1: TsLabelFX;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sImage2: TsImage;
    sImage1: TsImage;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure sButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    Procedure bukacfg;
    procedure masukakun;
  public
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3,inifiles,TlHelp32, Unit11;

{$R *.dfm}

procedure TForm1.bukacfg;
var
  buka,buka2: Tinifile;
  nm,ta : string;
begin
  buka  :=  TINIFile.Create(ExtractFilePath(Application.EXEName)+'settingdb.ini');
  buka2  :=  TINIFile.Create(ExtractFilePath(Application.EXEName)+'settingapp.ini');
  nm  := 'PENGATURANDB';
  ta  := 'TAMPILAN';
  try
    simage1.Picture.LoadFromFile(ExtractFilePath(Application.EXEName)+'\files\logo.jpg');
    simage2.Picture.LoadFromFile(ExtractFilePath(Application.EXEName)+'\files\barcode.jpg');
    slabelfx1.Caption := buka2.ReadString(ta,'Nama','PT.');
    slabel1.Caption   := buka2.ReadString(ta,'Alamat','Jalan Raya Bogor');
    spanel1.Color     := StringToColor(buka2.ReadString(ta,'WarnaX','clBlack'));
    with dmod.koneksi do
      begin
        Hostname  := buka.ReadString(nm,'Server','');
        Port      := strtoint(buka.ReadString(nm,'Port','0'));
        Database  := buka.ReadString(nm,'Database','');
        User      := buka.ReadString(nm,'Username','');
        Password  := buka.ReadString(nm,'Password','');
        Connected := True;
      end;
  finally
    FreeAndNil(buka);
    FreeandNil(buka2);
  end;
end;

function cek_aplikasi(const ExeName: String): Integer;
var
  Lanjutcari: BOOL;
  tembak: THandle;
  proses: TProcessEntry32;
begin
  tembak:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  proses.dwSize:= SizeOf(proses);
  Lanjutcari:= Process32First(tembak, proses);
  Result:= 0;
  while Integer(Lanjutcari) <> 0 do
    begin
      if ((UpperCase(ExtractFileName(proses.szExeFile)) =
        UpperCase(ExeName)) or (UpperCase(proses.szExeFile) =
        UpperCase(ExeName)))
      then Inc(Result);
        Lanjutcari:= Process32Next(tembak, proses);
    end;
  CloseHandle(tembak);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if (cek_aplikasi(ExtractFileName(Application.ExeName)) > 1) then
    begin
      Application.Terminate;
    end;
  try
    bukacfg;
    Form11.sButton5.Click;
  except
    On Exception do Close;
  end;
end;

procedure ambildata(qry:string);
begin
  with dmod.qry_bebas do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure TForm1.masukakun;
begin
  if (sEdit1.Text='') or (sEdit2.Text = '') then
    begin
      slabel2.caption := 'Masukan username atau password!';
    end
  else
    begin
      try
        begin
          ambildata('SELECT * FROM account WHERE username=' + QuotedStr(sedit1.Text) + ' AND password=' + QuotedStr(sedit2.Text));
          with dmod.qry_bebas do
            begin
              Open;
              if RecordCount = 0 then
                begin
                  sLabel2.Caption := 'Username atau Password Salah!';
                end
              else
                begin
                  slabel2.Caption := '';
                  Form1.Hide;
                  form3.awalkebangkitan;
                end;
            end;
        end
      except
        sLabel2.Caption := 'Periksa Jaringan!';
      end
    end;
end;

procedure TForm1.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    begin
      Key := #0;
      sEdit2.SetFocus;
    end;
end;

procedure TForm1.sEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    begin
      Key := #0;
      sButton1.SetFocus;
    end;
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
  masukakun;
end;

end.





