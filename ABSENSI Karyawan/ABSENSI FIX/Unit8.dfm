object Form8: TForm8
  Left = 394
  Top = 68
  ActiveControl = sDateEdit3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Karyawan'
  ClientHeight = 509
  ClientWidth = 666
  Color = clMoneyGreen
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 8
    Top = 96
    Width = 649
    Height = 361
    Caption = 'Biodata'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    CaptionLayout = clTopCenter
    SkinData.SkinSection = 'GROUPBOX'
    object sEdit2: TsEdit
      Left = 344
      Top = 24
      Width = 289
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      SkinData.CustomFont = True
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Nama'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sEdit3: TsEdit
      Left = 344
      Top = 56
      Width = 177
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      SkinData.CustomFont = True
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'TTL'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sEdit4: TsEdit
      Left = 344
      Top = 88
      Width = 289
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
      BoundLabel.Caption = 'Email'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sEdit5: TsEdit
      Left = 344
      Top = 120
      Width = 289
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '-'
      OnChange = sEdit5Change
      SkinData.CustomFont = True
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Sekolah'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sComboBox1: TsComboBox
      Left = 344
      Top = 152
      Width = 105
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Agama'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 15
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'Islam'
      Items.Strings = (
        'Islam'
        'Kristen'
        'Budha'
        'Hindu'
        'Konghucu')
    end
    object sMemo1: TsMemo
      Left = 344
      Top = 184
      Width = 289
      Height = 105
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
      BoundLabel.Active = True
      BoundLabel.Caption = 'Alamat'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'EDIT'
    end
    object sBitBtn1: TsBitBtn
      Left = 16
      Top = 256
      Width = 121
      Height = 33
      Caption = 'Tambah Foto'
      TabOrder = 6
      OnClick = sBitBtn1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn2: TsBitBtn
      Left = 160
      Top = 256
      Width = 121
      Height = 33
      Caption = 'Tanpa Foto'
      TabOrder = 7
      OnClick = sBitBtn2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sPanel1: TsPanel
      Left = 16
      Top = 24
      Width = 265
      Height = 217
      Caption = 'FOTO'
      TabOrder = 8
      SkinData.SkinSection = 'PANEL'
      object sImage1: TsImage
        Left = 1
        Top = 1
        Width = 263
        Height = 215
        Align = alClient
        Center = True
        IncrementalDisplay = True
        Picture.Data = {07544269746D617000000000}
        Stretch = True
        Transparent = True
        SkinData.SkinSection = 'CHECKBOX'
      end
    end
    object sDateEdit3: TsDateEdit
      Left = 528
      Top = 56
      Width = 103
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
      Text = '01-03-2017'
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
      Date = 42795.000000000000000000
    end
    object sComboBox5: TsComboBox
      Left = 544
      Top = 152
      Width = 89
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Jenis Kelamin'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 15
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'Laki-Laki'
      Items.Strings = (
        'Laki-Laki'
        'Perempuan')
    end
    object sDateEdit1: TsDateEdit
      Left = 280
      Top = 328
      Width = 121
      Height = 25
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 11
      BoundLabel.Active = True
      BoundLabel.Caption = 'Awal Masuk'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DefaultToday = True
    end
    object sDateEdit2: TsDateEdit
      Left = 512
      Top = 328
      Width = 121
      Height = 25
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 12
      BoundLabel.Active = True
      BoundLabel.Caption = 'Akhir Masuk'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DefaultToday = True
    end
    object sComboBox4: TsComboBox
      Left = 512
      Top = 296
      Width = 121
      Height = 24
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Jam Kerja'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csDropDownList
      Color = clWhite
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 13
      Text = '07.30-16.30'
      Items.Strings = (
        '07.30-16.30'
        '16.00-22.00')
    end
    object sComboBox3: TsComboBox
      Left = 280
      Top = 296
      Width = 153
      Height = 24
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Departement'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Text = 'Server'
      Items.Strings = (
        'Server'
        'Speaker 1'
        'Speaker 2'
        'Megaphone'
        'Purchasing'
        'Gudang Bahan Baku'
        'Plastic Injection'
        'General'
        'Pengecatan')
    end
    object sCheckBox1: TsCheckBox
      Left = 16
      Top = 320
      Width = 51
      Height = 20
      Caption = 'Aktif'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 15
      SkinData.CustomFont = True
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 8
    Top = 8
    Width = 649
    Height = 81
    Caption = 'Tambah Data'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    CaptionLayout = clTopCenter
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel2: TsLabel
      Left = 2
      Top = 56
      Width = 645
      Height = 23
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = '-'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      UseSkinColor = False
    end
    object sComboBox2: TsComboBox
      Left = 64
      Top = 24
      Width = 177
      Height = 24
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.Caption = 'Jabatan'
      BoundLabel.EnabledAlways = True
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'PKL'
      Items.Strings = (
        'PKL'
        'Training'
        'Karyawan Kontrak')
    end
    object sBitBtn6: TsBitBtn
      Left = 528
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Pilih'
      TabOrder = 1
      OnClick = sBitBtn6Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit1: TsEdit
      Left = 360
      Top = 24
      Width = 129
      Height = 24
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = 'PKL1'
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = 'Kode Pengguna'
      BoundLabel.EnabledAlways = True
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sBitBtn5: TsBitBtn
      Left = 496
      Top = 24
      Width = 25
      Height = 25
      Caption = '..'
      TabOrder = 3
      OnClick = sBitBtn5Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 468
    Width = 666
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    Color = clGradientActiveCaption
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sBitBtn3: TsBitBtn
      Left = 568
      Top = 8
      Width = 82
      Height = 25
      Caption = ' Simpan'
      TabOrder = 0
      OnClick = sBitBtn3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn4: TsBitBtn
      Left = 480
      Top = 8
      Width = 81
      Height = 25
      Caption = '( - ) Hapus'
      TabOrder = 1
      OnClick = sBitBtn4Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn7: TsBitBtn
      Left = 392
      Top = 8
      Width = 82
      Height = 25
      Caption = '() Reset'
      TabOrder = 2
      OnClick = sBitBtn7Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sCheckBox3: TsCheckBox
      Left = 16
      Top = 14
      Width = 47
      Height = 20
      Caption = 'Ulang'
      TabOrder = 3
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object sOpenPictureDialog1: TsOpenPictureDialog
    Left = 352
    Top = 72
  end
end
