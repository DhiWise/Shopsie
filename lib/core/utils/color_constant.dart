import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color gray52 = fromHex('#f9faff');

  static Color gray51 = fromHex('#fcfcfc');

  static Color black90090 = fromHex('#90000000');

  static Color indigoA200 = fromHex('#5f6aff');

  static Color bluegray10075 = fromHex('#75d4cfca');

  static Color gray50 = fromHex('#f7f8fa');

  static Color black900 = fromHex('#000000');

  static Color whiteA700Ab = fromHex('#abffffff');

  static Color black901 = fromHex('#00032d');

  static Color gray600 = fromHex('#7e7a77');

  static Color gray700 = fromHex('#626260');

  static Color gray400 = fromHex('#cbbcb1');

  static Color gray500 = fromHex('#a1a1a1');

  static Color gray901 = fromHex('#181818');

  static Color gray604 = fromHex('#808080');

  static Color gray902 = fromHex('#1e232c');

  static Color indigo50 = fromHex('#e8ecf4');

  static Color gray602 = fromHex('#6a707c');

  static Color gray900 = fromHex('#222326');

  static Color bluegray100 = fromHex('#d4cfca');

  static Color bluegray10063 = fromHex('#63d4cfca');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray300 = fromHex('#dfdbd9');

  static Color blue50 = fromHex('#eaecff');

  static Color indigo100 = fromHex('#c1c5fe');

  static Color bluegray401 = fromHex('#8a8a8a');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#d4cfcb');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
