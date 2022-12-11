unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sRadioButton, ExtCtrls, sPanel, Buttons, sBitBtn,
  sGroupBox, sLabel, Grids, DBGrids, acDBGrid, sEdit, jpeg,
  QuickRpt,db, Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  sCheckBox, acImage;

type
  TForm5 = class(TForm)
    sGroupBox1: TsGroupBox;
    sPanel3: TsPanel;
    sRadioButton4: TsRadioButton;
    sRadioButton5: TsRadioButton;
    sRadioButton6: TsRadioButton;
    sRadioButton7: TsRadioButton;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sDBGrid1: TsDBGrid;
    sBitBtn4: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sLabel3: TsLabel;
    sPanel2: TsPanel;
    sEdit1: TsEdit;
    sPanel4: TsPanel;
    sBitBtn2: TsBitBtn;
    sPanel5: TsPanel;
    sDateEdit1: TsDateEdit;
    sCheckBox1: TsCheckBox;
    sImage1: TsImage;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sDateEdit1Change(Sender: TObject);
  private
  public
    procedure pencariandata;
  end;

var
  Form5: TForm5;

implementation

uses Unit2, Unit1, Unit3, Unit8, Unit12;

{$R *.dfm}

procedure ambildata(qry:string);
begin
  with dmod.qry_karyawan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure TForm5.pencariandata;
var
  jabatan,nama,ams:string;
begin
  if (Length(sEdit1.Text)>0) then nama := ' WHERE fullname LIKE ' + QuotedStr('%' + sEdit1.Text + '%');
  if sRadioButton4.Checked = true then jabatan:= 'jabatan LIKE '+ QuotedStr('PKL');
  if sRadioButton5.Checked = true then jabatan:= 'jabatan LIKE '+ QuotedStr('Training');
  if sRadioButton6.Checked = true then jabatan:= 'jabatan LIKE '+ QuotedStr('Karyawan Kontrak');
  if (sCheckBox1.Checked = true) and not (sradiobutton7.Checked = true) then ams := 'awal_masuk=' + QuotedStr(FormatDateTime('yyyy-mm-dd',sDateEdit1.Date)) + ' AND ';
  if (sCheckBox1.Checked = true) and (sradiobutton7.Checked = true) then ams := 'awal_masuk=' + QuotedStr(FormatDateTime('yyyy-mm-dd',sDateEdit1.Date));
  ambildata('SELECT * FROM member' + nama);
  with dmod.qry_karyawan do
    begin
      Open;
      Filter := ams + jabatan;
      Filtered := true;
    end;
  with Form12.ZQuery1 do
    begin
      Close;
      Sql.Clear;
      SQL.Text := 'SELECT * FROM member' + nama;
      Open;
      Filter := ams + jabatan;
      Filtered := true;
    end;
end;

procedure TForm5.sBitBtn1Click(Sender: TObject);
begin
  pencariandata;
end;

procedure TForm5.sBitBtn2Click(Sender: TObject);
begin
  Form8.show;
  Form8.sBitBtn6.Click;
end;

procedure TForm5.sDBGrid1DblClick(Sender: TObject);
begin
  Form8.sEdit1.Text := sDBGrid1.Fields[0].AsString;
  Form8.sBitBtn5.Enabled := True;
  Form8.show;
  Form8.sBitBtn5.Click;
end;

procedure TForm5.sEdit1Change(Sender: TObject);
begin
  sBitBtn1.Click;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  pencariandata;
  sDBGrid1.Columns[1].Color := form3.shp3.brush.Color;
  sDBGrid1.Columns[0].Color := form3.shp2.brush.Color;
end;

procedure TForm5.sBitBtn4Click(Sender: TObject);
begin
  Form12.QuickRep1.Preview;
end;

procedure TForm5.sDateEdit1Change(Sender: TObject);
begin
  sCheckBox1.Checked := true;
end;

end.




