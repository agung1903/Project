object Form5: TForm5
  Left = 179
  Top = 78
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Karyawan'
  ClientHeight = 588
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel3: TsLabel
    Left = 0
    Top = 0
    Width = 1076
    Height = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'DATA KARYAWAN'
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
    Width = 1076
    Height = 77
    Align = alTop
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    SkinData.CustomColor = True
    SkinData.SkinSection = 'GROUPBOX'
    object sPanel3: TsPanel
      Left = 16
      Top = 24
      Width = 329
      Height = 33
      BevelInner = bvLowered
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sRadioButton4: TsRadioButton
        Left = 8
        Top = 8
        Width = 37
        Height = 20
        Caption = 'PKL'
        TabOrder = 0
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton5: TsRadioButton
        Left = 56
        Top = 8
        Width = 58
        Height = 20
        Caption = 'Training'
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton6: TsRadioButton
        Left = 120
        Top = 8
        Width = 108
        Height = 20
        Caption = 'Karyawan Kontrak'
        TabOrder = 2
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton7: TsRadioButton
        Left = 264
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
      Left = 824
      Top = 15
      Width = 250
      Height = 60
      Align = alRight
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object sLabel1: TsLabel
        Left = 1
        Top = 1
        Width = 248
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
      object sBitBtn4: TsBitBtn
        Left = 8
        Top = 23
        Width = 113
        Height = 26
        Caption = 'Cetak'
        TabOrder = 0
        OnClick = sBitBtn4Click
        SkinData.SkinSection = 'BUTTON'
        Images = dmod.sAlphaImageList1
      end
      object sBitBtn1: TsBitBtn
        Left = 128
        Top = 23
        Width = 113
        Height = 25
        Caption = 'Segarkan'
        TabOrder = 1
        OnClick = sBitBtn1Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel2: TsPanel
      Left = 352
      Top = 24
      Width = 265
      Height = 33
      BevelInner = bvLowered
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
      object sImage1: TsImage
        Left = 232
        Top = 8
        Width = 25
        Height = 17
        Picture.Data = {07544269746D617000000000}
        Stretch = True
        ImageIndex = 0
        Images = dmod.sAlphaImageList1
        Reflected = True
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sEdit1: TsEdit
        Left = 40
        Top = 8
        Width = 185
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = sEdit1Change
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
    end
    object sPanel5: TsPanel
      Left = 624
      Top = 24
      Width = 185
      Height = 33
      BevelInner = bvLowered
      TabOrder = 3
      SkinData.SkinSection = 'PANEL'
      object sDateEdit1: TsDateEdit
        Left = 88
        Top = 8
        Width = 86
        Height = 21
        AutoSize = False
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnChange = sDateEdit1Change
        BoundLabel.Active = True
        BoundLabel.Caption = 'Awal Masuk'
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
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DefaultToday = True
      end
      object sCheckBox1: TsCheckBox
        Left = 8
        Top = 8
        Width = 20
        Height = 20
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
  end
  object sDBGrid1: TsDBGrid
    Left = 0
    Top = 97
    Width = 1076
    Height = 450
    Align = alClient
    Color = clMoneyGreen
    DataSource = dmod.ds_karyawan
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
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
    OnDblClick = sDBGrid1DblClick
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
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clFuchsia
        Expanded = False
        FieldName = 'fullname'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 176
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'pekerjaan'
        Title.Alignment = taCenter
        Title.Caption = 'Sekolah'
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'jabatan'
        Title.Alignment = taCenter
        Title.Caption = 'Jabatan'
        Width = 137
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'departement'
        Title.Alignment = taCenter
        Title.Caption = 'Departement'
        Width = 140
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'awal_masuk'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Mulai'
        Width = 118
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'akhir_masuk'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Akhir'
        Width = 116
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 115
        Visible = True
      end>
  end
  object sPanel4: TsPanel
    Left = 0
    Top = 547
    Width = 1076
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Color = clGradientActiveCaption
    TabOrder = 2
    SkinData.CustomColor = True
    SkinData.SkinSection = 'PANEL'
    object sBitBtn2: TsBitBtn
      Left = 912
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Tambah Karyawan Baru'
      TabOrder = 0
      OnClick = sBitBtn2Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
