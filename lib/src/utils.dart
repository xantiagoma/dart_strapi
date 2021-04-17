extension StringExtension on String {
  String purgeEnd(String purgeChar) {
    if (purgeChar == '') {
      throw 'Not empty purgeEnd';
    }
    return endsWith(purgeChar)
        ? substring(0, length - purgeChar.length).purgeEnd(purgeChar)
        : this;
  }
}
