unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sEdit, sGroupBox, sLabel, ExtCtrls, inifiles,winsock,
  IdComponent;

type
  TForm1 = class(TForm)
    sGroupBox1: TsGroupBox;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sButton1: TsButton;
    shp1: TShape;
    sLabel1: TsLabel;
    sButton2: TsButton;
    sLabel2: TsLabel;
    sGroupBox2: TsGroupBox;
    sLabel3: TsLabel;
    sEdit9: TsEdit;
    sButton3: TsButton;
    procedure sEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit5Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    procedure bukacfg;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bukacfg;
var
  buka : Tinifile;
  nm : string;
begin
  buka :=  TINIFile.Create(ExtractFilePath(Application.EXEName)+'settingdb.ini');
  try
    nm := 'PENGATURANDB';
    sEdit3.Text := buka.ReadString(nm,'Username','');
    sEdit4.Text := buka.ReadString(nm,'Password','');
    sEdit2.Text := buka.ReadString(nm,'Server','');
    sEdit1.Text := buka.ReadString(nm,'Database','');
    sEdit5.Text := buka.ReadString(nm,'Port','0');
  finally
    FreeAndNil(buka);
  end;
end;

function cekport(scekPort : Word; scekIp:string) : boolean;
var
  client : sockaddr_in;
  sock   : Integer;
begin
  client.sin_family      := AF_INET;
  client.sin_port        := htons(scekport);
  client.sin_addr.s_addr := inet_addr(PChar(scekIp));
  sock  :=socket(AF_INET, SOCK_STREAM, 0);
  Result:=connect(sock,client,SizeOf(client))=0;
end;

procedure TForm1.sEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8,#13,#32]) then
    begin
      key:=#0;
    end;
end;

procedure TForm1.sEdit5Change(Sender: TObject);
begin
  if sedit5.Text = '' then sedit5.Text := '0'
end;

procedure TForm1.sButton1Click(Sender: TObject);
var
  Simpan       : TIniFile;
  nm : string;
begin
  Simpan := TINIFile.Create(ExtractFilePath(Application.EXEName)+ 'settingdb.ini');
  try
    nm := 'PENGATURANDB';
    simpan.WriteString(nm,'Username',sedit3.Text);
    simpan.WriteString(nm,'Password',sedit4.Text);
    simpan.WriteString(nm,'Server',sedit2.Text);
    simpan.WriteString(nm,'Database',sedit1.Text);
    simpan.WriteString(nm,'Port',sedit5.Text);
    sLabel2.Caption := 'Berhasil disimpan!';
  finally
    FreeAndNil(simpan);
    application.Terminate;
  end;
end;

procedure TForm1.sButton2Click(Sender: TObject);
var
  ret    : Integer;
  wsdata : WSAData;
begin
  ret := WSAStartup($0002, wsdata);
  if ret<>0 then exit;
  try
    if cekport(strtoint(sedit5.Text),sEdit2.Text) then
      begin
      sLabel1.Caption := 'MySQL Open';
      shp1.Brush.Color := clGreen;
      end
    else begin
      sLabel1.Caption := 'MySQL Offline';
      shp1.Brush.Color := clRed;
    end;
  finally
    WSACleanup;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  bukacfg;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  sbutton2.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sgroupbox1.Visible := false;
  sgroupbox2.Visible := true;
  sbutton1.Enabled := false;
end;

procedure TForm1.sButton3Click(Sender: TObject);
var
  buka : Tinifile;
  ops:string;
begin
  buka :=  TINIFile.Create(ExtractFilePath(Application.EXEName)+'settingapp.ini');
  try
    ops := buka.ReadString('Konfig','Password','');
    if (sedit9.Text = ops) and not(ops='') then
      begin
        sgroupbox1.Visible := true;
        sgroupbox2.Visible := false;
        sbutton1.Enabled := true;
      end;
    sedit9.Clear;
  finally
    Freeandnil(buka);
  end;
end;

procedure TForm1.sEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    begin
      Key := #0;
      sButton3.SetFocus;
    end;
end;

procedure TForm1.sEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    begin
      Key := #0;
      sedit5.SetFocus;
    end;
end;

end.
