import 'dart:ui';

extension ColorExt on Color {
  String toHex() {
    return '#${value.toRadixString(16).padLeft(8, '0').toUpperCase().substring(2)}';
  }
}
