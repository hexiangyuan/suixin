extension BoolParsing on String {
  bool toBool() {
    return toLowerCase() == 'true';
  }
}

/// 适配 `Text` 的 `overflow` 为 `TextOverflow.ellipsis` 时，会将长字母或者数字串整体显示省略的问题
String breakWord(String word) {
  if (word.isEmpty) {
    return word;
  }
  String breakWord = ' ';
  for (var element in word.runes) {
    breakWord += String.fromCharCode(element);
    breakWord += '\u200B';
  }
  return breakWord;
}



String getHHmmss(int times) {
  int hours = times ~/ 3600;
  int minutes = (times ~/ 60) % 60;
  int seconds = times % 60;
  
  String formattedHours = hours < 10 ? "0$hours" : hours.toString();
  String formattedMinutes = minutes < 10 ? "0$minutes" : minutes.toString();
  String formattedSeconds = seconds < 10 ? "0$seconds" : seconds.toString();
  
  return "$formattedHours:$formattedMinutes:$formattedSeconds";
}