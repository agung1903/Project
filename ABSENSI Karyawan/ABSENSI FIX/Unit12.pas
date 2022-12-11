unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, jpeg, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, pDBBarcode2D, pCore2D, pBarcode2D, pQRCode;

type
  TForm12 = class(TForm)
    ZQuery1: TZQuery;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrdbtxtkode_pengguna: TQRDBText;
    qrdbtxtkode_pengguna2: TQRDBText;
    qrdbtxtkode_pengguna3: TQRDBText;
    qrdbtxtkode_pengguna4: TQRDBText;
    qrdbtxtkode_pengguna5: TQRDBText;
    qrdbtxtkode_pengguna6: TQRDBText;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    ChildBand1: TQRChildBand;
    ds1: TDataSource;
    TitleBand1: TQRBand;
    qrlbl4: TQRLabel;
    QRImage3: TQRImage;
    qrlbl10: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    qrlbl19: TQRLabel;
    QRImage6: TQRImage;
    qrlbl20: TQRLabel;
    ChildBand2: TQRChildBand;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl16: TQRLabel;
    qrdbtxtjml_masuk2: TQRDBText;
    qrdbtxtjml_masuk3: TQRDBText;
    ZQuery2: TZQuery;
    DetailBand2: TQRBand;
    qrdbtxtkode_pengguna9: TQRDBText;
    qrdbtxtfullname3: TQRDBText;
    qrdbtxtjabatan1: TQRDBText;
    qrdbtxtjml_masuk5: TQRDBText;
    qrdbtxtjml_izin1: TQRDBText;
    qrdbtxtjml_terlambat2: TQRDBText;
    qrdbtxtgaji1: TQRDBText;
    PageFooterBand1: TQRBand;
    ChildBand3: TQRChildBand;
    SummaryBand1: TQRBand;
    qrlbl18: TQRLabel;
    qrlbl21: TQRLabel;
    qrlbl22: TQRLabel;
    qrlbl23: TQRLabel;
    qrlbl24: TQRLabel;
    qrlbl25: TQRLabel;
    QRImage2: TQRImage;
    DBBarcode2D1: TDBBarcode2D;
    Barcode2D_QRCode1: TBarcode2D_QRCode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZQuery1AfterOpen(DataSet: TDataSet);
    procedure ZQuery2AfterOpen(DataSet: TDataSet);
    procedure QuickRep1StartPage(Sender: TCustomQuickRep);
    procedure QuickRep2StartPage(Sender: TCustomQuickRep);
  private
    procedure jml(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure GetCurr(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure amtek(Sender: TField; var Text: String; DisplayText: Boolean);
  public
    
  end;

var
  Form12: TForm12;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm12.amtek(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
       if not ( text = '' ) then Text := FormatDateTime('dd-mm-yyyy',strtodate(text));
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure TForm12.GetCurr(Sender: TField; var Text: String; DisplayText: Boolean);
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

procedure TForm12.jml(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  try
    Text := sender.AsString;
    if displayText then
    begin
        if not (text = '') then Text := Text + ' Hari'
    end;
  except
    on e: Exception do
      Text := e.message;
  end;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  quickrep1.Destroy;
  quickrep2.Destroy;
end;

procedure TForm12.ZQuery1AfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('akhir_masuk').OnGetText := amtek;
end;

procedure TForm12.ZQuery2AfterOpen(DataSet: TDataSet);
begin
  DataSet.FieldByName('jml_masuk').OnGetText := jml;
  DataSet.FieldByName('jml_izin').OnGetText := jml;
  DataSet.FieldByName('jml_terlambat').OnGetText := jml;
  DataSet.FieldByName('gaji').OnGetText := GetCurr;
end;

procedure TForm12.QuickRep1StartPage(Sender: TCustomQuickRep);
begin
  qrlbl1.Caption := form1.sLabelFX1.Caption;
  qrlbl10.Caption := form1.sLabel1.Caption;
  qrlbl4.Caption := 'Data Karyawan ' + form1.sLabelFX1.Caption;
  qrimage3.Picture.Assign(form1.simage1.picture);
  qrimage1.Picture.Assign(form1.simage1.picture);
end;

procedure TForm12.QuickRep2StartPage(Sender: TCustomQuickRep);
begin
  qrlbl20.Caption := form1.sLabel1.Caption;
  qrlbl19.Caption := 'Data Gaji ' + form1.sLabelFX1.Caption;
  qrimage6.Picture.Assign(form1.simage1.picture);
end;

end.





