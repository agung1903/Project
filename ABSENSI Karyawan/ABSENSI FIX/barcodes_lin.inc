// =============================================================================
//   2D Barcode VCL Components
//
//   Author: HAN JING YU
//   E-Mail: support@han-soft.com
//   WebURL: http://www.han-soft.com
//   Copyright (C) Han-soft Corporation. All rights reserved.
// =============================================================================
//   $Id: barcodes_lin.inc 1780 2013-03-17 18:30:50Z hanjy $
// =============================================================================

LINEAR_NUMBER = 10;

// [Properties] ================================================================

CommonLinearProperties: array['A'..'O'] of TPropertyDefine = (
  ( Name: 'AutoCheckDigit';        // A
    DefaultValue: 'False';
    PropType: ptBoolean ),
  ( Name: 'AutoCheckDigit';        // B
    DefaultValue: 'True';
    PropType: ptBoolean ),
  ( Name: 'SeparatorRowHeight';    // C
    DefaultValue: '1';
    PropType: ptInteger;
    MinValue: 1;
    MaxValue: 9),
  ( Name: 'Height';                // D
    DefaultValue: '80';
    PropType: ptInteger;
    MinValue: -1280;
    MaxValue: 1280 ),
  ( Name: 'DisplayText';           // E
    DefaultValue: 'dtBarcode';
    PropType: ptEnumerate;
    ValueFlag: -1;
    ValueList: 'dtNone, dtBarcode, dtFullEncoded' ),
  ( Name: 'TextFont';              // F
    DefaultValue: 'Tahoma, 8, clBlack, 1';
    PropType: ptFont ),
  ( Name: 'ExtraFontSize';         // G
    DefaultValue: '7';
    PropType: ptInteger;
    MinValue: 0;
    MaxValue: 255 ),
  ( Name: 'TextPosition';          // H
    DefaultValue: 'tpBottomOut';
    PropType: ptEnumerate;
    ValueFlag: -1;
    ValueList: 'tpTopIn, tpTopOut, tpBottomIn, tpBottomOut' ),
  ( Name: 'TextAlignment';         // I
    DefaultValue: 'taCustom';
    PropType: ptEnumerate;
    ValueFlag: -1;
    ValueList: 'taLeft, taCenter, taRight, taJustify, taLeftQuietZone, ' +
               'taCenterQuietZone, taRightQuietZone, taJustifyQuietZone, ' +
               'taCustom' ),
  ( Name: 'TextCSpacing';          // J
    DefaultValue: '1';
    PropType: ptInteger;
    MinValue: -10;
    MaxValue: 10 ),
  ( Name: 'TextHSpacing';          // K
    DefaultValue: '1';
    PropType: ptInteger;
    MinValue: -10;
    MaxValue: 10 ),
  ( Name: 'TextVSpacing';          // L
    DefaultValue: '0';
    PropType: ptInteger;
    MinValue: -10;
    MaxValue: 10 ),
  ( Name: 'ShowQuietZoneMark';     // M
    DefaultValue: 'True';
    PropType: ptBoolean ),
  ( Name: 'LeftQuietZoneSpacing';  // N
    DefaultValue: '1';
    PropType: ptInteger;
    MinValue: 1;
    MaxValue: 11 ),
  ( Name: 'RightQuietZoneSpacing'; // O
    DefaultValue: '1';
    PropType: ptInteger;
    MinValue: 1;
    MaxValue: 11 )
);

// [Barcodes] ==================================================================

LinearComponents: array[0..LINEAR_NUMBER - 1] of TBarcodeComponent = (

  // [RSS-14] ------------------------------------------------------------------

  ( Name: 'RSS-14';
    ClassType: TBarcode2D_RSS14;
    BarcodeText: '20012345678909';
    propertiesIndex: 'A01C';
    PropertiesCustom: (
      ( Name: 'TotalHeight';
        DefaultValue: '34';
        PropType: ptInteger;
        MinValue: 34;
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

  ( Name: 'RSS-Limited';
    ClassType: TBarcode2D_RSSLimited;
    BarcodeText: '00098765432105';
    propertiesIndex: 'A0C';
    PropertiesCustom: (
      ( Name: 'TotalHeight';
        DefaultValue: '11';
        PropType: ptInteger;
        MinValue: 11;
        MaxValue: 99 ),
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [RSS Expanded] ------------------------------------------------------------

  ( Name: 'RSS-Expanded';
    ClassType: TBarcode2D_RSSExpanded;
    BarcodeText: '(01)95012345678903(3103)000123';
    propertiesIndex: '012C';
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
        MaxValue: 20 ),
      ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [EAN-128] -----------------------------------------------------------------

  ( Name: 'EAN-128';
    ClassType: TBarcode1D_EAN128;
    BarcodeText: 'AB1234567890';
    propertiesIndex: 'B0123DEFIHJKL';
    PropertiesCustom: (
      ( Name: 'CheckStart';
        DefaultValue: '3';
        PropType: ptInteger;
        MinValue: 1;
        MaxValue: 10 ),
      ( Name: 'CheckLength';
        DefaultValue: '0';
        PropType: ptInteger;
        MinValue: 0;
        MaxValue: 18 ),
      ( Name: 'InitialSubSet';
        DefaultValue: 'cssSubAuto';
        PropType: ptEnumerate;
        ValueFlag: -1;
        ValueList: 'cssSubAuto, cssSubSetA, cssSubSetB, cssSubSetC' ),
      ( Name: 'EncodeMode';
        DefaultValue: 'cemAuto';
        PropType: ptEnumerate;
        ValueFlag: -1;
        ValueList: 'cemAuto, cemManual' ),
      ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [EAN-13] ------------------------------------------------------------------

  ( Name: 'EAN-13';
    ClassType: TBarcode1D_EAN13;
    BarcodeText: '123456789012';
    propertiesIndex: 'BDEFIHJKLNMO';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [EAN-8] -------------------------------------------------------------------

  ( Name: 'EAN-8';
    ClassType: TBarcode1D_EAN8;
    BarcodeText: '1234567';
    propertiesIndex: 'BDEFIHJKLMNO';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [UPC-A] -------------------------------------------------------------------

  ( Name: 'UPC-A';
    ClassType: TBarcode1D_UPCA;
    BarcodeText: '12345678901';
    propertiesIndex: 'BDEFIHJKLNOG';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [UPC-E] -------------------------------------------------------------------

  ( Name: 'UPC-E';
    ClassType: TBarcode1D_UPCE;
    BarcodeText: '1234567';
    propertiesIndex: 'BDEFIHJKLNOG';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [UPC-E0] ------------------------------------------------------------------

  ( Name: 'UPC-E0';
    ClassType: TBarcode1D_UPCE0;
    BarcodeText: '123456';
    propertiesIndex: 'BDEFIHJKLNOG';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  ),

  // [UPC-E1] ------------------------------------------------------------------
  ( Name: 'UPC-E1';
    ClassType: TBarcode1D_UPCE1;
    BarcodeText: '123456';
    propertiesIndex: 'BDEFIHJKLNOG';
    PropertiesCustom: (
      ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( ), ( )
    )
  )

);
