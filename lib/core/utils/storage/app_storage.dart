import 'package:sahab_appli/injection_container.dart' as di;
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  SharedPreferences sh = di.sl();

  Future<bool> setIsSkip(bool isSkip) {
    return sh.setBool('is_skip', isSkip);
  }

  bool getIsSkip() {
    return sh.getBool('is_skip') ?? false;
  }

  /// here lang
  Future<bool> setLang(String lang) {
    return sh.setString('lang', lang);
    // return sh.setString('lang', lang);
  }

  String? getLang() {
    return sh.getString('lang');
  }
}

class AppLang {
  AppStorage appStorage = AppStorage();

  getLang() {
    String lang = appStorage.getLang() ?? 'en';
    return lang;
  }
}
