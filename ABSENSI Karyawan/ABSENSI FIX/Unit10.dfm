object Form10: TForm10
  Left = -159
  Top = 139
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'ABSEN'
  ClientHeight = 654
  ClientWidth = 1366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel3: TsPanel
    Left = 0
    Top = 97
    Width = 1366
    Height = 557
    Align = alClient
    BorderStyle = bsSingle
    Color = clBackground
    TabOrder = 0
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'PANEL'
    object sPanel2: TsPanel
      Left = 16
      Top = 49
      Width = 1329
      Height = 216
      Color = clActiveBorder
      TabOrder = 0
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object shp1: TShape
        Left = 592
        Top = 8
        Width = 145
        Height = 201
        Brush.Color = clRed
      end
      object sGroupBox1: TsGroupBox
        Left = 744
        Top = 0
        Width = 577
        Height = 209
        Caption = 'Info Waktu'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        CaptionLayout = clTopCenter
        SkinData.CustomColor = True
        SkinData.SkinSection = 'GROUPBOX'
        object sLabelFX2: TsLabelFX
          Left = 7
          Top = 31
          Width = 69
          Height = 43
          Caption = 'JAM'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX4: TsLabelFX
          Left = 7
          Top = 111
          Width = 149
          Height = 43
          Caption = 'TANGGAL'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX3: TsLabelFX
          Left = 194
          Top = 30
          Width = 116
          Height = 37
          Caption = '07:30:00'
          Color = clTeal
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = 1360107
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -4
          Shadow.OffsetKeeper.RightBottom = 4
        end
        object sLabelFX5: TsLabelFX
          Left = 194
          Top = 110
          Width = 244
          Height = 37
          Caption = '18 DESEMBER 2017'
          Color = clTeal
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = 914031
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -4
          Shadow.OffsetKeeper.RightBottom = 4
        end
        object sLabelFX29: TsLabelFX
          Left = 7
          Top = 71
          Width = 85
          Height = 43
          SkinManager = Form1.sSkinManager1
          Caption = 'HARI'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX35: TsLabelFX
          Left = 194
          Top = 70
          Width = 74
          Height = 37
          Caption = 'Senin'
          Color = clTeal
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -4
          Shadow.OffsetKeeper.RightBottom = 4
        end
        object sLabelFX36: TsLabelFX
          Left = 7
          Top = 151
          Width = 172
          Height = 43
          Caption = 'JAM KERJA'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX37: TsLabelFX
          Left = 194
          Top = 150
          Width = 248
          Height = 37
          Caption = '07:30:00 - 16:30:00'
          Color = clTeal
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = 7604981
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -4
          Shadow.OffsetKeeper.RightBottom = 4
        end
        object sLabelFX38: TsLabelFX
          Left = 458
          Top = 54
          Width = 86
          Height = 37
          Caption = 'Shift 1'
          Color = clTeal
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.Color = clPurple
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -4
          Shadow.OffsetKeeper.RightBottom = 4
        end
      end
      object sBitBtn2: TsBitBtn
        Left = 200
        Top = 624
        Width = 107
        Height = 25
        Caption = 'Tutup'
        TabOrder = 1
        SkinData.SkinSection = 'BUTTON'
      end
      object sMemo1: TsMemo
        Left = 8
        Top = 40
        Width = 577
        Height = 169
        Alignment = taCenter
        Color = clActiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnClick = sMemo1Click
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.CustomColor = True
        SkinData.CustomFont = True
        SkinData.SkinSection = 'EDIT'
      end
      object sPanel6: TsPanel
        Left = 8
        Top = 8
        Width = 577
        Height = 25
        Caption = 'PESAN HARI INI'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        SkinData.CustomColor = True
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
        object sBitBtn6: TsBitBtn
          Left = 200
          Top = 624
          Width = 107
          Height = 25
          Caption = 'Tutup'
          TabOrder = 0
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object sBitBtn3: TsBitBtn
      Left = 1128
      Top = 8
      Width = 217
      Height = 33
      Cursor = crHandPoint
      Caption = 'TUTUP'
      TabOrder = 1
      OnClick = sBitBtn3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sPanel4: TsPanel
      Left = 16
      Top = 8
      Width = 1105
      Height = 33
      Caption = '-'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object sBitBtn5: TsBitBtn
        Left = 200
        Top = 624
        Width = 107
        Height = 25
        Caption = 'Tutup'
        TabOrder = 0
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel5: TsPanel
      Left = 16
      Top = 600
      Width = 1329
      Height = 41
      Caption = 
        'INFO : |          Pengguna Masuk  |          Pengguna Tidak Masu' +
        'k |          Pulang |'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object sLabel2: TsLabel
        Left = 344
        Top = 8
        Width = 49
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clBlack
        ParentColor = False
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        UseSkinColor = False
      end
      object sLabel3: TsLabel
        Left = 608
        Top = 8
        Width = 49
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clBlack
        ParentColor = False
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        UseSkinColor = False
      end
      object sLabel4: TsLabel
        Left = 928
        Top = 8
        Width = 49
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Color = clBlack
        ParentColor = False
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        UseSkinColor = False
      end
      object sBitBtn4: TsBitBtn
        Left = 200
        Top = 624
        Width = 107
        Height = 25
        Caption = 'Tutup'
        TabOrder = 0
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object sPanel7: TsPanel
      Left = 16
      Top = 273
      Width = 1329
      Height = 328
      Color = clActiveBorder
      TabOrder = 4
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object sBitBtn7: TsBitBtn
        Left = 200
        Top = 624
        Width = 107
        Height = 25
        Caption = 'Tutup'
        TabOrder = 0
        SkinData.SkinSection = 'BUTTON'
      end
      object sGroupBox2: TsGroupBox
        Left = 9
        Top = 0
        Width = 848
        Height = 320
        Caption = 'Info Pengguna'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        CaptionLayout = clTopCenter
        SkinData.CustomColor = True
        SkinData.SkinSection = 'GROUPBOX'
        object sLabelFX6: TsLabelFX
          Left = 280
          Top = 62
          Width = 218
          Height = 33
          AutoSize = False
          Caption = 'Nama Pengguna'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX7: TsLabelFX
          Left = 280
          Top = 88
          Width = 212
          Height = 27
          Caption = 'Tempat Tanggal Lahir'
          Color = clGray
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX8: TsLabelFX
          Left = 512
          Top = 88
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX9: TsLabelFX
          Left = 512
          Top = 56
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sImage1: TsImage
          Left = 13
          Top = 32
          Width = 260
          Height = 281
          Picture.Data = {
            0A544A504547496D61676591090000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080082008803012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD30
            A28A2BEB0F1C28A28A0028A28A0028AB7A2E8779E23D463B3B1B696EAE653854
            4193F53E83DCF02BD7BC15FB2C462249F5EBC6673CFD9AD8E02FB339EBF4007D
            4D635B110A7F1B2E14E52D91E2D5ADA5F80F5BD6E357B4D2751B88DF90EB6EC5
            0FFC0B18AFA73C3DF0E742F0A05361A5DA40E8722429BE41FF00036CB7EB5AB7
            F04975633C514CD6F2C91B2A4AA013192301803D7079AE09E67FCB1FBCE88E13
            BB3E40D574AB9D0F5096D2EE1782E21203C6DF794E3383F81AAF5B9E3CF036A9
            E05D65E0D4E362D292C9382592E39E583773EA0F233CD61D7A7092924D3B9CB2
            56760A28A2A8414514500145145001451450014514500157FC31E1DB9F16EBF6
            9A6DA286B8BB7D8B9E8A3A963EC0024FB0AA15E9DFB2BD82DC78EAF2E19726DA
            CDB69C742CEA33F967F3ACABD4E4A6E5D8AA71E69247AF7C3DF871A77C39D205
            BD9A079DC033DCB0FDE4EDEFE807651C0F73927A0A28AF9A9CDC9F349DD9EAC6
            292B20A28A2A4651F12786ACBC5BA4CB63A85BA5C5BCBD8F553D981EC47A8AF9
            97E297C3C9BE1BF89DEC99DA6B6957CDB6948E5D09C60FFB40F07F3EE2BEA8AF
            28FDAC34F597C2FA55D919782E9A207D03A127FF004015DF80AD28D450E8CE7C
            44138DFB1E15451457BA79E1451450014514500145145001451450015EB1FB27
            480789756427E66B6523F07FFEBD793D7A87ECA736DF1CDFC793F3D8B1FCA44F
            F1AE6C62FDCC8D683F7D1EF9451457CE1E985145140057997ED567FE280B21DC
            EA09FF00A2E4AF4DAF2BFDABE60BE12D3232465EF0B63BF08DFE35D383FE344C
            ABFC0CF07A28A2BE8CF3028A28A0028A28A0028A28A0028A28A002BDDFF6538A
            D9BC27A84821845E25D1569768F30A1452173D719078AF08AF5AFD953C496F61
            ABEA7A6CD288E6BE58DE053C0729BF701EF820E3D01AE4C745BA2EC6D87769AB
            9EE5451457CF1E9051451400571DF1EA3B6FF855BAA4B7104533448BE517504C
            6ECEAA187A1E7B57635E63FB5178920B2F05C3A68997ED77B3ABF940FCDE5AE4
            963E837003DFF035BE1A2DD58A5DCCEABB419E03451457D29E58514514005145
            14005145140051451400569783B5D3E19F1569DA873B6D2E124603A9507E61F8
            8C8ACDA29495D598276D4FB2D245951595832B0C820E411EB4B5C0FECEDE377F
            1678205ACE3FD23482B6E5BFBE98F90FD7008FF80E7BD77D5F31569B849C1F43
            D684B9926828A28ACCA0AF9ABF685F10AEBFF13AF15183C5A7AADA291EABCB0F
            C1D987E15EF5F11FC5A7C0DE0BBFD4D6312C96E8046A7A17660AB9F604E4FB03
            5F295D5CC97B7324D2BB492CCC5DD8F25989C927F1AF572CA5ABA9F2393153D1
            448E8A28AF5CE20A28A2800A28A2800A28A2800A28A2800A28A7DBDBBDDDC471
            44A5E495822A8EAC49C0145C0F73FD93ECFCBF0B6A9718C79B7423CFFBA80FFE
            CD5EAD59DE15F0AD8F837478ECAC2048215F99B6E72ED800B1CF52702B46BE67
            11514EA39AEA7AB4E3CB14828A28AC4B390F8F368D79F09B5855196448E4FC16
            4463FA035F3157D8DA8E9F06AD6335ADCC4935BCEA52446190C0F515F2BFC4EF
            0EA7853C7DAAD8448228619898901242A300CA39F4522BD8CB2A2B3A7F338B15
            1D548C1A28A2BD439028A28A0028A28A0028A29C88D2BAA22B3331C0006493E9
            400DA2BBEF06FECEBAFF008A364B751AE936AD83BAE01F308F641CE7FDEDB5EA
            BE0FFD9F3C3DE15D92CD01D52E97FE5A5D61901F64FBBF9E48F5AE4AD8DA50D2
            F77E46D0A139791E15E10F867ADF8E5D4E9F632BC04E0CEFF242BCF3F31E0E3D
            064FB57B07C39FD9B6D7C2F7D6DA86A776D7B7B6CEB2C71C436C31B039072796
            C1C1EDF435E9A88B1A2AAA855518000C003D296BCCAD8FA93D1688EAA7878C75
            7A8514515C2740514514005711F13FE0769FF11EE7ED82796CB5154082550191
            C0E9B97BFD411F8D76F455D3A9283E68BB32651525667CC3E33F825E20F056F9
            25B4377689CFDA2DB32201EA47DE5FC463DCD7235F66572DE31F837E1FF1A979
            2E6C960BA7FF00978B7C47213EA71C31FF00781AF4E8E67D2A2FB8E59E17F959
            F2E515E9DE31FD98756D1C3CDA54D1EA902F3E59C47301F43C37E0413E95E71A
            869D71A4DDBDBDD4135B4F19C3472A1465FA835E952AD0A8AF07739670947744
            1451456849B3E05F04DEF8FF00C41169F64A0330DD248DF76141D58FF9E4915F
            467C3FF849A47C3CB7436D089EF7187BB9403231EF8FEE8F61DBAE7AD51F829F
            0BA5F867A2DD25E3DB4D7D772EE792124A8403E55C900F5DC7A77AED6BC2C662
            DCE5CB17A7E67A1428A8ABBDC28A28AE03A028A28A0028A28A0028A28A0028A2
            8A0028A28A002B23C5DE05D2FC73606DF52B48E70061241F2C917BAB0E47D3A1
            EE0D6BD1551934EE84D27A33E61F8B1F09EEBE196AA80BB5CE9D724FD9E7C60F
            BA30ECC3F22391DC02BE81F891E0D5F1E7836F34DFDDACD2AEE81DFA4720E54E
            70481D891D89A2BDAC363A2E1FBC76670D5C3B52F75686ED14515E19DE145145
            00145145001451450014514500145145001451450014514500145145007FFFD9}
          Stretch = True
          Transparent = True
          SkinData.SkinSection = 'CHECKBOX'
        end
        object sLabelFX10: TsLabelFX
          Left = 280
          Top = 120
          Width = 57
          Height = 27
          Caption = 'Email'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX11: TsLabelFX
          Left = 512
          Top = 120
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX12: TsLabelFX
          Left = 280
          Top = 152
          Width = 69
          Height = 27
          Caption = 'Agama'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX13: TsLabelFX
          Left = 512
          Top = 152
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX14: TsLabelFX
          Left = 280
          Top = 184
          Width = 79
          Height = 27
          Caption = 'Jabatan'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX15: TsLabelFX
          Left = 512
          Top = 184
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX16: TsLabelFX
          Left = 280
          Top = 216
          Width = 128
          Height = 27
          Caption = 'Departement'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX17: TsLabelFX
          Left = 512
          Top = 216
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX18: TsLabelFX
          Left = 280
          Top = 248
          Width = 99
          Height = 27
          Caption = 'Jam Kerja'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX19: TsLabelFX
          Left = 512
          Top = 248
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX20: TsLabelFX
          Left = 280
          Top = 280
          Width = 110
          Height = 27
          Caption = 'Akhir Kerja'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clYellow
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sLabelFX21: TsLabelFX
          Left = 512
          Top = 280
          Width = 12
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 2
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -2
          Shadow.OffsetKeeper.RightBottom = 2
        end
        object sEdit1: TsEdit
          Left = 424
          Top = 24
          Width = 257
          Height = 31
          BevelInner = bvLowered
          BevelOuter = bvNone
          BiDiMode = bdRightToLeft
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = sEdit1Change
          OnKeyPress = sEdit1KeyPress
          SkinData.CustomColor = True
          SkinData.SkinSection = 'EDIT'
          BoundLabel.Active = True
          BoundLabel.Caption = 'Kode Pengguna'
          BoundLabel.Indent = 0
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clYellow
          BoundLabel.Font.Height = -16
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = [fsBold]
          BoundLabel.Layout = sclLeft
          BoundLabel.MaxWidth = 0
          BoundLabel.UseSkinColor = False
        end
        object sBitBtn1: TsBitBtn
          Left = 688
          Top = 24
          Width = 153
          Height = 33
          Cursor = crHandPoint
          Caption = 'Enter ( Auto )'
          TabOrder = 1
          OnClick = sBitBtn1Click
          SkinData.SkinSection = 'BUTTON'
        end
      end
      object sGroupBox3: TsGroupBox
        Left = 864
        Top = -1
        Width = 457
        Height = 129
        Caption = 'Info Absensi ( SEKARANG )'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        CaptionLayout = clTopCenter
        SkinData.CustomColor = True
        SkinData.SkinSection = 'GROUPBOX'
        object sLabelFX22: TsLabelFX
          Left = 213
          Top = 25
          Width = 96
          Height = 27
          Caption = '00:00:00'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = 1360107
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
        object sLabelFX23: TsLabelFX
          Left = 7
          Top = 23
          Width = 52
          Height = 33
          Caption = 'JAM'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX24: TsLabelFX
          Left = 7
          Top = 55
          Width = 195
          Height = 33
          Caption = 'KODE PENGGUNA'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX25: TsLabelFX
          Left = 213
          Top = 57
          Width = 11
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
        object sLabelFX26: TsLabelFX
          Left = 7
          Top = 87
          Width = 71
          Height = 33
          Caption = 'NAMA'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX27: TsLabelFX
          Left = 213
          Top = 89
          Width = 11
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
      end
      object sGroupBox4: TsGroupBox
        Left = 864
        Top = 127
        Width = 457
        Height = 121
        Caption = 'Info Absensi ( SEBELUMNYA )'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        CaptionLayout = clTopCenter
        SkinData.CustomColor = True
        SkinData.SkinSection = 'GROUPBOX'
        object sLabelFX28: TsLabelFX
          Left = 213
          Top = 25
          Width = 96
          Height = 27
          Caption = '00:00:00'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = 1360107
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
        object sLabelFX30: TsLabelFX
          Left = 7
          Top = 23
          Width = 52
          Height = 33
          Caption = 'JAM'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX31: TsLabelFX
          Left = 7
          Top = 55
          Width = 195
          Height = 33
          Caption = 'KODE PENGGUNA'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX32: TsLabelFX
          Left = 213
          Top = 57
          Width = 11
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
        object sLabelFX33: TsLabelFX
          Left = 7
          Top = 87
          Width = 71
          Height = 33
          Caption = 'NAMA'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Shadow.OffsetKeeper.LeftTop = -3
          Shadow.OffsetKeeper.RightBottom = 5
        end
        object sLabelFX34: TsLabelFX
          Left = 213
          Top = 89
          Width = 11
          Height = 27
          Caption = '-'
          Color = clRed
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Angle = 0
          Kind.KindType = ktCustom
          Kind.Color = clHighlightText
          Shadow.BlurCount = 1
          Shadow.Distance = 0
          Shadow.Mode = smCustom
          Shadow.OffsetKeeper.LeftTop = -1
          Shadow.OffsetKeeper.RightBottom = 1
        end
      end
      object sGroupBox5: TsGroupBox
        Left = 864
        Top = 255
        Width = 457
        Height = 65
        Caption = 'Info Sistem'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        CaptionLayout = clTopCenter
        SkinData.CustomColor = True
        SkinData.CustomFont = True
        SkinData.SkinSection = 'GROUPBOX'
        object sLabel5: TsLabel
          Left = 11
          Top = 22
          Width = 8
          Height = 23
          Caption = '-'
          Color = clBackground
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          UseSkinColor = False
        end
      end
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 97
    Align = alTop
    Color = clBlack
    TabOrder = 1
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'PANEL'
    object sImage2: TsImage
      Left = 16
      Top = 8
      Width = 145
      Height = 81
      Picture.Data = {07544269746D617000000000}
      Stretch = True
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sLabelFX1: TsLabelFX
      Left = 1
      Top = 1
      Width = 1364
      Height = 41
      Align = alTop
      Alignment = taCenter
      Color = clMaroon
      ParentColor = False
      ParentFont = False
      Layout = tlBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Angle = 0
      Kind.KindType = ktCustom
      Kind.Color = 13031463
      Shadow.BlurCount = 1
      Shadow.Distance = 0
      Shadow.Mode = smCustom
      Shadow.OffsetKeeper.LeftTop = -1
      Shadow.OffsetKeeper.RightBottom = 1
    end
  end
end
