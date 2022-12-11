object Form6: TForm6
  Left = 467
  Top = 147
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Gaji'
  ClientHeight = 397
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel4: TsLabel
    Left = 0
    Top = 0
    Width = 929
    Height = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'DATA GAJI'
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
    Left = 0
    Top = 20
    Width = 929
    Height = 73
    Align = alTop
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    SkinData.CustomColor = True
    SkinData.SkinSection = 'GROUPBOX'
    object sPanel2: TsPanel
      Left = 16
      Top = 24
      Width = 353
      Height = 33
      BevelInner = bvLowered
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sRadioButton1: TsRadioButton
        Left = 8
        Top = 8
        Width = 37
        Height = 20
        Caption = 'PKL'
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton2: TsRadioButton
        Left = 56
        Top = 8
        Width = 58
        Height = 20
        Caption = 'Training'
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton3: TsRadioButton
        Left = 120
        Top = 8
        Width = 108
        Height = 20
        Caption = 'Karyawan Kontrak'
        TabOrder = 2
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton4: TsRadioButton
        Left = 288
        Top = 8
        Width = 52
        Height = 20
        Caption = 'Semua'
        Checked = True
        TabOrder = 3
        TabStop = True
        SkinData.SkinSection = 'CHECKBOX'
      end
    end
    object sPanel1: TsPanel
      Left = 705
      Top = 15
      Width = 222
      Height = 56
      Align = alRight
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object sLabel1: TsLabel
        Left = 1
        Top = 1
        Width = 220
        Height = 16
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pilihan'
        Color = clBackground
        ParentColor = False
        ParentFont = False
        Transparent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        UseSkinColor = False
      end
      object sBitBtn1: TsBitBtn
        Left = 120
        Top = 23
        Width = 97
        Height = 26
        Caption = 'Segarkan'
        TabOrder = 0
        OnClick = sBitBtn1Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sBitBtn2: TsBitBtn
        Left = 8
        Top = 24
        Width = 105
        Height = 25
        Caption = 'Cetak'
        TabOrder = 1
        OnClick = sBitBtn2Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel4: TsPanel
      Left = 384
      Top = 24
      Width = 265
      Height = 33
      BevelInner = bvLowered
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
      object sComboBox1: TsComboBox
        Left = 48
        Top = 8
        Width = 89
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Bulan'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Style = csDropDownList
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 0
      end
      object sComboBox2: TsComboBox
        Left = 184
        Top = 8
        Width = 65
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Tahun'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Style = csDropDownList
        ItemHeight = 15
        ItemIndex = -1
        TabOrder = 1
      end
    end
  end
  object sDBGrid1: TsDBGrid
    Left = 233
    Top = 93
    Width = 696
    Height = 304
    Align = alClient
    Color = clMoneyGreen
    DataSource = dmod.ds_gaji
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = sDBGrid1CellClick
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'EDIT'
    Columns = <
      item
        Alignment = taCenter
        Color = clOlive
        Expanded = False
        FieldName = 'kode_pengguna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Kode Pengguna'
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clFuchsia
        Expanded = False
        FieldName = 'fullname'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 237
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'jabatan'
        Title.Alignment = taCenter
        Title.Caption = 'Jabatan'
        Width = 128
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'jml_masuk'
        Title.Alignment = taCenter
        Title.Caption = 'Masuk'
        Width = 151
        Visible = True
      end
      item
        Alignment = taRightJustify
        Color = clWhite
        Expanded = False
        FieldName = 'gaji'
        Title.Alignment = taCenter
        Title.Caption = 'Gaji'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'awal_masuk'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'jml_izin'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'jml_terlambat'
        Width = -1
        Visible = False
      end>
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 93
    Width = 233
    Height = 304
    Align = alLeft
    BorderStyle = bsSingle
    Color = clMoneyGreen
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sLabel2: TsLabel
      Left = 1
      Top = 1
      Width = 227
      Height = 16
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Info Gaji Bulan'
      Color = clBackground
      ParentColor = False
      ParentFont = False
      Transparent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      UseSkinColor = False
    end
    object sLabel3: TsLabel
      Left = 48
      Top = 232
      Width = 84
      Height = 13
      Caption = 'Jumlah Karyawan'
    end
    object sLabel5: TsLabel
      Left = 208
      Top = 232
      Width = 4
      Height = 13
      Alignment = taRightJustify
      Caption = '-'
    end
    object sLabel6: TsLabel
      Left = 48
      Top = 248
      Width = 45
      Height = 13
      Caption = 'Total Gaji'
    end
    object sLabel7: TsLabel
      Left = 208
      Top = 248
      Width = 4
      Height = 13
      Alignment = taRightJustify
      Caption = '-'
    end
    object sGroupBox2: TsGroupBox
      Left = 8
      Top = 128
      Width = 209
      Height = 97
      Caption = 'Data Kehadiran'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sEdit2: TsEdit
        Left = 88
        Top = 16
        Width = 105
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
        BoundLabel.Caption = 'Masuk'
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
        Left = 88
        Top = 40
        Width = 105
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
        BoundLabel.Caption = 'Izin'
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
      object sEdit4: TsEdit
        Left = 88
        Top = 64
        Width = 105
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = 'Terlambat'
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
    object sGroupBox4: TsGroupBox
      Left = 8
      Top = 24
      Width = 209
      Height = 105
      Caption = 'Info Pengguna'
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object sEdit6: TsEdit
        Left = 88
        Top = 48
        Width = 105
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
        BoundLabel.Caption = 'Nama'
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
      object sEdit1: TsEdit
        Left = 88
        Top = 20
        Width = 105
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
        BoundLabel.Caption = 'Kode Pengguna'
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
      object sEdit9: TsEdit
        Left = 88
        Top = 72
        Width = 105
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = 'Gaji'
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
end
