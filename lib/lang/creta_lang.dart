// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import '../common/creta_common_utils.dart';
import '../model/app_enums.dart';
// import 'creta_lang_en.dart';
// import 'creta_lang_jp.dart';
// import 'creta_lang_kr.dart';
import 'creta_lang_mixin.dart';

//AbsCretaLang CretaLang = CretaLangKR();
Map<String, dynamic> CretaLang = {};

abstract class AbsCretaLang with CretaLangMixin {
  //LanguageType language = LanguageType.korean;

  AbsCretaLang();

  // static AbsCretaLang cretaLangFactory(LanguageType language) {
  //   switch (language) {
  //     case LanguageType.korean:
  //       return CretaLangKR();
  //     case LanguageType.english:
  //       return CretaLangEN();
  //     // case LanguageType.chinese:
  //     //   return CretaLangChn();
  //     case LanguageType.japanese:
  //       return CretaLangJP();
  //     default:
  //       return CretaLangKR();
  //   }
  // }

  static Future<Map<String, dynamic>> cretaLangFactory(LanguageType language) async {
    late String lang;
    switch (language) {
      case LanguageType.korean:
        lang = 'lang/creta_lang_kr.json';
        break;
      case LanguageType.english:
        lang = 'lang/creta_lang_en.json';
        break;
      case LanguageType.japanese:
        lang = 'lang/creta_lang_jp.json';
        break;
      default:
        lang = 'lang/creta_lang_kr.json';
        break;
    }
    return await CretaCommonUtils.readJsonFromAssets(lang);
  }

  static Future<void> changeLang(LanguageType language) async {
    CretaLang = await cretaLangFactory(language);
  }
}
