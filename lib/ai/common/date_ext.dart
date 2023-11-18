extension DateTimeExt on DateTime {
  /// 获取Date的 00:00:00
  DateTime daysFirstSeconds() {
    return DateTime(year, month, day);
  }

  /// 获取Date的 23:59:59
  DateTime daysLastSeconds() {
    final dayTime = DateTime(year, month, day);
    return dayTime
        .add(const Duration(days: 1))
        .subtract(const Duration(seconds: 1));
  }

  /// 获取[year]、[month]、[day]后的日期
  DateTime after({int? year, int? month, int? day}) {
    var date = DateTime(this.year, this.month, this.day);
    if (year != null) {
      date = DateTime(date.year + year, date.month, date.day);
    }
    if (month != null) {
      date = DateTime(date.year, date.month + month, date.day);
    }
    if (day != null) {
      date = DateTime(date.year, date.month, date.day + day);
    }
    return date;
  }
}
