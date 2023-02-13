const int GOTHIC_BASE_VERSION = 2;
const string MEM_HELPER_NAME = "MEMHLP";
const int ZERR_TYPE_OK = 0;
const int ZERR_TYPE_INFO = 1;
const int ZERR_TYPE_WARN = 2;
const int ZERR_TYPE_FAULT = 3;
const int ZERR_TYPE_FATAL = 4;
const int ZERR_REPORTTOZSPY = 1;
const int ZERR_SHOWERRORBOX = 3;
const int ZERR_PRINTSTACKTRACE = 2;
const int ZERR_ERRORBOXONLYFORFIRST = 1;
const int ZERR_STACKTRACEONLYFORFIRST = 0;
const string ZERR_DEBUG_PREFIX = "Debug: ";
const int ZERR_DEBUG_TOSPY = 1;
const int ZERR_DEBUG_TYPE = 1;
const int ZERR_DEBUG_TOSCREEN = 0;
const int ZERR_DEBUG_ERRORBOX = 0;
const int CONTENTPARSERADDRESS = 11223232;
const int VFXPARSERPOINTERADDRESS = 9234156;
const int MENUPARSERPOINTERADDRESS = 9248360;
const int PFXPARSERPOINTERADDRESS = 9278004;
const int SHOWDEBUGADDRESS = 11232372;
const int MEMINT_MENUARRAYOFFSET = 9248324;
const int MEMINT_MENUITEMARRAYADDRES = 9248508;
const int MEMINT_OGAME_POINTER_ADDRESS = 11208836;
const int MEMINT_ZTIMER_ADDRESS = 10073044;
const int MEMINT_OCINFORMATIONMANAGER_ADDRESS = 11191384;
const int MEMINT_GAMEMAN_POINTER_ADDRESS = 9185624;
const int CRC_TABLE_ADDRESS = 8598048;
const int MEMINT_KEYEVENT_OFFSET = 9246328;
const int MEMINT_KEYTOGGLE_OFFSET = 9246904;
const int MEMINT_KEYBUFFER_OFFSET = 9248080;
const int SPAWN_INSERTTIME_MAX_ADDRESS = 9153740;
const int SPAWN_INSERTRANGE_ADDRESS = 9153744;
const int SPAWN_REMOVERANGE_ADDRESS = 9153748;
const int GAME_HOLDTIME_ADDRESS = 11208840;
const int OCNPC_ISENABLEDTALKBOX_ADDRESS = 9142548;
const int OCNPC_ISENABLEDTALKBOXPLAYER_ADDRESS = 9142552;
const int OCNPC_ISENABLEDTALKBOXAMBIENT_ADDRESS = 11216504;
const int OCNPC_ISENABLEDTALKBOXNOISE_ADDRESS = 11216508;
const int SCREEN_OFFSET = 11232360;
const int ZOPTIONS_POINTER_ADDRESS = 9230728;
const int ZGAMEOPTIONS_POINTER_ADDRESS = 9230732;
const int BSPFRAMECTR_ADDRESS = 9259332;
const int PC_TICKSPERMS_ADDRESS = 9255828;
const int OCMOBFIRE_VTBL = 8638876;
const int ZCMOVER_VTBL = 8627324;
const int OCMOB_VTBL = 8639700;
const int OCMOBINTER_VTBL = 8639884;
const int OCMOBLOCKABLE_VTBL = 8637628;
const int OCMOBCONTAINER_VTBL = 8637284;
const int OCMOBDOOR_VTBL = 8638548;
const int OCITEM_VTBL = 8636420;
const int OCNPC_VTBL = 8640292;
const int ZCVOBLIGHT_VTBL = 8624756;
const int OCMOBWHEEL_VTBL = 8637956;
const int OCMOBLADDER_VTBL = 8638252;
const int OCMOBSWITCH_VTBL = 8636988;
const int OCMOBBED_VTBL = 8636692;
const int KEY_ESCAPE = 1;
const int KEY_1 = 2;
const int KEY_2 = 3;
const int KEY_3 = 4;
const int KEY_4 = 5;
const int KEY_5 = 6;
const int KEY_6 = 7;
const int KEY_7 = 8;
const int KEY_8 = 9;
const int KEY_9 = 10;
const int KEY_0 = 11;
const int KEY_MINUS = 12;
const int KEY_EQUALS = 13;
const int KEY_BACK = 14;
const int KEY_TAB = 15;
const int KEY_Q = 16;
const int KEY_W = 17;
const int KEY_E = 18;
const int KEY_R = 19;
const int KEY_T = 20;
const int KEY_Y = 21;
const int KEY_U = 22;
const int KEY_I = 23;
const int KEY_O = 24;
const int KEY_P = 25;
const int KEY_LBRACKET = 26;
const int KEY_RBRACKET = 27;
const int KEY_RETURN = 28;
const int KEY_LCONTROL = 29;
const int KEY_A = 30;
const int KEY_S = 31;
const int KEY_D = 32;
const int KEY_F = 33;
const int KEY_G = 34;
const int KEY_H = 35;
const int KEY_J = 36;
const int KEY_K = 37;
const int KEY_L = 38;
const int KEY_SEMICOLON = 39;
const int KEY_APOSTROPHE = 40;
const int KEY_GRAVE = 41;
const int KEY_LSHIFT = 42;
const int KEY_BACKSLASH = 43;
const int KEY_Z = 44;
const int KEY_X = 45;
const int KEY_C = 46;
const int KEY_V = 47;
const int KEY_B = 48;
const int KEY_N = 49;
const int KEY_M = 50;
const int KEY_COMMA = 51;
const int KEY_PERIOD = 52;
const int KEY_SLASH = 53;
const int KEY_RSHIFT = 54;
const int KEY_MULTIPLY = 55;
const int KEY_LMENU = 56;
const int KEY_SPACE = 57;
const int KEY_CAPITAL = 58;
const int KEY_F1 = 59;
const int KEY_F2 = 60;
const int KEY_F3 = 61;
const int KEY_F4 = 62;
const int KEY_F5 = 63;
const int KEY_F6 = 64;
const int KEY_F7 = 65;
const int KEY_F8 = 66;
const int KEY_F9 = 67;
const int KEY_F10 = 68;
const int KEY_NUMLOCK = 69;
const int KEY_SCROLL = 70;
const int KEY_NUMPAD7 = 71;
const int KEY_NUMPAD8 = 72;
const int KEY_NUMPAD9 = 73;
const int KEY_SUBTRACT = 74;
const int KEY_NUMPAD4 = 75;
const int KEY_NUMPAD5 = 76;
const int KEY_NUMPAD6 = 77;
const int KEY_ADD = 78;
const int KEY_NUMPAD1 = 79;
const int KEY_NUMPAD2 = 80;
const int KEY_NUMPAD3 = 81;
const int KEY_NUMPAD0 = 82;
const int KEY_DECIMAL = 83;
const int KEY_OEM_102 = 86;
const int KEY_F11 = 87;
const int KEY_F12 = 88;
const int KEY_F13 = 100;
const int KEY_F14 = 101;
const int KEY_F15 = 102;
const int KEY_KANA = 112;
const int KEY_ABNT_C1 = 115;
const int KEY_CONVERT = 121;
const int KEY_NOCONVERT = 123;
const int KEY_YEN = 124;
const int KEY_ABNT_C2 = 125;
const int KEY_NUMPADEQUALS = 141;
const int KEY_PREVTRACK = 144;
const int KEY_AT = 145;
const int KEY_COLON = 146;
const int KEY_UNDERLINE = 147;
const int KEY_KANJI = 148;
const int KEY_STOP = 149;
const int KEY_AX = 150;
const int KEY_UNLABELED = 151;
const int KEY_NEXTTRACK = 153;
const int KEY_NUMPADENTER = 156;
const int KEY_RCONTROL = 157;
const int KEY_MUTE = 160;
const int KEY_CALCULATOR = 161;
const int KEY_PLAYPAUSE = 162;
const int KEY_MEDIASTOP = 164;
const int KEY_VOLUMEDOWN = 174;
const int KEY_VOLUMEUP = 176;
const int KEY_WEBHOME = 178;
const int KEY_NUMPADCOMMA = 179;
const int KEY_DIVIDE = 181;
const int KEY_SYSRQ = 183;
const int KEY_RMENU = 184;
const int KEY_PAUSE = 197;
const int KEY_HOME = 199;
const int KEY_UPARROW = 200;
const int KEY_PRIOR = 201;
const int KEY_LEFTARROW = 203;
const int KEY_RIGHTARROW = 205;
const int KEY_END = 207;
const int KEY_DOWNARROW = 208;
const int KEY_NEXT = 209;
const int KEY_INSERT = 210;
const int KEY_DELETE = 211;
const int KEY_LWIN = 219;
const int KEY_RWIN = 220;
const int KEY_APPS = 221;
const int KEY_POWER = 222;
const int KEY_SLEEP = 223;
const int KEY_WAKE = 227;
const int KEY_WEBSEARCH = 229;
const int KEY_WEBFAVORITES = 230;
const int KEY_WEBREFRESH = 231;
const int KEY_WEBSTOP = 232;
const int KEY_WEBFORWARD = 233;
const int KEY_WEBBACK = 234;
const int KEY_MYCOMPUTER = 235;
const int KEY_MAIL = 236;
const int KEY_MEDIASELECT = 237;
const int MOUSE_BUTTONLEFT = 524;
const int MOUSE_BUTTONRIGHT = 525;
const int MOUSE_BUTTONMID = 526;
const int MOUSE_XBUTTON1 = 527;
const int MOUSE_XBUTTON2 = 528;
const int MOUSE_XBUTTON3 = 529;
const int MOUSE_XBUTTON4 = 530;
const int MOUSE_XBUTTON5 = 531;