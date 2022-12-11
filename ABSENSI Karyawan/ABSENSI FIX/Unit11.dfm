object Form11: TForm11
  Left = 150
  Top = 22
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Pengaturan'
  ClientHeight = 597
  ClientWidth = 1092
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel3: TsLabel
    Left = 0
    Top = 0
    Width = 1092
    Height = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pengaturan'
    Color = clLime
    ParentColor = False
    ParentFont = False
    Transparent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    UseSkinColor = False
  end
  object sGroupBox1: TsGroupBox
    Left = 640
    Top = 24
    Width = 233
    Height = 225
    Caption = 'Absensi '
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel1: TsLabel
      Left = 8
      Top = 104
      Width = 127
      Height = 13
      Caption = 'Pilih Warna Latar Belakang'
    end
    object sCheckBox1: TsCheckBox
      Left = 8
      Top = 24
      Width = 132
      Height = 20
      Caption = 'Masuk Lewat Jam Kerja'
      TabOrder = 0
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox2: TsCheckBox
      Left = 8
      Top = 48
      Width = 172
      Height = 20
      Caption = 'Hari Sabtu diperbolehkan absen'
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sCheckBox3: TsCheckBox
      Left = 8
      Top = 72
      Width = 147
      Height = 20
      Caption = 'Tidak diperbolehkan absen'
      TabOrder = 2
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object sButton1: TsButton
      Left = 8
      Top = 192
      Width = 217
      Height = 25
      Caption = 'Pilih Warna'
      TabOrder = 3
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sPanel1: TsPanel
      Left = 8
      Top = 120
      Width = 217
      Height = 65
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      Color = clBackground
      TabOrder = 4
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL_LOW'
    end
  end
  object sGroupBox4: TsGroupBox
    Left = 8
    Top = 24
    Width = 617
    Height = 225
    Caption = 'Info Masuk'
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    object sMemo1: TsMemo
      Left = 16
      Top = 16
      Width = 585
      Height = 193
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      BoundLabel.Caption = 'sMemo1'
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
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 549
    Width = 1092
    Height = 48
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clGradientActiveCaption
    TabOrder = 2
    SkinData.CustomColor = True
    SkinData.SkinSection = 'PANEL_LOW'
    object sLabel4: TsLabel
      Left = 11
      Top = 10
      Width = 558
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '-'
      Color = clBackground
      ParentColor = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      UseSkinColor = False
    end
    object sPanel4: TsPanel
      Left = 576
      Top = 2
      Width = 514
      Height = 44
      Align = alRight
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sButton6: TsButton
        Left = 120
        Top = 8
        Width = 89
        Height = 25
        Caption = 'Terapkan'
        TabOrder = 0
        OnClick = sButton6Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sButton7: TsButton
        Left = 416
        Top = 8
        Width = 91
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = sButton7Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sButton5: TsButton
        Left = 16
        Top = 8
        Width = 89
        Height = 25
        Caption = 'Ambil Konfig'
        TabOrder = 2
        OnClick = sButton5Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sEdit6: TsEdit
        Left = 289
        Top = 7
        Width = 121
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = 'Password'
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
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 8
    Top = 264
    Width = 241
    Height = 201
    Caption = 'Gaji'
    TabOrder = 3
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel2: TsLabel
      Left = 16
      Top = 96
      Width = 169
      Height = 13
      Caption = '* Data yang dimasukan gaji perhari'
    end
    object sEdit1: TsEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnKeyPress = sEdit1KeyPress
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'PKL'
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
    object sEdit2: TsEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnKeyPress = sEdit2KeyPress
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Training'
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
    object sEdit3: TsEdit
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
      OnKeyPress = sEdit3KeyPress
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Karyawan Kontrak'
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
  end
  object sGroupBox3: TsGroupBox
    Left = 256
    Top = 264
    Width = 585
    Height = 201
    Caption = 'Tampilan'
    TabOrder = 4
    SkinData.SkinSection = 'GROUPBOX'
    object sImage1: TsImage
      Left = 128
      Top = 88
      Width = 97
      Height = 65
      Center = True
      Picture.Data = {07544269746D617000000000}
      Stretch = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sLabel5: TsLabel
      Left = 88
      Top = 88
      Width = 23
      Height = 13
      Caption = 'Logo'
    end
    object sImage2: TsImage
      Left = 240
      Top = 88
      Width = 97
      Height = 65
      Picture.Data = {07544269746D617000000000}
      Stretch = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sLabel6: TsLabel
      Left = 352
      Top = 24
      Width = 109
      Height = 13
      Caption = 'Pilih Warna Latar Judul'
    end
    object sEdit4: TsEdit
      Left = 128
      Top = 24
      Width = 209
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Nama perusahaan'
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
    object sEdit5: TsEdit
      Left = 128
      Top = 56
      Width = 209
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Alamat Perusahaan'
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
    object sButton2: TsButton
      Left = 128
      Top = 160
      Width = 97
      Height = 33
      Caption = 'Ambil Logo Perusahaan'
      TabOrder = 2
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton3: TsButton
      Left = 240
      Top = 160
      Width = 97
      Height = 33
      Caption = 'Ambil Logo Barcode'
      TabOrder = 3
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sPanel2: TsPanel
      Left = 352
      Top = 40
      Width = 217
      Height = 113
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      Color = clBackground
      TabOrder = 4
      SkinData.CustomColor = True
      SkinData.SkinSection = 'PANEL_LOW'
    end
    object sButton4: TsButton
      Left = 352
      Top = 160
      Width = 217
      Height = 25
      Caption = 'Pilih Warna'
      TabOrder = 5
      OnClick = sButton4Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sColorDialog1: TsColorDialog
    Color = clYellow
    CustomColors.Strings = (
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF'
      'FFFFFF')
    Left = 936
    Top = 200
  end
  object sOpenPictureDialog1: TsOpenPictureDialog
    Left = 904
    Top = 144
  end
end
