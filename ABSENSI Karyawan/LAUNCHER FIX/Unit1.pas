unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sButton, ExtCtrls, acImage, jpeg,shellapi,TlHelp32,
  sMemo, sEdit, sPanel;

type
  TForm1 = class(TForm)
    sLabel1: TsLabel;
    sImage1: TsImage;
    sMemo1: TsMemo;
    sEdit1: TsEdit;
    sPanel1: TsPanel;
    sButton2: TsButton;
    sButton1: TsButton;
    sButton3: TsButton;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure ListFileDir(Path: string; logs:TsLabel);
var
  SR: TSearchRec;
begin
  if FindFirst(Path + '*.*', faAnyFile, SR) = 0 then
  begin
    repeat
      if (SR.Attr <> faDirectory) then
      begin
        logs.Caption := SR.Name;
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    ForceDirectories(ExtractFilePath(application.ExeName)+'\files');
    CopyFile(PChar('\\'+ sedit1.Text+'\files\UPDATER.txt'),PChar(ExtractFilePath(Application.EXEName)+'\files\UPDATER.txt'), False);
    CopyFile(PChar('\\'+ sedit1.Text+'\PENGATURAN.exe'),PChar(ExtractFilePath(Application.EXEName)+'\PENGATURAN.exe'), False);
    CopyFile(PChar('\\'+ sedit1.Text+'\banner.jpg'),PChar(ExtractFilePath(Application.EXEName)+'\banner.jpg'), False);
    smemo1.Lines.LoadFromFile(ExtractFilePath(application.ExeName)+'\files\UPDATER.txt');
    simage1.Picture.LoadFromFile(ExtractFilePath(Application.EXEName)+'\banner.jpg');
  except
    On Exception do
      slabel3.Caption := 'PERIKSA JARINGAN!';
  end;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
  try
    begin
      if not (ExtractFilePath(application.ExeName) + '\' + smemo1.Lines.Strings[0] = '') then
        begin
          ListFileDir(ExtractFilePath(application.ExeName), slabel2);
          sbutton1.Click;
          slabel3.Caption := 'Membuka Program';
          ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.EXEName)+'\'+smemo1.Lines.Strings[0] ),nil,nil,SW_SHOW);
          sleep(200);
          Application.Terminate;
        end;
    end;
  except
    on Exception do
      begin
        sLabel3.Caption := 'Gagal Membuka ' + smemo1.Lines.Strings[0];;
      end;
  end;
end;

procedure TForm1.sButton1Click(Sender: TObject);
var
  updt:string;
  i : integer;
begin
  try
    begin
      if not(smemo1.Lines.Count < 0) then
        begin
          for i := 0 to smemo1.Lines.Count do
            begin
              slabel2.Caption := 'Ekstrak' + '\..\.'+smemo1.Lines.ValueFromIndex[i] + '   (' +inttostr(i) + ')';
              updt:= smemo1.Lines[i];
              CopyFile(PChar('\\'+ sedit1.Text+'\'+updt),PChar(ExtractFilePath(Application.ExeName)+'\'+updt),false);
            end;
          slabel3.Caption := 'Selesai Update!';
        end
      else
        begin
          sLabel3.Caption := 'Tidak ada file!';
        end;
    end
  except
    on E :Exception do
    begin
      Exit;
    end;
  end;
end;

procedure TForm1.sButton3Click(Sender: TObject);
begin
  try
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.EXEName)+'\'+smemo1.Lines.Strings[1] ),nil,nil,SW_SHOW);
  except
    sLabel3.Caption := 'Gagal Membuka SETTING DB';
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if cek_aplikasi(ExtractFileName(Application.ExeName)) > 1 then
    begin
      MessageDlg('Aplikasi sudah berjalan!', mtError, [mbOK], 0);
      Application.Terminate;
    end;
end;

end.
