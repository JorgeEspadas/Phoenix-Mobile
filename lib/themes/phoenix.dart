
class PhoenixTheme {
  static final PhoenixTheme _instance = PhoenixTheme._internal();

  PhoenixTheme._internal();

  factory PhoenixTheme() {
    return _instance;
  }
}