object Form1: TForm1
  Left = 336
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'LAUNCHER ABSENSI'
  ClientHeight = 317
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 8
    Top = 8
    Width = 138
    Height = 13
    Caption = 'CREATED BY AHMAD AGUNG'
  end
  object sImage1: TsImage
    Left = 8
    Top = 32
    Width = 449
    Height = 201
    Picture.Data = {07544269746D617000000000}
    Stretch = True
    SkinData.SkinSection = 'CHECKBOX'
  end
  object sMemo1: TsMemo
    Left = 560
    Top = 72
    Width = 185
    Height = 89
    TabOrder = 0
    Visible = False
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
  end
  object sEdit1: TsEdit
    Left = 232
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 1
    Text = '192.168.43.239\TGIUpdater'
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Alamat Server'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object sPanel1: TsPanel
    Left = 8
    Top = 240
    Width = 449
    Height = 65
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sLabel2: TsLabel
      Left = 1
      Top = 1
      Width = 447
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Ekstrak : -'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabel3: TsLabel
      Left = 8
      Top = 24
      Width = 4
      Height = 13
      Caption = '-'
    end
    object sButton2: TsButton
      Left = 368
      Top = 24
      Width = 73
      Height = 33
      Caption = 'START'
      TabOrder = 0
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton1: TsButton
      Left = 288
      Top = 24
      Width = 73
      Height = 33
      Caption = 'UPDATE'
      TabOrder = 1
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton3: TsButton
      Left = 208
      Top = 24
      Width = 73
      Height = 33
      Caption = 'SETTING DB'
      TabOrder = 2
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
