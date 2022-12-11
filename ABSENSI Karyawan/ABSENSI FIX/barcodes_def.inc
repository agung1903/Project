// =====================================================================================================================
//   2D Barcode VCL Components
//
//   Author: HAN JING YU
//   E-Mail: support@han-soft.com
//   WebURL: http://www.han-soft.com
//   Copyright (C) Han-soft Corporation. All rights reserved.
// =====================================================================================================================
//   $Id: barcodes_def.inc 2321 2015-03-17 17:40:57Z hanjy $
// =====================================================================================================================

// [Common] ============================================================================================================

BARCODE_NUMBER = {$IFDEF INCLUDE_EZCODE_SYMBOLOGY}20{$ELSE}19{$ENDIF};

VALUES_AZTECCODE_SIZE = 0;
VALUES_DATAMATRIXECC200_SIZE = 1;
VALUES_DATAMATRIX_SIZE = 2;
VALUES_MICROPDF417_SIZE = 3;
VALUES_CCA_ROWS = 4;
VALUES_CCB_ROWS = 5;

CustomEnumerateValues:
  array[VALUES_AZTECCODE_SIZE..VALUES_CCB_ROWS] of string = (

  'azSize_15Compact, azSize_19, azSize_19Compact, azSize_23, azSize_23Compact, azSize_27, azSize_27Compact, ' +
  'azSize_31, azSize_37, azSize_41, azSize_45, azSize_49, azSize_53, azSize_57, azSize_61, azSize_67, azSize_71, ' +
  'azSize_75, azSize_79, azSize_83, azSize_87, azSize_91, azSize_95, azSize_101, azSize_105, azSize_109, azSize_113, ' +
  'azSize_117, azSize_121, azSize_125, azSize_131, azSize_135, azSize_139, azSize_143, azSize_147, azSize_151',

  'dmSize_10_10, dmSize_12_12, dmSize_14_14, dmSize_16_16, dmSize_18_18, dmSize_20_20, dmSize_22_22, dmSize_24_24, ' +
  'dmSize_26_26, dmSize_32_32, dmSize_36_36, dmSize_40_40, dmSize_44_44, dmSize_48_48, dmSize_52_52, dmSize_64_64, ' +
  'dmSize_72_72, dmSize_80_80, dmSize_88_88, dmSize_96_96, dmSize_104_104, dmSize_120_120, dmSize_132_132, ' +
  'dmSize_144_144, dmSize_8_18, dmSize_8_32, dmSize_12_26, dmSize_12_36, dmSize_16_36, dmSize_16_48',

  'dmSize_09_09, dmSize_11_11, dmSize_13_13, dmSize_15_15, dmSize_17_17, dmSize_19_19, dmSize_21_21, dmSize_23_23, ' +
  'dmSize_25_25, dmSize_27_27, dmSize_29_29, dmSize_31_31, dmSize_33_33, dmSize_35_35, dmSize_37_37, dmSize_39_39, ' +
  'dmSize_41_41, dmSize_43_43, dmSize_45_45, dmSize_47_47, dmSize_49_49',

  'mpSize_1_11, mpSize_1_14, mpSize_1_17, mpSize_1_20, mpSize_1_24, mpSize_1_28, mpSize_2_8,  mpSize_2_11, ' +
  'mpSize_2_14, mpSize_2_17, mpSize_2_20, mpSize_2_23, mpSize_2_26, mpSize_3_6,  mpSize_3_8,  mpSize_3_10, ' +
  'mpSize_3_12, mpSize_3_15, mpSize_3_20, mpSize_3_26, mpSize_3_32, mpSize_3_38, mpSize_3_44, mpSize_4_4, ' +
  'mpSize_4_6, mpSize_4_8,  mpSize_4_10, mpSize_4_12, mpSize_4_15, mpSize_4_20, mpSize_4_26, mpSize_4_32, ' +
  'mpSize_4_38, mpSize_4_44',

  'ccaRow_3, ccaRow_4, ccaRow_5, ccaRow_6, ccaRow_7, ccaRow_8, ccaRow_9, ccaRow_10, ccaRow_12',

  'ccbRow_4, ccbRow_6, ccbRow_8, ccbRow_10, ccbRow_11, ccbRow_12, ccbRow_14, ccbRow_15, ccbRow_17, ccbRow_20, ' +
  'ccbRow_23, ccbRow_26, ccbRow_32, ccbRow_38, ccbRow_44'
);

// [Properties] ========================================================================================================

CommonProperties: array['A'..'_'] of TPropertyDefine = (
  ( Name: 'Module';                // A
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 99 ),
  ( Name: 'LeftMargin';            // B
      DefaultValue: '5';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'TopMargin';             // C
      DefaultValue: '5';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'Stretch';               // D
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'BarcodeWidth';          // E
      DefaultValue: '-5';
      PropType: ptInteger;
      MinValue: -1280;
      MaxValue: 1280 ),
  ( Name: 'BarcodeHeight';
      DefaultValue: '-5';          // F
      PropType: ptInteger;
      MinValue: -1280;
      MaxValue: 1280 ),
  ( Name: 'BarColor';              // G
      DefaultValue: 'clBlack';
      PropType: ptColor ),
  ( Name: 'SpaceColor';            // H
      DefaultValue: 'clWhite';
      PropType: ptColor ),
  ( Name: 'Orientation';           // I
      DefaultValue: 'boLeftRight';
      PropType: ptEnumerate;
      ValueFlag: -1;
      ValueList: 'boLeftRight, boRightLeft, boTopBottom, boBottomTop' ),
  ( Name: 'ShowQuietZone';         // J
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'TopQuietZone';          // K
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 1280 ),
  ( Name: 'BottomQuietZone';       // L
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 1280 ),
  ( Name: 'LeadingQuietZone';      // M
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 1280 ),
  ( Name: 'TrailingQuietZone';     // N
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 1280 ),
  ( Name: 'TopQuietZone';          // O
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'BottomQuietZone';       // P
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'LeadingQuietZone';      // Q
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'TrailingQuietZone';     // R
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1280 ),
  ( Name: 'TopQuietZone';          // S
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 2;
      MaxValue: 1280 ),
  ( Name: 'BottomQuietZone';       // T
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 2;
      MaxValue: 1280 ),
  ( Name: 'LeadingQuietZone';      // U
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 2;
      MaxValue: 1280 ),
  ( Name: 'TrailingQuietZone';     // V
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 2;
      MaxValue: 1280 ),
  ( Name: 'TopQuietZone';          // W
      DefaultValue: '4';
      PropType: ptInteger;
      MinValue: 4;
      MaxValue: 1280 ),
  ( Name: 'BottomQuietZone';       // X
      DefaultValue: '4';
      PropType: ptInteger;
      MinValue: 4;
      MaxValue: 1280 ),
  ( Name: 'LeadingQuietZone';      // Y
      DefaultValue: '4';
      PropType: ptInteger;
      MinValue: 4;
      MaxValue: 1280 ),
  ( Name: 'TrailingQuietZone';     // Z
      DefaultValue: '4';
      PropType: ptInteger;
      MinValue: 4;
      MaxValue: 1280 ),
  ( Name: 'TopQuietZone';          // [
      DefaultValue: '6';
      PropType: ptInteger;
      MinValue: 6;
      MaxValue: 1280 ),
  ( Name: 'BottomQuietZone';       // \
      DefaultValue: '6';
      PropType: ptInteger;
      MinValue: 6;
      MaxValue: 1280 ),
  ( Name: 'LeadingQuietZone';      // ]
      DefaultValue: '6';
      PropType: ptInteger;
      MinValue: 6;
      MaxValue: 1280 ),
  ( Name: 'TrailingQuietZone';     // ^
      DefaultValue: '6';
      PropType: ptInteger;
      MinValue: 6;
      MaxValue: 1280 ),
  ( Name: 'Locked';                // _
      DefaultValue: 'False';
      PropType: ptBoolean )
);

CustomProperties: array['a'..'v'] of TPropertyDefine = (
  ( Name: 'AllowKanjiMode';             // a
      DefaultValue: 'False';
      PropType: ptBoolean ),
  (Name: 'EncodePolicy';                // b
      DefaultValue: 'epMixingQuick';
      PropType: ptEnumerate;
      ValueFlag: -1;
      ValueList: 'epMixingOptimal, epMixingQuick, epSingleMode' ),
  ( Name: 'Options';                    // c
      DefaultValue: '';
      PropType: ptSet;
      ValueList: 'poIgnoreShiftBeforeECI, poFirst904TextMixedLatch, po912TextAlphaLatch, po907TextAlphaLatch, ' +
                 'po914TextAlphaLatch, po915TextAlphaLatch, poFirstFNC1MatchAI01, poMicroPDF417Explicit901' ),
  ( Name: 'AllowEscape';                // d
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'AutoCheckDigit';             // e
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'MinRows';                    // f
      DefaultValue: '3';
      PropType: ptInteger;
      MinValue: 3;
      MaxValue: 90 ),
  ( Name: 'MaxRows';                    // g
      DefaultValue: '90';
      PropType: ptInteger;
      MinValue: 3;
      MaxValue: 90 ),
  ( Name: 'MinColumns';                 // h
      DefaultValue: '3';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 30 ),
  ( Name: 'MaxColumns';                 // i
      DefaultValue: '30';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 30 ),
  ( Name: 'EccLevel';                   // j
      DefaultValue: 'elEcc_0';
      PropType: ptEnumerate;
      ValueFlag: -1;
      ValueList: 'elEcc_0, elEcc_1, elEcc_2, elEcc_3, elEcc_4, elEcc_5, elEcc_6, elEcc_7, elEcc_8, elEcc_Auto'),
  ( Name: 'EccLevelUpgrade';            // k
      DefaultValue: 'True';
      PropType: ptBoolean ),
  ( Name: 'RowHeight';                  // l
      DefaultValue: '2';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 90),
  ( Name: 'RowHeight';                  // m
      DefaultValue: '3';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 90),
  ( Name: 'SeparatorRowHeight';         // n
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 9),
  ( Name: 'Link2D';                     // o
      DefaultValue: 'False';
      PropType: ptBoolean),
  ( Name: 'Show2DSeparator';            // p
      DefaultValue: 'False';
      PropType: ptBoolean),
  ( Name: 'Compact';                    // q
      DefaultValue: 'False';
      PropType: ptBoolean),
  ( Name: 'Inversed';                   // r
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'Mirrored';                   // s
      DefaultValue: 'False';
      PropType: ptBoolean ),
  ( Name: 'Linear';                     // t
      DefaultValue: 'UPC-A';
      PropType: ptEnumerate;
      ValueFlag: -1;
      ValueList: 'RSS-14, RSS-Limited, RSS-Expanded, UPC-E, UPC-E0, UPC-E1, UPC-A, EAN-8, EAN-13, EAN-128' ),
  ( Name: 'MaxSliceLen';                // u
      DefaultValue: '64';
      PropType: ptInteger;
      MinValue: 0;
      MaxValue: 1024),
  ( Name: 'Module';                     // v
      DefaultValue: '1';
      PropType: ptInteger;
      MinValue: 1;
      MaxValue: 99 )
);

// [Barcodes] ==================================================================

BarcodeComponents: array[0..BARCODE_NUMBER - 1] of TBarcodeComponent = (

  // [Aztec Code] --------------------------------------------------------------

  ( Name: 'Aztec Code';
    ClassType: TBarcode2D_AztecCode;
    SaveFilter: 1;
    BarcodeText: 'Aztec Code';
    propertiesIndex: 'ABCDEFGHIJKLMN01d2345rs_';
    PropertiesCustom: (
      ( Name: 'SymbolMode';
          DefaultValue: 'smNormal';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'smNormal, smCompact, smFullRange, smAll' ),
      ( Name: 'BytesAlwaysBackToUpper';
          DefaultValue: 'False';
          PropType: ptBoolean ),
      ( Name: 'MinSize';
          DefaultValue: 'azSize_15Compact';
          PropType: ptEnumerate;
          ValueFlag: VALUES_AZTECCODE_SIZE;
          ValueList: '' ),
      ( Name: 'MaxSize';
          DefaultValue: 'azSize_151';
          PropType: ptEnumerate;
          ValueFlag: VALUES_AZTECCODE_SIZE;
          ValueList: '' ),
      ( Name: 'ECCLevel';
          DefaultValue: '23';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 99 ),
      ( Name: 'ECCCount';
          DefaultValue: '3';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 99 ),
      ( ), ( ), ( )
    )
  ),

  // [Aztec Runes] -------------------------------------------------------------

  ( Name: 'Aztec Runes';
    ClassType: TBarcode2D_AztecRunes;
    SaveFilter: 1;
    BarcodeText: '123';
    propertiesIndex: 'ABCDEFGHIJKLMN0rs_';
    PropertiesCustom: (
      ( Name: 'FixedLength';
          DefaultValue: 'False';
          PropType: ptBoolean ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [Code 16K] ----------------------------------------------------------------

  ( Name: 'Code 16K';
    ClassType: TBarcode2D_Code16K;
    SaveFilter: 1;
    BarcodeText: 'Code 16K';
    propertiesIndex: 'vBCDEFGHIJ012N3d4567_';
    PropertiesCustom: (
      ( Name: 'TopQuietZone';
          DefaultValue: '0';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 1280 ),
      ( Name: 'BottomQuietZone';
          DefaultValue: '0';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 1280 ),
      ( Name: 'LeadingQuietZone';
          DefaultValue: '10';
          PropType: ptInteger;
          MinValue: 10;
          MaxValue: 1280 ),
      ( Name: 'InitialMode';
          DefaultValue: 'emAuto';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'emAuto, emModeA, emModeB, emModeC, emModeB_FNC1, emModeC_FNC1, emModeC_Shift1B, ' +
                     'emModeC_Shift2B, emMode_Extended' ),
      ( Name: 'MinRows';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 16 ),
      ( Name: 'MaxRows';
          DefaultValue: '16';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 16 ),
      ( Name: 'RowHeight';
          DefaultValue: '8';
          PropType: ptInteger;
          MinValue: 8;
          MaxValue: 90 ),
      ( Name: 'SeparatorBarHeight';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 4 ),
      ( )
    )
  ),

  // [Data Matrix ECC 200] -----------------------------------------------------

  ( Name: 'Data Matrix (ECC 200)';
    ClassType: TBarcode2D_DataMatrixEcc200;
    SaveFilter: 1;
    BarcodeText: 'Data Matrix (ECC 200)';
    propertiesIndex: 'ABCDEFGHIJKLMNd012r_';
    PropertiesCustom: (
      ( Name: 'MinSize';
          DefaultValue: 'dmSize_10_10';
          PropType: ptEnumerate;
          ValueFlag: VALUES_DATAMATRIXECC200_SIZE;
          ValueList: '' ),
      ( Name: 'MaxSize';
          DefaultValue: 'dmSize_144_144';
          PropType: ptEnumerate;
          ValueFlag: VALUES_DATAMATRIXECC200_SIZE;
          ValueList: '' ),
      ( Name: 'Shape';
          DefaultValue: 'dsSquare';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'dsSquare, dsRectangle'),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [Data Matrix] -------------------------------------------------------------

  ( Name: 'Data Matrix (ECC 000 - ECC 140)';
    ClassType: TBarcode2D_DataMatrix;
    SaveFilter: 1;
    BarcodeText: 'Data Matrix (ECC 000 - ECC 140)';
    propertiesIndex: 'ABCDEFGHIJKLMN0123kr_';
    PropertiesCustom: (
      ( Name: 'EncodeMode';
          DefaultValue: 'emAuto';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'emAuto, emNumeric, emAlpha, emPunctuation, emAlphanumeric, emASCII, emBinary' ),
      ( Name: 'MinSize';
          DefaultValue: 'dmSize_09_09';
          PropType: ptEnumerate;
          ValueFlag: VALUES_DATAMATRIX_SIZE;
          ValueList: '' ),
      ( Name: 'MaxSize';
          DefaultValue: 'dmSize_49_49';
          PropType: ptEnumerate;
          ValueFlag: VALUES_DATAMATRIX_SIZE;
          ValueList: '' ),
      ( Name: 'EccLevel';
          DefaultValue: 'dmECC000';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'dmECC000, dmECC050, dmECC080, dmECC100, dmECC140' ),
      ( ), ( ), ( ), ( ), ( )
    )
  ),

  {$IFDEF INCLUDE_EZCODE_SYMBOLOGY}

  // [EZCode] ------------------------------------------------------------------

  ( Name: 'EZCode';
    ClassType: TBarcode2D_EZCode;
    SaveFilter: 1;
    BarcodeText: '1234567890ABCDEF123';
    propertiesIndex: 'ABCDEFGHIJKLMN0r_';
    PropertiesCustom: (
      ( Name: 'UseECC';
          DefaultValue: 'False';
          PropType: ptBoolean ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  {$ENDIF}

  // [MaxiCode] ----------------------------------------------------------------

  ( Name: 'MaxiCode';
    ClassType: TBarcode2D_MaxiCode;
    SaveFilter: 0;
    BarcodeText: 'MaxiCode';
    propertiesIndex: '0BCDEFGHIJKLMN12d_';
    PropertiesCustom: (
      ( Name: 'Module';
          DefaultValue: '6';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 99 ),
      ( Name: 'Mode';
          DefaultValue: '4';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 6 ),
      ( Name: 'AutoMode';
          DefaultValue: 'True';
          PropType: ptBoolean ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [PDF417] ------------------------------------------------------------------

  ( Name: 'PDF417';
    ClassType: TBarcode2D_PDF417;
    SaveFilter: 1;
    BarcodeText: 'PDF417';
    propertiesIndex: 'vBCDEFGHIJSTUVcdfghi0jkmqs_';
    PropertiesCustom: (
      ( Name: 'StretchOrder';
          DefaultValue: 'soRowColumn';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'soRowColumn, soColumnRow, soFixAspect, ' +
                    'soFixAspectWithQuietZones'),
      ( ), ( ), ( ), ( ), ( ), ( ) , ( ), ( )
    )
  ),

  // [MicroPDF417] -------------------------------------------------------------

  ( Name: 'MicroPDF417';
    ClassType: TBarcode2D_MicroPDF417;
    SaveFilter: 1;
    BarcodeText: 'MicroPDF417';
    propertiesIndex: 'vBCDEFGHIJSTUV012cd345ms_';
    PropertiesCustom: (
      ( Name: 'DefaultEncodeMode';
          DefaultValue: 'emNull';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'emText, emByte, emNumeric, emNull' ),
      ( Name: 'DefaultTextEncodeMode';
          DefaultValue: 'tmLower';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'tmAlpha, tmLower, tmMixed, tmPunct' ),
      ( Name: 'UseECIDescriptor';
          DefaultValue: 'False';
          PropType: ptBoolean ),
      ( Name: 'MinSize';
          DefaultValue: 'mpSize_1_11';
          PropType: ptEnumerate;
          ValueFlag: VALUES_MICROPDF417_SIZE;
          ValueList: '' ),
      ( Name: 'MaxSize';
          DefaultValue: 'mpSize_4_44';
          PropType: ptEnumerate;
          ValueFlag: VALUES_MICROPDF417_SIZE;
          ValueList: '' ),
      ( Name: 'StretchOrder';
          DefaultValue: 'soRowPrior';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'soRowColumn, soColumnRow, soRowPrior, ' +
                     'soColumnPrior, soGlobal_1, soGlobal_2, soGlobal_3, ' +
                     'soGlobal_4' ),
      ( ), ( ), ( )
    )
  ),

  // [QR Code] -----------------------------------------------------------------

  ( Name: 'QR Code';
    ClassType: TBarcode2D_QRcode;
    SaveFilter: 1;
    BarcodeText: 'QR Code';
    propertiesIndex: 'ABCDEFGHIJWXYZabud012krs_';
    PropertiesCustom: (
      ( Name: 'MinVersion';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 40 ),
      ( Name: 'MaxVersion';
          DefaultValue: '40';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 40 ),
      ( Name: 'EccLevel';
          DefaultValue: 'elLowest';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'elLowest, elMedium, elQuality, elHighest' ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [Micro QR Code] -----------------------------------------------------------

  ( Name: 'Micro QR Code';
    ClassType: TBarcode2D_MicroQRcode;
    SaveFilter: 1;
    BarcodeText: 'Micro QR Code';
    propertiesIndex: 'ABCDEFGHIJWXYZabu012krs_';
    PropertiesCustom: (
      ( Name: 'MinVersion';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 4 ),
      ( Name: 'MaxVersion';
          DefaultValue: '4';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 4 ),
      ( Name: 'EccLevel';
          DefaultValue: 'elLowest';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'elLowest, elMedium, elQuality' ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [Han Xin Code] ------------------------------------------------------------

  ( Name: 'Han Xin Code';
    ClassType: TBarcode2D_HanXinCode;
    SaveFilter: 1;
    BarcodeText: 'Han Xin Code (Chinese Sensible)';
    propertiesIndex: 'ABCDEFGHIJ0123d456k7_';
    PropertiesCustom: (
      ( Name: 'TopQuietZone';
          DefaultValue: '3';
          PropType: ptInteger;
          MinValue: 3;
          MaxValue: 1280 ),
      ( Name: 'BottomQuietZone';
          DefaultValue: '3';
          PropType: ptInteger;
          MinValue: 3;
          MaxValue: 1280 ),
      ( Name: 'LeadingQuietZone';
          DefaultValue: '3';
          PropType: ptInteger;
          MinValue: 3;
          MaxValue: 1280 ),
      ( Name: 'TrailingQuietZone';
          DefaultValue: '3';
          PropType: ptInteger;
          MinValue: 3;
          MaxValue: 1280 ),
      ( Name: 'MinVersion';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 84 ),
      ( Name: 'MaxVersion';
          DefaultValue: '84';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 84 ),
      ( Name: 'EccLevel';
          DefaultValue: 'elLevel_1';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'elLevel_1, elLevel_2, elLevel_3, elLevel_4' ),
      ( Name: 'ReviseVersion5';
          DefaultValue: 'False';
          PropType: ptBoolean ),
      ()
    )
  ),

  // [Grid Matrix] -------------------------------------------------------------

  ( Name: 'Grid Matrix';
    ClassType: TBarcode2D_GridMatrix;
    SaveFilter: 1;
    BarcodeText: 'Grid Matrix';
    propertiesIndex: 'ABCDEFGHIJ[\]^d012k_';
    PropertiesCustom: (
      ( Name: 'MinVersion';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 13 ),
      ( Name: 'MaxVersion';
          DefaultValue: '13';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 13 ),
      ( Name: 'EccLevel';
          DefaultValue: 'elLevel_Recommend';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'elLevel_Recommend, elLevel_1, elLevel_2, elLevel_3, ' +
                     'elLevel_4, elLevel_5, elLevel_LowestRecommend' ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [Compact Matrix] ----------------------------------------------------------

  ( Name: 'Compact Matrix';
    ClassType: TBarcode2D_CompactMatrix;
    SaveFilter: 1;
    BarcodeText: 'Compact Matrix';
    propertiesIndex: 'ABCDEFGHIJ[\]^d0122345k678_';
    PropertiesCustom: (
      ( Name: 'MinVersion';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 32 ),
      ( Name: 'MaxVersion';
          DefaultValue: '32';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 32 ),
      ( Name: 'MinSegments';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 32 ),
      ( Name: 'MaxSegments';
          DefaultValue: '32';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 32 ),
      ( Name: 'StretchOrder';
          DefaultValue: 'soVersionSegment';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'soVersionSegment, soSegmentVersion, soFixAspect, ' +
                     'soFixAspectWithQuietZones'),
      ( Name: 'EccLevel';
          DefaultValue: '1';
          PropType: ptInteger;
          MinValue: 1;
          MaxValue: 8 ),
      ( Name: 'StartWidth';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 99 ),
      ( Name: 'StopWidth';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 99 ),
      ( Name: 'Placement';
          DefaultValue: 'pmSequence';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'pmSequence, pmInterlacement')
    )
  ),

  // [CC-A] --------------------------------------------------------------------

  ( Name: 'CC-A';
    ClassType: TBarcode2D_CCA;
    SaveFilter: 0;
    BarcodeText: '(11)721015(10)1234567890';
    propertiesIndex: 'vBCDEFGHIJOPQR01l_t';
    PropertiesCustom: (
      ( Name: 'MinRows';
          DefaultValue: 'ccaRow_3';
          PropType: ptEnumerate;
          ValueFlag: VALUES_CCA_ROWS;
          ValueList: '' ),
      ( Name: 'MaxRows';
          DefaultValue: 'ccaRow_12';
          PropType: ptEnumerate;
          ValueFlag: VALUES_CCA_ROWS;
          ValueList: '' ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [CC-B] --------------------------------------------------------------------

  ( Name: 'CC-B';
    ClassType: TBarcode2D_CCB;
    SaveFilter: 0;
    BarcodeText: '(11)721015(10)1234567890';
    propertiesIndex: 'vBCDEFGHIJOPQR01l_t';
    PropertiesCustom: (
      ( Name: 'MinRows';
          DefaultValue: 'ccbRow_4';
          PropType: ptEnumerate;
          ValueFlag: VALUES_CCB_ROWS;
          ValueList: '' ),
      ( Name: 'MaxRows';
          DefaultValue: 'ccbRow_44';
          PropType: ptEnumerate;
          ValueFlag: VALUES_CCB_ROWS;
          ValueList: '' ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [CC-C] --------------------------------------------------------------------

  ( Name: 'CC-C';
    ClassType: TBarcode2D_CCC;
    SaveFilter: 0;
    BarcodeText: '02130123456789093724^101234567ABCDEFG';
    propertiesIndex: 'vBCDEFGHIJ01U2fghi3jkmq_4';
    PropertiesCustom: (
      ( Name: 'TopQuietZone';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 1280 ),
      ( Name: 'BottomQuietZone';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 1280 ),
      ( Name: 'TrailingQuietZone';
          DefaultValue: '2';
          PropType: ptInteger;
          MinValue: 0;
          MaxValue: 1280 ),
      ( Name: 'StretchOrder';
          DefaultValue: 'soMaxColumnsInLinear';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'soMaxColumnsInLinear, soMaxColumnsOutLinear, ' +
                     'soRowColumn, soColumnRow' ),
      ( Name: 'Linear';
          DefaultValue: 'EAN-128';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'EAN-128' ),
      ( ), ( ), ( ), ( )
    )
  ),

  // [RSS-14] ------------------------------------------------------------------

  ( Name: 'RSS-14';
    ClassType: TBarcode2D_RSS14;
    SaveFilter: 1;
    BarcodeText: '20012345678909';
    propertiesIndex: 'vBCDEFGHIJKLMNe01opn_';
    PropertiesCustom: (
      ( Name: 'TotalHeight';
          DefaultValue: '33';
          PropType: ptInteger;
          MinValue: 33;
          MaxValue: 99 ),
      ( Name: 'Style';
          DefaultValue: 'rsStandard';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'rsStandard, rsTruncated, rsStacked, ' +
                     'rsStackedOmnidirectional' ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [RSS Limited] -------------------------------------------------------------

  ( Name: 'RSS Limited';
    ClassType: TBarcode2D_RSSLimited;
    SaveFilter: 1;
    BarcodeText: '00098765432105';
    propertiesIndex: 'vBCDEFGHIJKLMNe0opn_';
    PropertiesCustom: (
      ( Name: 'TotalHeight';
          DefaultValue: '10';
          PropType: ptInteger;
          MinValue: 10;
          MaxValue: 99 ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [RSS Expanded] ------------------------------------------------------------

  ( Name: 'RSS Expanded';
    ClassType: TBarcode2D_RSSExpanded;
    SaveFilter: 1;
    BarcodeText: '(01)95012345678903(3103)000123';
    propertiesIndex: 'vBCDEFGHIJKLMN012opn_';
    PropertiesCustom: (
      ( Name: 'RowHeight';
          DefaultValue: '34';
          PropType: ptInteger;
          MinValue: 34;
          MaxValue: 99 ),
      ( Name: 'Style';
          DefaultValue: 'rsStandard';
          PropType: ptEnumerate;
          ValueFlag: -1;
          ValueList: 'rsStandard, rsStacked' ),
      ( Name: 'RowSymbols';
          DefaultValue: '4';
          PropType: ptInteger;
          MinValue: 2;
          MaxValue: 20;
          Increment: 2 ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  )

);
