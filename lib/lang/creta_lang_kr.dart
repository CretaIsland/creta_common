// ignore_for_file: non_constant_identifier_names, constant_identifier_names, unused_field

import 'creta_lang.dart';

class CretaLangKR extends AbsCretaLang {
  CretaLangKR() : super() {
    fold = '접기';
    billInfo = '요금제 정보';
    searchBar = '검색어를 입력하세요';
    all = '전체';
    properties = '속성';
    mute = '소리없음/있음';
    cantGoBack = '뒤로가기를 사용할 수 없습니다. 하단의 back 버튼을 누르세요.';

    basicBookFilter = [
      "용도별(전체)",
      "프리젠테이션용",
      "전차칠판용",
      "디지털사이니지용",
      "디지털바리케이드용",
      "기타",
    ];

    basicBookSortFilter = [
      "최신순",
      "이름순",
      "좋아요순",
      "조회수순",
    ];

    basicBookPermissionFilter = [
      "권한별(전체)",
      "소유자",
      "편집자",
      "뷰  어",
    ];

    publishBookPermissionFilter = [
      "읽기권한",
      "복사권한",
    ];

    accountMenu = [
      "마이페이지",
      "팀전환",
      "로그아웃",
      "도움말",
      "버전 정보",
      "개발자모드",
      "개발자모드 해제",
    ];

    makeCopy = '사본 만들기';
    //  newBook = '새 크레타북';
    open = '목록으로 돌아가기';
    printCommand = '인쇄';
    details = '상세정보';
    delete = '휴지통으로 보내기';

    edit = '편집하기';
    play = '재생하기';
    addToPlayList = '재생목록에 추가';
    share = '공유하기';
    download = '다운로드';
    uploading = '업로드 중...';
    copy = '사본만들기';

    yearBefore = '년 전';
    monthBefore = '달 전';
    dayBefore = '일 전';
    hourBefore = '시간 전';
    minBefore = '분 전';

    hours = '시간';
    minutes = '분';
    seconds = '초';
    playTime = '플레이 시간';
    playDuration = '플레이 간격';
    forever = '영구히';
    onlyOnce = '한번만';
    copyOf = '의 사본';
    login = '로그인';
    signUp = '회원가입';
    home = '크레타 홈페이지로 가기';
    noAuth = '문서를 열 권한이 없습니다';

    contentsTypeString = [
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

    dailyEnglish = [
      '오늘의\n 명언',
      '오늘의\n 단어',
    ];

    deleteConfirmTitle = '삭제 확인';
    deleteConfirm = '정말로 삭제하시겠습니까 ?';
    contentsDeleted = ' 콘텐츠가 삭제되었습니다';
    bookDeleted = ' 삭제되었습니다';
    contentsNotDeleted = ' 콘텐츠가 삭제되지 않았습니다. 잠시 후에 다시 시도하십시오';
    contentsNotSeleted = ' 삭제할 콘텐츠가 선택되지않았습니다.';
    frameNotSelected = ' 삭제할 프레임이 선택되지않았습니다.';
    pageNotSelected = ' 삭제할 페이지가 선택되지않았습니다.';

    count = "개";

    text = "텍스트";
    font = "폰트";
    fontColor = "글자색";
    fontAI = "AI 기능";
    iconColor = "아이콘색";

    fontNanum_Myeongjo = '나눔명조';
    fontJua = '유아';
    fontNanum_Gothic = '나눔고딕';
    fontNanum_Pen_Script = '나눔펜스크립트';
    fontNoto_Sans_KR = '노토산스KR';
    fontPretendard = '프리텐다드';
    fontMacondo = 'Macondo마콘도';
    fontStringList = [
      fontNanum_Myeongjo,
      fontJua,
      fontNanum_Gothic,
      fontNanum_Pen_Script,
      fontNoto_Sans_KR,
      fontPretendard,
      fontMacondo,
    ];

    close = "종료";
    save = "저장";
    remove = "삭제";
    next = "다음";
    prev = "이전";
    cretaBookName = "크레타북 이름";
    inPublic = "공개하기";
    invite = "초대하기";
    entire = "전체";
    team = "팀";
    creator = "생성자";
    create = "생성";

    myChannel = "내 채널";
    gotoCommunity = "커뮤니티로 바로가기";

    confirm = '확인';
    cancel = '취소';
    nodatafounded = '자료가 없습니다';
    needToLoginTitle = '로그인 필요';
    needToLogin = '로그인이 필요한 기능입니다';

    noNamepage = '이름없는 페이지';
    noNameframe = '이름없는 프레임';

    sampleBookName = "이름없는 크레타북";

    pageTransitionType2 = {
      "없음": 0,
      "서서히 사라지기": 1, // AnimatedOpacity
      "점점 작아지기": 2, // AnimatedScale , ScaleTransition
      "좌우 슬라이딩": 3, // AnimatedPositioned , SlideTransition
      "상하 슬라이딩": 4, // AnimatedPositioned ,SlideTransition
    };
    // 나타날때,
    pageTransitionType = {
      "없음": 0,
      "서서히 나타나기": 1, // AnimatedOpacity
      "점점 커지기": 2, // AnimatedScale , ScaleTransition
      "좌우 슬라이딩": 3, // AnimatedPositioned , SlideTransition
      "상하 슬라이딩": 4, // AnimatedPositioned ,SlideTransition
    };

    animationTypes = [
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

    autoFontSize = '프레임 크기에 텍스트 크기 조절 ';
    autoFrameHeight = '텍스트 크기에 프레임 크기 조절 ';
  }
}
