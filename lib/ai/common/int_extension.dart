extension IntExtension on int {
  // 毫秒时间戳转时分秒
  String millisecondsToHHmmss() {
    final now = DateTime.now().millisecondsSinceEpoch;
    final a = (this - now) / 1000;
    final b = Duration(seconds: a.toInt());
    final hstr = b.inHours.toString().padLeft(2, "0");
    final mstr = b.inMinutes.remainder(60).toString().padLeft(2, "0");
    final sstr = b.inSeconds.remainder(60).toString().padLeft(2, "0");
    return "$hstr:$mstr:$sstr";
  }

  Duration get duration {
    final now = DateTime.now().millisecondsSinceEpoch;
    final a = (this - now) / 1000;
    final b = Duration(seconds: a.toInt());
    return b;
  }

  int get timeIntervalSinceNow {
    final now = DateTime.now().millisecondsSinceEpoch;
    return this - now;
  }
}
