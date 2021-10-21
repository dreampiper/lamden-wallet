class NumberUtils {
  static RegExp _stringifyRegex = RegExp(r"([.]*0)(?!.*\d)");

  static String stringify(double double) =>
      double.toString().replaceAll(_stringifyRegex, "");
}
