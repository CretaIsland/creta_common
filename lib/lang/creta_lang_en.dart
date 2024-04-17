// ignore_for_file: non_constant_identifier_names, constant_identifier_names, unused_field

import 'creta_lang.dart';

class CretaLangEN extends AbsCretaLang {
  CretaLangEN() : super() {
    fold = 'fold';
    billInfo = 'Price plan information';
    searchBar = 'Enter your search term';
    all = 'all';
    properties = 'properties';
    mute = 'no sound/present';
    cantGoBack = 'You cannot use GoBack. Press the back button at the bottom.';

    basicBookFilter = [
      'All',
      'presentation',
      'blackboard',
      'digital signage',
      'digital barricade',
      "etc",
    ];

    basicBookSortFilter = [
      "Newest",
      "By name",
      'In order of likes',
      'View order',
    ];

    basicBookPermissionFilter = [
      "all",
      "owner",
      "editor",
      "View a",
    ];

    publishBookPermissionFilter = [
      'Read permission',
      'Copy Permission',
    ];

    accountMenu = [
      "my page",
      'Team Switch',
      "log out",
      "Help",
      "Version Information",
      'Developer Mode',
      'Disable developer mode',
    ];

    makeCopy = 'Make a copy';
// newBook ​​= 'New Crete Book';
    open = 'Back to list';
    printCommand = 'Print';
    details = 'Details';
    delete = 'Send to trash';

    edit = 'Edit';
    play = 'Play';
    addToPlayList = 'Add to playlist';
    share = 'Share';
    download = 'Download';
    uploading = 'Uploading...';
    copy = 'Create a copy';

    yearBefore = 'Years ago';
    monthBefore = 'month ago';
    dayBefore = 'days ago';
    hourBefore = 'hour before';
    minBefore = 'minutes ago';

    hours = 'hours';
    minutes = 'minutes';
    seconds = 'seconds';
    playTime = 'Play Time';
    playDuration = 'Play interval';
    forever = 'Forever';
    onlyOnce = 'Only once';
    copyOf = 'copy of';
    login = 'Login';
    signUp = 'Sign up';
    home = 'Go to Crete homepage';
    noAuth = 'You do not have permission to open the document';

    contentsTypeString = [
      "doesn't exist",
      "video",
      "image",
      "text",
      'YouTube',
      "effect",
      "sticker",
      "music",
      "weather",
      "news",
      "Document",
      "datasheet",
      "PDF",
      "3D",
      "Web",
      "Stream",
      "end",
    ];

    dailyEnglish = [
      "Quote\nof the day",
      "Word\nof the day",
    ];

    deleteConfirmTitle = 'Confirm deletion';
    deleteConfirm = 'Do you really want to delete?';
    contentsDeleted = 'Contents have been deleted';
    bookDeleted = 'Deleted';
    contentsNotDeleted = 'Contents have not been deleted. Please try again later';
    contentsNotSeleted = 'Content to be deleted has not been selected.';
    frameNotSelected = 'The frame to be deleted has not been selected.';
    pageNotSelected = 'The page to be deleted has not been selected.';

    count = "dog";

    text = "Text";
    font = "Font";
    fontColor = "Font color";
    fontAI = "AI function";
    iconColor = "Icon color";

    fontNanum_Myeongjo = 'Nanum Myeongjo';
    fontJua = 'Infant';
    fontNanum_Gothic = 'Nanum Gothic';
    fontNanum_Pen_Script = 'Nanum Pen Script';
    fontNoto_Sans_KR = 'Noto Sans KR';
    fontPretendard = 'Pretendard';
    fontMacondo = 'MacondoMacondo';
    fontStringList = [
      fontNanum_Myeongjo,
      fontJua,
      fontNanum_Gothic,
      fontNanum_Pen_Script,
      fontNoto_Sans_KR,
      fontPretendard,
      fontMacondo,
    ];

    close = "End";
    save = "Save";
    remove = "Delete";
    next = "Next";
    prev = "Previous";
    cretaBookName = "Creta Book Name";
    inPublic = "Public";
    invite = "Invite";
    entire = "entire";
    team = "Team";
    creator = "creator";
    create = "Create";

    myChannel = "My Channel";
    gotoCommunity = "Go to community";

    confirm = 'Confirm';
    cancel = 'cancel';
    nodatafounded = 'No data found';
    needToLoginTitle = 'Require login';
    needToLogin = 'This function requires login';

    noNamepage = 'Page without name';
    noNameframe = 'Frame without name';

    sampleBookName = "Nameless Cretan Book";

    pageTransitionType2 = {
      "None": 0,
      "fades away": 1, // AnimatedOpacity
      "getting smaller": 2, // AnimatedScale , ScaleTransition
      "Sliding left and right": 3, // AnimatedPositioned , SlideTransition
      "Sliding up and down": 4, // AnimatedPositioned ,SlideTransition
    };
// When it appears,
    pageTransitionType = {
      "None": 0,
      "fading in": 1, // AnimatedOpacity
      "getting bigger": 2, // AnimatedScale , ScaleTransition
      "Sliding left and right": 3, // AnimatedPositioned , SlideTransition
      "Sliding up and down": 4, // AnimatedPositioned ,SlideTransition
    };

    animationTypes = [
      "doesn't exist",
      'Fade In',
      "Flip",
      "wave",
      "blurring",
      'get bigger',
      "rotation",
      'Move left and right',
      'Move up and down',
    ];

    autoFontSize = 'Adjust text size to frame size';
    autoFrameHeight = 'Adjust frame size to text size';
  }
}
