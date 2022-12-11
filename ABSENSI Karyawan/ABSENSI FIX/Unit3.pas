unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, acImage, sPanel, StdCtrls, sLabel, ComCtrls,
  sStatusBar, Buttons, sBitBtn, CategoryButtons, 
  sMonthCalendar, acShellCtrls, sSkinProvider ;

type
  TForm3 = class(TForm)
    sStatusBar1: TsStatusBar;
    sPanel2: TsPanel;
    sMonthCalendar1: TsMonthCalendar;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sPanel3: TsPanel;
    sLabel3: TsLabel;
    shp2: TShape;
    sLabel4: TsLabel;
    shp3: TShape;
    sLabel2: TsLabel;
    shp1: TShape;
    sBitBtn5: TsBitBtn;
    sPanel1: TsPanel;
    sImage1: TsImage;
    sLabelFX1: TsLabelFX;
    sLabel1: TsLabel;
    ScrollBox: TScrollBox;
    sSkinProvider1: TsSkinProvider;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    
  public
    procedure awalkebangkitan;
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit11, Unit10;

{$R *.dfm}

procedure TForm3.awalkebangkitan;
var
  ceks: bool;
begin
  with dmod.qry_bebas do
    begin
      sStatusBar1.Panels[1].Text := FieldByName('username').asstring;
      form11.sButton6.Click;
      if not (FieldByName('status').AsString = 'Admin') then
        begin
          ceks := false;
          form3.Hide;
          form10.Show;
          form4.Close;
        end
      else
        begin
          ceks := true;
          show;
          sBitBtn1.Click;
        end;
      sBitBtn2.Enabled := ceks;
      sBitBtn3.Enabled := ceks;
      sBitBtn4.Enabled := ceks;
      sbitbtn5.Enabled := ceks;
      form4.spanel7.visible := ceks;
      Form3.WindowState := wsMaximized;
    end;
end;

procedure TForm3.sBitBtn1Click(Sender: TObject);
begin
  form4.Parent := ScrollBox;
  form4.Show;
end;

procedure TForm3.sBitBtn2Click(Sender: TObject);
begin
  form5.Parent := ScrollBox;
  form5.Show;
end;

procedure TForm3.sBitBtn3Click(Sender: TObject);
begin
  form6.Parent := ScrollBox;
  form6.Show;
end;

procedure TForm3.sBitBtn4Click(Sender: TObject);
begin
  form7.Parent := ScrollBox;
  form7.Show;
end;

procedure TForm3.sBitBtn5Click(Sender: TObject);
begin
  form11.Parent := ScrollBox;
  form11.Show;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Apakah anda yakin?', mtConfirmation, [mbOk, mbCancel], 0) = mrCancel then
    begin
      CanClose := false;
    end
  else
    begin
      Form8.Close;
      form10.Close;
      Form1.sEdit2.Clear;
      Form1.Show;
      CanClose := True;
    end;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  spanel1.Color := form1.sPanel1.Color;
  simage1.Picture.Assign(form1.sImage1.Picture);
  slabelfx1.Caption := form1.sLabelFX1.Caption;
  slabel1.Caption := 'Absensi QR Code V. '+  form1.sLabel4.Caption;
end;

end.
 
 
 
 
 
