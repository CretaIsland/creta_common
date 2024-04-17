// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import '../model/app_enums.dart';
import 'creta_lang_jp.dart';
import 'creta_lang_kr.dart';

mixin CretaLangMixin {
  String fold = '접기';
  String billInfo = '요금제 정보';
  String searchBar = '검색어를 입력하세요';
  String all = '전체';
  String properties = '속성';
  String mute = '소리없음/있음';
  String cantGoBack = '뒤로가기를 사용할 수 없습니다. 하단의 back 버튼을 누르세요.';

  List<String> basicBookFilter = [
    "용도별(전체)",
    "프리젠테이션용",
    "전차칠판용",
    "디지털사이니지용",
    "디지털바리케이드용",
    "기타",
  ];

  List<String> basicBookSortFilter = [
    "최신순",
    "이름순",
    "좋아요순",
    "조회수순",
  ];

  List<String> basicBookPermissionFilter = [
    "권한별(전체)",
    "소유자",
    "편집자",
    "뷰  어",
  ];

  List<String> publishBookPermissionFilter = [
    "읽기권한",
    "복사권한",
  ];

  List<String> accountMenu = [
    "마이페이지",
    "팀전환",
    "로그아웃",
    "도움말",
    "버전 정보",
    "개발자모드",
    "개발자모드 해제",
  ];

  String makeCopy = '사본 만들기';
  //  String newBook = '새 크레타북';
  String open = '목록으로 돌아가기';
  String printCommand = '인쇄';
  String details = '상세정보';
  String delete = '휴지통으로 보내기';

  String edit = '편집하기';
  String play = '재생하기';
  String addToPlayList = '재생목록에 추가';
  String share = '공유하기';
  String download = '다운로드';
  String uploading = '업로드 중...';
  String copy = '사본만들기';

  String yearBefore = '년 전';
  String monthBefore = '달 전';
  String dayBefore = '일 전';
  String hourBefore = '시간 전';
  String minBefore = '분 전';

  String hours = '시간';
  String minutes = '분';
  String seconds = '초';
  String playTime = '플레이 시간';
  String playDuration = '플레이 간격';
  String forever = '영구히';
  String onlyOnce = '한번만';
  String copyOf = '의 사본';
  String login = '로그인';
  String signUp = '회원가입';
  String home = '크레타 홈페이지로 가기';
  String noAuth = '문서를 열 권한이 없습니다';

  List<String> contentsTypeString = [
    "없음",
    "비디오",
    "이미지",
    "텍스트",
    "유투브",
    "효과",
    "스티커",
    "뮤직",
    "날씨",
    "뉴스",
    "도큐먼트",
    "데이터시트",
    "PDF",
    "3D",
    "웹",
    "스트림",
    "끝",
  ];

  List<String> dailyEnglish = [
    '오늘의\n 명언',
    '오늘의\n 단어',
  ];

  String deleteConfirmTitle = '삭제 확인';
  String deleteConfirm = '정말로 삭제하시겠습니까 ?';
  String contentsDeleted = ' 콘텐츠가 삭제되었습니다';
  String bookDeleted = ' 삭제되었습니다';
  String contentsNotDeleted = ' 콘텐츠가 삭제되지 않았습니다. 잠시 후에 다시 시도하십시오';
  String contentsNotSeleted = ' 삭제할 콘텐츠가 선택되지않았습니다.';
  String frameNotSelected = ' 삭제할 프레임이 선택되지않았습니다.';
  String pageNotSelected = ' 삭제할 페이지가 선택되지않았습니다.';

  String count = "개";

  String text = "텍스트";
  String font = "폰트";
  String fontColor = "글자색";
  String fontAI = "AI 기능";
  String iconColor = "아이콘색";

  String fontNanum_Myeongjo = '나눔명조';
  String fontJua = '유아';
  String fontNanum_Gothic = '나눔고딕';
  String fontNanum_Pen_Script = '나눔펜스크립트';
  String fontNoto_Sans_KR = '노토산스KR';
  String fontPretendard = '프리텐다드';
  String fontMacondo = 'Macondo마콘도';
  List<String> fontStringList = [];

  String close = "종료";
  String save = "저장";
  String remove = "삭제";
  String next = "다음";
  String prev = "이전";
  String cretaBookName = "크레타북 이름";
  String inPublic = "공개하기";
  String invite = "초대하기";
  String entire = "전체";
  String team = "팀";
  String creator = "생성자";
  String create = "생성";

  String myChannel = "내 채널";
  String gotoCommunity = "커뮤니티로 바로가기";

  String confirm = '확인';
  String cancel = '취소';
  String nodatafounded = '자료가 없습니다';
  String needToLoginTitle = '로그인 필요';
  String needToLogin = '로그인이 필요한 기능입니다';

  String noNamepage = '이름없는 페이지';
  String noNameframe = '이름없는 프레임';

  String sampleBookName = "이름없는 크레타북";

  Map<String, int> pageTransitionType2 = {
    "없음": 0,
    "서서히 사라지기": 1, // AnimatedOpacity
    "점점 작아지기": 2, // AnimatedScale , ScaleTransition
    "좌우 슬라이딩": 3, // AnimatedPositioned , SlideTransition
    "상하 슬라이딩": 4, // AnimatedPositioned ,SlideTransition
  };
  // 나타날때,
  Map<String, int> pageTransitionType = {
    "없음": 0,
    "서서히 나타나기": 1, // AnimatedOpacity
    "점점 커지기": 2, // AnimatedScale , ScaleTransition
    "좌우 슬라이딩": 3, // AnimatedPositioned , SlideTransition
    "상하 슬라이딩": 4, // AnimatedPositioned ,SlideTransition
  };

  List<String> animationTypes = [
    "없음",
    "페이드 인",
    "플립",
    "흔들기",
    "흐려지기",
    "커지기",
    "회전",
    "좌우로 움직이기",
    "상하로 움직이기",
  ];

  String autoFontSize = '프레임 크기에 텍스트 크기 조절 ';
  String autoFrameHeight = '텍스트 크기에 프레임 크기 조절 ';
}

class AbsCretaLang with CretaLangMixin {
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
      // case LanguageType.english:
      //   return CretaLangEng();
      // case LanguageType.chinese:
      //   return CretaLangChn();
      case LanguageType.japanese:
        return CretaLangJP();
      default:
        return CretaLangKR();
    }
  }

  static void setLang(LanguageType language) {
    CretaLang = cretaLangFactory(language);
  }
}

late AbsCretaLang CretaLang;
