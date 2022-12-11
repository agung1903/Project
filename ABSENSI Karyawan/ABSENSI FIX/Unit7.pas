unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sRadioButton, ExtCtrls, sPanel, Buttons,
  sBitBtn, sGroupBox, Grids, DBGrids, acDBGrid, sEdit, sComboBox;

type
  TForm7 = class(TForm)
    sGroupBox1: TsGroupBox;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sBitBtn4: TsBitBtn;
    sPanel2: TsPanel;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sLabel3: TsLabel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sBitBtn1: TsBitBtn;
    sPanel5: TsPanel;
    sEdit1: TsEdit;
    sComboBox4: TsComboBox;
    sComboBox1: TsComboBox;
    sDBGrid1: TsDBGrid;
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1CellClick(Column: TColumn);
    procedure sBitBtn1Click(Sender: TObject);
  private
    
  public
    procedure pencariandata;
    
  end;

var
  Form7: TForm7;

implementation

uses Unit2, Unit1, Unit3;

{$R *.dfm}

procedure ambildata(qry:String);
begin
  with dmod.qry_gantishift do
    begin
      Close;
      SQL.Clear;
      SQL.Text := qry;
    end;
end;

procedure cekkd(bok:TsComboBox;tek:TsEdit);
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

procedure TForm7.pencariandata;
var
  sf:string;
begin
  if sRadioButton1.Checked = True then sf := '07.30-16.30';
  if sRadioButton2.Checked = True then sf := '16.00-22.00';
  ambildata('SELECT * FROM member');
  with dmod.qry_gantishift do
    begin
      Open;
      Filter := 'jabatan = '+ quotedstr('Karyawan Kontrak') +' AND jam_kerja = ' + quotedstr(sf);
      Filtered := true;
    end;
  dmod.ambilkd(scombobox4);
end;

procedure TForm7.sBitBtn4Click(Sender: TObject);
begin
  pencariandata;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  pencariandata;
  sDBGrid1.Columns[1].Color := form3.shp3.brush.Color;
  sDBGrid1.Columns[0].Color := form3.shp2.brush.Color;
end;

procedure TForm7.sDBGrid1CellClick(Column: TColumn);
begin
  sComboBox4.Text := sDBGrid1.Fields[0].Text;
  cekkd(sComboBox4,sEdit1);
  sComboBox1.Text := sDBGrid1.Fields[4].Text;
end;

procedure TForm7.sBitBtn1Click(Sender: TObject);
begin
  with dmod.qry_inputdata3 do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE member SET jam_kerja=:jam_kerjae WHERE kode_pengguna=:kdpgn';
      ParamByName('kdpgn').AsString := sComboBox4.Text;
      ParamByName('jam_kerjae').AsString := sComboBox1.Text;
      ExecSQL;
    end;
  sBitBtn4.Click;
  ShowMessage('Data berhasil Disimpan!');
end;

end.





