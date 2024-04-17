// ignore_for_file: non_constant_identifier_names, constant_identifier_names, unused_field

import 'creta_lang.dart';

class CretaLangJP extends AbsCretaLang {
  CretaLangJP() {
    fold = '折りたたみ';
    billInfo = '料金制情報';
    searchBar = '検索語を入力してください';
    all = 'すべて';
    properties = 'プロパティ';
    mute = '音なし/あり';
    cantGoBack = '戻るは使用できません。下部の背面ボタンを押してください。';

    basicBookFilter = [
      "用途別（全体）",
      "プレゼンテーション用",
      "戦車黒板用",
      "デジタルサイネージ用",
      "デジタルバリケード用",
      "その他",
    ];

    basicBookSortFilter = [
      "最新順",
      "名前順",
      "いいね",
      "照会手順",
    ];

    basicBookPermissionFilter = [
      "権限別（全体）",
      "所有者",
      "編集者",
      "ビューア",
    ];

    publishBookPermissionFilter = [
      "読む権利",
      "コピー権",
    ];

    accountMenu = [
      "マイページ",
      "チーム転換",
      "ログアウト",
      "ヘルプ",
      "バージョン情報",
      "開発者モード",
      "開発者モード解除",
    ];

    makeCopy = 'コピーの作成';
// newBook = '新しいクレタブック';
    open = 'リストに戻る';
    printCommand = '印刷';
    details = '詳細情報';
    delete = 'ゴミ箱に送る';

    edit = '編集する';
    play = '再生する';
    addToPlayList = 'プレイリストに追加';
    share = '共有する';
    download = 'ダウンロード';
    uploading = 'アップロード中...';
    copy = 'コピー作成';

    yearBefore = '年前';
    monthBefore = '月前';
    dayBefore = '日前';
    hourBefore = '時間前';
    minBefore = '分前';

    hours = '時間';
    minutes = '分';
    seconds = '秒';
    playTime = 'プレイ時間';
    playDuration = 'プレイ間隔';
    forever = '永久に';
    onlyOnce = '一度だけ';
    copyOf = 'のコピー';
    login = 'ログイン';
    signUp = '会員登録';
    home = 'クレタのホームページに行く';
    noAuth = 'ドキュメントを開く権限がありません';

    contentsTypeString = [
      "なし",
      "ビデオ",
      "イメージ",
      "テキスト",
      "YouTube",
      "効果",
      "ステッカー",
      "ミュージック",
      "天気",
      "ニュース",
      "書類",
      "データシート",
      "PDF",
      "3D",
      "ウェブ",
      "ストリーム",
      "終わり",
    ];

    dailyEnglish = [
      '今日の\n名言',
      "今日の\n単語",
    ];

    deleteConfirmTitle = '削除の確認';
    deleteConfirm = '本当に削除しますか？';
    contentsDeleted = 'コンテンツが削除されました';
    bookDeleted = '削除されました';
    contentsNotDeleted = 'コンテンツは削除されませんでした。しばらくしてからもう一度やり直してください。';
    contentsNotSeleted = '削除するコンテンツが選択されていません。';
    frameNotSelected = '削除するフレームが選択されていません。';
    pageNotSelected = '削除するページが選択されていません。';

    count = "犬";

    text = "テキスト";
    font = "フォント";
    fontColor = "文字色";
    fontAI = "AI機能";
    iconColor = "アイコン色";

    fontNanum_Myeongjo = '分かち合い';
    fontJua = '幼児';
    fontNanum_Gothic = '分割ゴシック';
    fontNanum_Pen_Script = '除算ペンスクリプト';
    fontNoto_Sans_KR = '能登山スKR';
    fontPretendard = 'プリテンダード';
    fontMacondo = 'Macondoマコンド';
    fontStringList = [
      fontNanum_Myeongjo,
      fontJua,
      fontNanum_Gothic,
      fontNanum_Pen_Script,
      fontNoto_Sans_KR,
      fontPretendard,
      fontMacondo,
    ];

    close = "終了";
    save = "保存";
    remove = "削除";
    next = "次へ";
    prev = "以前";
    cretaBookName = "クレタブック名";
    inPublic = "公開する";
    invite = "招待する";
    entire = "全体";
    team = "チーム";
    creator = "作成者";
    create = "生成";

    myChannel = "私のチャンネル";
    gotoCommunity = "コミュニティにショートカット";

    confirm = 'OK';
    cancel = 'キャンセル';
    nodatafounded = '資料がありません';
    needToLoginTitle = 'ログインが必要';
    needToLogin = 'ログインが必要な機能です';

    noNamepage = '名前のないページ';
    noNameframe = '名前のないフレーム';

    sampleBookName = "名前のないクレタブック";

    pageTransitionType2 = {
      "なし": 0,
      "徐々に消える": 1, // AnimatedOpacity
      "ますます小さくする": 2, // AnimatedScale , ScaleTransition
      "左右のスライド": 3, // AnimatedPositioned , SlideTransition
      "上下スライド": 4, // AnimatedPositioned ,SlideTransition
    };
//表示されると,
    pageTransitionType = {
      "なし": 0,
      "徐々に現れる": 1, // AnimatedOpacity
      "ますます大きくする": 2, // AnimatedScale , ScaleTransition
      "左右のスライド": 3, // AnimatedPositioned , SlideTransition
      "上下スライド": 4, // AnimatedPositioned ,SlideTransition
    };

    animationTypes = [
      "なし",
      "フェードイン",
      "フリップ",
      "振る",
      "ぼやけ",
      "成長",
      "回転",
      "左右に移動",
      "上下に移動",
    ];

    autoFontSize = 'フレームサイズへのテキストのサイズ変更';
    autoFrameHeight = 'テキストサイズへのフレームのサイズ変更';
  }
}
