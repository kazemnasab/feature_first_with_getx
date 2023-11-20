import 'package:get/get.dart';
import 'lang.dart';


extension Translator on String {
  // Checks whether the language code and country code are present, and
  // whether the key is also present.
  bool get _fullLocaleAndKey {
    return Get.translations.containsKey(
        "${Get.locale!.languageCode}_${Get.locale!.countryCode}") &&
        Get.translations[
        "${Get.locale!.languageCode}_${Get.locale!.countryCode}"]!
            .containsKey(this);
  }

  bool get _featureLocaleAndKey {
    return lang_keys.containsKey(
        "${Get.locale!.languageCode}_${Get.locale!.countryCode}") &&
        lang_keys[
        "${Get.locale!.languageCode}_${Get.locale!.countryCode}"]!
            .containsKey(this);
  }

  // Checks if there is a callback language in the absence of the specific
  // country, and if it contains that key.
  Map<String, String>? get _getSimilarLanguageTranslation {
    final translationsWithNoCountry = Get.translations
        .map((key, value) => MapEntry(key.split("_").first, value));
    final containsKey = translationsWithNoCountry
        .containsKey(Get.locale!.languageCode.split("_").first);

    if (!containsKey) {
      return null;
    }

    return translationsWithNoCountry[Get.locale!.languageCode.split("_").first];
  }

  String get translate {
    if (Get.locale?.languageCode == null) return this;

    if (_featureLocaleAndKey) {
      return lang_keys[
      "${Get.locale!.languageCode}_${Get.locale!.countryCode}"]![this]!;
    }

    if (_fullLocaleAndKey) {
      return Get.translations[
      "${Get.locale!.languageCode}_${Get.locale!.countryCode}"]![this]!;
    }
    final similarTranslation = _getSimilarLanguageTranslation;
    if (similarTranslation != null && similarTranslation.containsKey(this)) {
      return similarTranslation[this]!;
      // If there is no corresponding language or corresponding key, return
      // the key.
    } else if (Get.fallbackLocale != null) {
      final fallback = Get.fallbackLocale!;
      final key = "${fallback.languageCode}_${fallback.countryCode}";

      if (Get.translations.containsKey(key) &&
          Get.translations[key]!.containsKey(this)) {
        return Get.translations[key]![this]!;
      }
      if (Get.translations.containsKey(fallback.languageCode) &&
          Get.translations[fallback.languageCode]!.containsKey(this)) {
        return Get.translations[fallback.languageCode]![this]!;
      }
      return this;
    } else {
      return this;
    }
  }

  String trArgs([List<String> args = const []]) {
    var key = translate;
    if (args.isNotEmpty) {
      for (final arg in args) {
        key = key.replaceFirst(RegExp(r'%s'), arg.toString());
      }
    }
    return key;
  }


}

