object Form3: TForm3
  Left = 320
  Top = 74
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'Absensi Karyawan'
  ClientHeight = 576
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 553
    Width = 867
    Height = 23
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Text = 'Status'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Text = 'Contact'
        Width = 60
      end
      item
        Alignment = taCenter
        Text = 'agungyanuar@gmail.com'
        Width = 200
      end
      item
        Text = 'Time'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Text = 'Owner'
        Width = 50
      end
      item
        Alignment = taCenter
        Text = 'Ahmad Agung Yanuar'
        Width = 50
      end>
    UseSystemFont = False
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'STATUSBAR'
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 97
    Width = 281
    Height = 456
    Align = alLeft
    Color = clMenuHighlight
    TabOrder = 1
    SkinData.SkinSection = 'PANEL_LOW'
    object sMonthCalendar1: TsMonthCalendar
      Left = 8
      Top = 8
      Width = 265
      Height = 153
      BevelInner = bvRaised
      BevelWidth = 1
      BorderWidth = 3
      Caption = ' '
      ParentBackground = False
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      ReadOnly = True
      StartOfWeek = dowMonday
      ShowSelectAlways = False
      ShowTodayBtn = True
    end
    object sBitBtn1: TsBitBtn
      Left = 8
      Top = 168
      Width = 265
      Height = 41
      Caption = 'Data Absensi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = sBitBtn1Click
      Margin = 70
      Alignment = taLeftJustify
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 6
      Images = dmod.sAlphaImageList1
    end
    object sBitBtn2: TsBitBtn
      Left = 8
      Top = 216
      Width = 265
      Height = 41
      Caption = 'Data Karyawan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = sBitBtn2Click
      Margin = 70
      Alignment = taLeftJustify
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 5
      Images = dmod.sAlphaImageList1
    end
    object sBitBtn3: TsBitBtn
      Left = 8
      Top = 264
      Width = 265
      Height = 41
      Caption = 'Info Gaji'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = sBitBtn3Click
      Margin = 70
      Alignment = taLeftJustify
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 7
      Images = dmod.sAlphaImageList1
    end
    object sBitBtn4: TsBitBtn
      Left = 8
      Top = 312
      Width = 265
      Height = 41
      Caption = 'Ganti Jam Kerja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = sBitBtn4Click
      Margin = 70
      Alignment = taLeftJustify
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 8
      Images = dmod.sAlphaImageList1
    end
    object sPanel3: TsPanel
      Left = 1
      Top = 365
      Width = 279
      Height = 90
      Align = alBottom
      TabOrder = 5
      SkinData.SkinSection = 'PANEL'
      object sLabel3: TsLabel
        Left = 112
        Top = 7
        Width = 88
        Height = 16
        Caption = 'Kode Pengguna'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object shp2: TShape
        Left = 88
        Top = 6
        Width = 17
        Height = 17
        Brush.Color = clOlive
      end
      object sLabel4: TsLabel
        Left = 232
        Top = 7
        Width = 33
        Height = 16
        Caption = 'Nama'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object shp3: TShape
        Left = 208
        Top = 6
        Width = 17
        Height = 17
        Brush.Color = clYellow
      end
      object sLabel2: TsLabel
        Left = 32
        Top = 8
        Width = 46
        Height = 16
        Caption = 'Tanggal'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object shp1: TShape
        Left = 8
        Top = 8
        Width = 17
        Height = 17
        Brush.Color = clTeal
      end
      object sBitBtn5: TsBitBtn
        Left = 8
        Top = 38
        Width = 257
        Height = 33
        Caption = 'Pengaturan Program'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = sBitBtn5Click
        SkinData.SkinSection = 'BUTTON'
        ImageIndex = 2
        Images = dmod.sAlphaImageList1
      end
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 97
    Align = alTop
    Color = clBlack
    TabOrder = 2
    SkinData.CustomColor = True
    SkinData.SkinSection = 'PANEL'
    object sImage1: TsImage
      Left = 8
      Top = 8
      Width = 105
      Height = 81
      Picture.Data = {07544269746D617000000000}
      Stretch = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sLabelFX1: TsLabelFX
      Left = 120
      Top = 16
      Width = 329
      Height = 27
      AutoSize = False
      Caption = '-'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Kind.KindType = ktCustom
      Shadow.Mode = smCustom
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object sLabel1: TsLabel
      Left = 128
      Top = 56
      Width = 4
      Height = 16
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      UseSkinColor = False
    end
  end
  object ScrollBox: TScrollBox
    Left = 281
    Top = 97
    Width = 586
    Height = 456
    HorzScrollBar.Visible = False
    VertScrollBar.Smooth = True
    VertScrollBar.Style = ssFlat
    VertScrollBar.Visible = False
    Align = alClient
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clBtnFace
    ParentBackground = True
    ParentColor = False
    TabOrder = 3
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    MakeSkinMenu = True
    TitleButtons = <>
    Left = 448
    Top = 56
  end
end
