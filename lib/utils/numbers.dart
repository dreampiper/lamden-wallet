class NumberUtils {
  static RegExp _stringifyRegex = RegExp(r"([.]*0)(?!.*\d)");

  static String stringify(double double) {
    if (double == 0) {
      return "0";
    } else {
      return double.toString().replaceAll(_stringifyRegex, "");
    }
  }
}
