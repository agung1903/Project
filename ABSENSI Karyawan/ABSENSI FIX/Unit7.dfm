object Form7: TForm7
  Left = 225
  Top = 140
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Ganti Shift'
  ClientHeight = 422
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel3: TsLabel
    Left = 0
    Top = 0
    Width = 913
    Height = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'GANTI SHIFT'
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
    Width = 913
    Height = 73
    Align = alTop
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 0
    SkinData.CustomColor = True
    SkinData.SkinSection = 'GROUPBOX'
    object sPanel1: TsPanel
      Left = 808
      Top = 15
      Width = 103
      Height = 56
      Align = alRight
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sLabel1: TsLabel
        Left = 1
        Top = 1
        Width = 101
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
        Width = 87
        Height = 25
        Caption = 'Segarkan'
        TabOrder = 0
        OnClick = sBitBtn4Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel2: TsPanel
      Left = 8
      Top = 24
      Width = 137
      Height = 33
      BevelInner = bvLowered
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object sRadioButton1: TsRadioButton
        Left = 8
        Top = 8
        Width = 51
        Height = 20
        Caption = 'Shift 1'
        Checked = True
        TabOrder = 0
        TabStop = True
        SkinData.SkinSection = 'CHECKBOX'
      end
      object sRadioButton2: TsRadioButton
        Left = 72
        Top = 8
        Width = 51
        Height = 20
        Caption = 'Shift 2'
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
      end
    end
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 380
    Width = 913
    Height = 42
    Align = alBottom
    BevelInner = bvLowered
    Color = clGradientActiveCaption
    TabOrder = 1
    SkinData.CustomColor = True
    SkinData.SkinSection = 'PANEL'
    object sPanel4: TsPanel
      Left = 787
      Top = 2
      Width = 124
      Height = 38
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sBitBtn1: TsBitBtn
        Left = 13
        Top = 8
        Width = 97
        Height = 25
        Caption = 'Simpan'
        TabOrder = 0
        OnClick = sBitBtn1Click
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel5: TsPanel
      Left = 181
      Top = 2
      Width = 606
      Height = 38
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 1
      SkinData.SkinSection = 'PANEL_LOW'
      object sEdit1: TsEdit
        Left = 280
        Top = 8
        Width = 145
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = 'Nama'
        BoundLabel.EnabledAlways = True
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
      object sComboBox4: TsComboBox
        Left = 96
        Top = 8
        Width = 145
        Height = 21
        Alignment = taLeftJustify
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
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 15
        ItemIndex = -1
        ParentFont = False
        TabOrder = 1
      end
      object sComboBox1: TsComboBox
        Left = 480
        Top = 9
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Active = True
        BoundLabel.Caption = 'Jam Kerja'
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
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = '07.30-16.30'
        Items.Strings = (
          '07.30-16.30'
          '16.00-22.00')
      end
    end
  end
  object sDBGrid1: TsDBGrid
    Left = 0
    Top = 93
    Width = 913
    Height = 287
    Align = alClient
    Color = clMoneyGreen
    DataSource = dmod.ds_shift
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
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
        Width = 132
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clFuchsia
        Expanded = False
        FieldName = 'fullname'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 214
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'departement'
        Title.Alignment = taCenter
        Title.Caption = 'Departement'
        Width = 212
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'ttl'
        Title.Alignment = taCenter
        Title.Caption = 'Tempat Tanggal Lahir'
        Width = 149
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'jam_kerja'
        Title.Alignment = taCenter
        Title.Caption = 'Jam Kerja'
        Width = 287
        Visible = True
      end>
  end
end
