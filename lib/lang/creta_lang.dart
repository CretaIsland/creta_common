// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import '../model/app_enums.dart';
import 'creta_lang_en.dart';
import 'creta_lang_jp.dart';
import 'creta_lang_kr.dart';
import 'creta_lang_mixin.dart';

AbsCretaLang CretaLang = CretaLangKR();

abstract class AbsCretaLang with CretaLangMixin {
  //LanguageType language = LanguageType.korean;

  AbsCretaLang() {
    fontStringList = [
      fontNanum_Myeongjo,
      fontJua,
      fontNanum_Gothic,
      fontNanum_Pen_Script,
      fontNoto_Sans_KR,
      fontPretendard,
      fontMacondo,
    ];
  }

  static AbsCretaLang cretaLangFactory(LanguageType language) {
    switch (language) {
      case LanguageType.korean:
        return CretaLangKR();
      case LanguageType.english:
        return CretaLangEN();
      // case LanguageType.chinese:
      //   return CretaLangChn();
      case LanguageType.japanese:
        return CretaLangJP();
      default:
        return CretaLangKR();
    }
  }

  static void changeLang(LanguageType language) {
    CretaLang = cretaLangFactory(language);
  }
}
