class LanguageUtils {
  /**
   * 获取 api接口 header 语言标识
   * headers[lang] = "zh"
   */
  static String getHttpApiLanguageCode(String language) {
    if (language.isEmpty) {
      return "en";
    }

    switch (language) {
      case "zh_CN":
        return "cn";
      case "zh_TW":
        return "hk";
      default:
        return language;
    }
  }

  /// 获取[language]对应的 zendesk 语言标识
  static String getZendeskLanguageCode(String language) {
    if (language.isEmpty) {
      return 'en-us';
    }
    switch (language) {
      case 'zh_CN':
        return 'zh-cn';
      case 'zh_TW':
        return 'zh-tw';
      case 'ja':
        return 'ja';
      case 'tr':
        return 'tr';
      case 'ko':
        return 'ko-kr';
      default:
        return 'en-us';
    }
  }
}

/// 服务器的语言映射关系
class ApiParamsLangUtils {
  String? tagToLangString(String tag) {
    switch (tag) {
      case "en":
        return "English";
      case "ja":
        return "日本語";
      case "hi":
        return "हिन्दी";
      case "in":
        return "Bahasa Indonesia";
      case "ru":
        return "Pусский";
      case "es":
        return "Español";
      case "tr":
        return "Türkçe";
      case "vi":
        return "Tiếng Việt";
      case "th":
        return "ภาษาไทย";
      case "hk":
        return "繁體中文";
      case "zh":
      case "cn":
        return "简体中文";
    }
    return null;
  }

  String? langToTag(String lang) {
    switch (lang) {
      case "English":
        return "en";
      case "日本語":
        return "ja";
      case "हिन्दी":
        return "hi";
      case "Bahasa Indonesia":
        return "in";
      case "Pусский":
        return "ru";
      case "Español":
        return "es";
      case "Türkçe":
        return "tr";
      case "Tiếng Việt":
        return "vi";
      case "ภาษาไทย":
        return "th";
      case "繁體中文":
        return "hk";
      case "简体中文":
        return "cn";
    }
    return null;
  }
}
