func int ISSPELLACTIVE(var C_NPC SLF, var int NR) {
    var int RESULT;
    RESULT = OCNPC_ISSPELLACTIVE(SLF, NR);
    if ((RESULT) == (0)) {
        return FALSE;
    };
    return TRUE;
}

func void GETITEMHOLDER() {
    var C_NPC SELFBAK;
    ITEM_HOLDER = HLP_GETNPC(51303);
    if (!(HLP_ISVALIDNPC(ITEM_HOLDER))) {
        SELFBAK = HLP_GETNPC(1815);
        WLD_INSERTNPC(51303, TOT);
        ITEM_HOLDER = HLP_GETNPC(51303);
        SELF = HLP_GETNPC(21086);
    };
}

func int OCNPC_GETMODEL(var int NPC) {
    CALL__THISCALL(MEM_INSTTOPTR(NPC), OCNPC__GETMODEL);
    return CALL_RETVALASINT();
}

func int NPC_STARTANIMATION(var C_NPC SLF, var string ANINAME) {
    var int ZERO;
    var int CALL;
    var int ANINAMEPTR;
    var int PTR;
    PTR = OCNPC_GETMODEL(21094);
    ANINAMEPTR = _@S(ANINAME);
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(ZERO));
        CALL_PTRPARAM(_@(ANINAMEPTR));
        CALL__THISCALL(_@(PTR), ZCMODEL_STARTANIMATION);
        CALL = CALL_END();
    };
    return CALL_RETVALASINT();
}

func void SETINVINVIBLEON() {
    HERO.AIVAR[4] = TRUE;
    MAKEHEROGHOST(50);
}

func void SETTOTALINVINVIBLEON() {
    MAKEHEROGHOST(100);
}

func int WLD_GETWAYPOINTBYNAME(var string WPNAME) {
    var int LABEL;
    MEM_INITGLOBALINST();
    MEM_ASSIGNINST(21109, MEM_WAYNET.WPLIST_NEXT);
    MEM_INITLABELS();
    LABEL = MEM_STACKPOS.POSITION;
    if (!(CURITEM.DATA)) {
        return 0;
    };
    MEM_ASSIGNINST(21108, CURITEM.DATA);
    if (HLP_STRCMP(CURWP.NAME, WPNAME)) {
        return MEM_INSTGETOFFSET(21108);
    };
    if (!(CURITEM.NEXT)) {
        return 0;
    };
    MEM_ASSIGNINST(21110, MEM_INSTGETOFFSET(21109));
    MEM_ASSIGNINST(21109, LASTITEM.NEXT);
    MEM_STACKPOS.POSITION = LABEL;
    return 0;
}

func void SETPOSITIONWORLDVEC(var int VOBPTR, var int VECPTR) {
    CALL_PTRPARAM(VECPTR);
    CALL__THISCALL(VOBPTR, ZCVOB__SETPOSITIONWORLD);
}

func void _AI_TELEPORTALWAYS(var int NPC_PTR, var string WP) {
    var ZCVOB NPC_VOB;
    MEM_ASSIGNINST(21133, WLD_GETWAYPOINTBYNAME(WP));
    NPC_VOB = _^(NPC_PTR);
    ZCVOB_SETCOLL(NPC_PTR, FALSE);
    NPC_VOB.TRAFOOBJTOWORLD[3] = VOB.POS[0];
    NPC_VOB.TRAFOOBJTOWORLD[7] = VOB.POS[1];
    NPC_VOB.TRAFOOBJTOWORLD[11] = VOB.POS[2];
    ZCVOB_SETCOLL(NPC_PTR, TRUE);
}

func int GETOFFSETBYPARSERSYMBOL(var string SYMBOL) {
    var ZCPAR_SYMBOL SYMB;
    if ((MEM_FINDPARSERSYMBOL(SYMBOL)) != (-(1))) {
        SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, MEM_FINDPARSERSYMBOL(SYMBOL)));
        return SYMB.OFFSET;
    };
    return -(1);
}

func int PARSERSYMBOLISVOB(var string SYMBOL) {
    var ZCVOB VOB;
    var int PTR;
    PTR = MEM_SEARCHVOBBYNAME(SYMBOL);
    if ((PTR) == (-(1))) {
        return FALSE;
    };
    VOB = MEM_PTRTOINST(PTR);
    return (VOB._VTBL) != (0);
}

func void TELEPORTHEROTOOCNPC(var OCNPC NPC) {
    TELEPORTNPCTOWP(50091, NPC.WPNAME);
}

func void TELEPORTHEROTOVOB(var string VOBNAME) {
    var ZCVOB VOB;
    VOB = MEM_PTRTOINST(MEM_SEARCHVOBBYNAME(VOBNAME));
    TELEPORTHEROTOPOS(VOB.TRAFOOBJTOWORLD[3], VOB.TRAFOOBJTOWORLD[7], VOB.TRAFOOBJTOWORLD[11]);
}

func void FOLLOWINGNPC_LOOP(var int NPCINSTANCE) {
    var C_NPC NPC;
    NPC = HLP_GETNPC(NPCINSTANCE);
    if ((NPC_ISINSTATE(NPC, 61599)) || (NPC_ISINSTATE(HERO, 61599))) {
        NPC_CLEARAIQUEUE(HERO);
    };
    AI_GOTONPC(HERO, NPC);
}

func void STOPFOLLOWINGNPC() {
    FF_REMOVE(21169);
    NPC_CLEARAIQUEUE(HERO);
}

func void STOPALLACTIVESOUNDS() {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL__THISCALL(_@(ZSOUND), ZCSNDSYS_MSS__REMOVEALLACTIVESOUNDS);
        CALL = CALL_END();
    };
}

func int WLD_TIMEISBETWEEN(var int X, var int Y) {
    return ((WLD_GETHOUR()) > (X)) || ((WLD_GETHOUR()) < (Y));
}

func void ENABLESAVEGAME(var int ENABLE) {
    var ZCMENUITEM SAVEMENUITEM;
    var int SAVEMENUITEMPTR;
    SAVEMENUITEMPTR = MEM_GETMENUITEMBYSTRING("MENUITEM_MAIN_INGAME_SAVEGAME_SAVE");
    if ((SAVEMENUITEMPTR) != (0)) {
        SAVEMENUITEM = _^(SAVEMENUITEMPTR);
        if (ENABLE) {
            SAVEMENUITEM.M_PARITEMFLAGS = (SAVEMENUITEM.M_PARITEMFLAGS) & (~(256));
        } else {
            SAVEMENUITEM.M_PARITEMFLAGS = (SAVEMENUITEM.M_PARITEMFLAGS) | (256);
        };
    };
}

func void PRINTSCREENS(var string MSG, var int POSX, var int POSY, var string FONT, var int TIMESEC) {
    PRINTS(MSG);
}

func void AI_LOGENTRY(var string TOPIC, var string TEXT) {
    AI_FUNCTION_SS(SELF, 32158, TOPIC, TEXT);
}

func string I2S(var int INTEGER) {
    return INTTOSTRING(INTEGER);
}

func void OCNPCSTATES_CHANGEROUTINE_HOOK() {
    MEM_FATAL(MEM_READSTRING(EAX));
}

func void INIT_OCNPCSTATES_CHANGEROUTINE_ERROR() {
    var int ADDR;
    MEMORYPROTECTIONOVERRIDE(ADDR, 5);
    WRITENOP(ADDR, 5);
    HOOKENGINEF(ADDR, 5, 21258);
}

func void MISSINGVISUALFALLBACKHOOK() {
    ZCVISUAL_LOADVISUAL("DEFAULT.3DS", (ESI) + (200));
}

func void INIT_MISSINGVISUALFALLBACK() {
}

func void OCNPC__GETNEXTENEMY_REPLACEHOOK() {
    var C_NPC NPC;
    var C_NPC THIS;
    THIS = _^(EBP);
    NPC = _^(EDI);
    if (((THIS.AIVAR[15]) == (TRUE)) && ((NPC.AIVAR[15]) == (TRUE))) {
        ECX = TRUE;
    };
    if (NPC_CANSEENPC(THIS, NPC)) {
        ECX = FALSE;
    };
    ECX = TRUE;
}

func void INIT_GETNEXTENEMYFIX() {
    WRITENOP(7556941, 46);
    HOOKENGINEF(7556941, 46, 21263);
}

func void INIT_FIXCONSOLEAUTOCOMPLETION() {
    MEMORYPROTECTIONOVERRIDE(7948720, 21);
    WRITENOP(7948720, 2);
    WRITENOP(7948722, 2);
    WRITENOP(7948724, 3);
    WRITENOP(7948727, 6);
    WRITENOP(7948733, 6);
    WRITENOP(7948739, 2);
}

func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK() {
    var int PARTYMEMBER;
    var int ISDEAD;
    var C_NPC FOCUS;
    FOCUS = _^(EBP);
    ISDEAD = NPC_ISDEAD(FOCUS);
    PARTYMEMBER = FOCUS.AIVAR[15];
    EAX = (!(ISDEAD)) && (!(PARTYMEMBER));
}

func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK2() {
    var OCNPC HER;
    var C_NPC FOCUS;
    if ((EDI) == (0)) {
        return;
    };
    FOCUS = _^(EDI);
    if (FOCUS.AIVAR[15]) {
        HER = HLP_GETNPC(1819);
        HER.FOCUS_VOB = 0;
    };
    CALL_PTRPARAM(EDI);
    CALL__THISCALL(ESI, 7038096);
}

func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK3() {
    var C_NPC FOCUS;
    FOCUS = _^(EDI);
    if (FOCUS.AIVAR[15]) {
        EAX = 0;
    };
    EAX = FOCUS.ATTRIBUTE[0];
}

func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK4() {
    var OCNPC HER;
    var int CANFOCUS;
    var C_NPC FOCUS;
    FOCUS = _^(EDI);
    if (((FOCUS.AIVAR[15]) == (TRUE)) && ((NPC_ISINFIGHTMODE(HERO, FMODE_NONE)) == (FALSE))) {
        CANFOCUS = FALSE;
        HER = HLP_GETNPC(1819);
        HER.FOCUS_VOB = 0;
    };
    CANFOCUS = !(FOCUS.NOFOCUS);
    EAX = !(CANFOCUS);
}

func void INIT_HIDEFOCUSFORPARTYMEMBERS() {
    MEMORYPROTECTIONOVERRIDE(7552695, 6);
    WRITENOP(7552695, 6);
    HOOKENGINEF(7552695, 6, 21268);
    MEMORYPROTECTIONOVERRIDE(7552676, 6);
    WRITENOP(7552676, 6);
    HOOKENGINEF(7552676, 6, 21268);
    MEMORYPROTECTIONOVERRIDE(6928711, 8);
    WRITENOP(6928711, 8);
    HOOKENGINEF(6928711, 8, 21272);
    MEMORYPROTECTIONOVERRIDE(7551031, 6);
    WRITENOP(7551031, 6);
    HOOKENGINEF(7551031, 6, 21275);
    MEMORYPROTECTIONOVERRIDE(7091931, 6);
    WRITENOP(7091931, 6);
    HOOKENGINEF(7091931, 6, 21277);
}

func void INIT_REMOVEITEMDRINKFLAGS() {
    MEMORYPROTECTIONOVERRIDE(7586083, 2);
    WRITENOP(7586083, 2);
    MEMORYPROTECTIONOVERRIDE(7586085, 6);
    WRITENOP(7586085, 6);
}

func void INIT_RESTOREMOBFIRESTATES() {
    MEMORYPROTECTIONOVERRIDE(7482368, 1);
    MEMORYPROTECTIONOVERRIDE(7482688, 1);
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        MEM_WRITEBYTE(7482368, ASMINT_OP_RETN);
        MEM_WRITEBYTE(7482688, ASMINT_OP_RETN);
    };
    MEM_WRITEBYTE(7482368, 86);
    MEM_WRITEBYTE(7482688, 86);
}

func int FUNCTION(var func F) {
    return SAVE_GETFUNCID(21285);
}

const int GMEM_MOVEABLE = 2;
func int GLOBALALLOC(var int FLAG, var int BYTES) {
    CALL_INTPARAM(BYTES);
    CALL_INTPARAM(FLAG);
    CALL__STDCALL(PGLOBALALLOC);
    return CALL_RETVALASINT();
}

func int OPENCLIPBOARD() {
    CALL_INTPARAM(0);
    CALL__STDCALL(POPENCLIPBOARD);
    return CALL_RETVALASINT();
}

func int EMPTYCLIPBOARD() {
    CALL__STDCALL(PEMPTYCLIPBOARD);
    return CALL_RETVALASINT();
}

func int SETCLIPBOARDDATA(var int FORMAT, var int HANDLE) {
    CALL_INTPARAM(HANDLE);
    CALL_INTPARAM(FORMAT);
    CALL__STDCALL(PSETCLIPBOARDDATA);
    return CALL_RETVALASINT();
}

func void WRITETOCLIPBOARD(var string TXT) {
    var int HANDLE;
    var int PTR;
    var int RES;
    var ZSTRING STR;
    STR = MEM_PTRTOINST(STR_GETADDRESS(TXT));
    RES = MEM_ALLOC(STR.RES);
    MEM_COPYBYTES(STR.PTR, RES, STR.RES);
    HANDLE = GLOBALALLOC(GMEM_MOVEABLE, STR.RES);
    PTR = GLOBALLOCK(HANDLE);
    MEM_COPYBYTES(RES, PTR, STR.RES);
    MEM_FREE(RES);
    if (!(OPENCLIPBOARD())) {
        return;
    };
    if (!(EMPTYCLIPBOARD())) {
        return;
    };
    if (!(SETCLIPBOARDDATA(CF_TEXT, HANDLE))) {
        return;
    };
    MEM_FREE(HANDLE);
    CLOSECLIPBOARD();
}

func void ENABLEMUSICZONE(var string VOBNAME, var int ENABLE) {
    var OCZONEMUSIC ZONE;
    var int PTR;
    PTR = MEM_SEARCHVOBBYNAME(VOBNAME);
    ZONE = MEM_PTRTOINST(PTR);
    ZONE.ENABLED = ENABLE;
    ZONE.LOCAL_ENABLED = ENABLE;
}

func void OCAIHUMAN__PC_DIVING_HOOK() {
    var int HEROPTR;
    var C_ITEM ITEM;
    var OCNPC HER;
    HER = HLP_GETNPC(1819);
    HEROPTR = _@(21322);
    if ((MEM_KEYPRESSED(MEM_GETKEY("keyAction"))) || (MEM_KEYPRESSED(MEM_GETSECONDARYKEY("keyAction")))) {
        if (HLP_IS_OCITEM(HER.FOCUS_VOB)) {
            AI_PLAYANI(HERO, "T_WATERTAKEITEM");
            ITEM = _^(HER.FOCUS_VOB);
            PRINTS(CS2(ITEM.NAME, PRINT_ADDON_ERHALTEN));
            CALL_PTRPARAM(HER.FOCUS_VOB);
            CALL__THISCALL(_@(21322), 7621056);
        };
    };
}

func void INIT_GATHERINGITEMSUNDERWATER() {
    HOOKENGINEF(6921312, 6, 21321);
}

func void NPC_CHANGEARMOR(var C_NPC SLF, var int ARMOR) {
    var OCNPC NPC;
    NPC = HLP_GETNPC(21327);
    MDL_SETVISUALBODY(SLF, NPC.BODY_VISUALNAME, ((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_BODY_TEXVARNR)) >> (14), 0, NPC.HEAD_VISUALNAME, ((NPC.BITFIELD[1]) & (OCNPC_BITFIELD1_HEAD_TEXVARNR)) >> (16), ((NPC.BITFIELD[2]) & (OCNPC_BITFIELD2_TEETH_TEXVARNR)) >> (0), ARMOR);
    SLF.AIVAR[48] = ARMOR;
}

func void NPC_REFRESH_WITHSELF() {
    NPC_REFRESH(SELF);
}

func void DUMMYFUNCWITHSTRINGPARAMETER(var string PAR) {
}

func void PATCHSAVEGAMEVERSION_HOOK() {
    var ZSTRING LANGSTR;
    var int STRPTR;
    STRPTR = MEM_GETSTRINGADDRESS(INTTOSTRING(SAVE_VERSION));
    LANGSTR = MEM_PTRTOINST(STRPTR);
    EDX = LANGSTR.PTR;
}

func void PATCHSAVEGAMEVERSION() {
    MEMORYPROTECTIONOVERRIDE(4423253, 6);
    WRITENOP(4423253, 6);
    HOOKENGINEF(4423253, 6, 21342);
}

var string CURRENTMUSICZONE;
func string GETWORLDNAME() {
    if ((((STR_STARTSWITH(CURRENTMUSICZONE, "CMD_")) || (STR_STARTSWITH(CURRENTMUSICZONE, "CIT_"))) || (STR_STARTSWITH(CURRENTMUSICZONE, "HAR_"))) || (STR_STARTSWITH(CURRENTMUSICZONE, "CRH_"))) {
        return WORLD_CITY;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "VIL_")) {
        return WORLD_SILBACH;
    };
    if ((STR_STARTSWITH(CURRENTMUSICZONE, "WLF_")) || (STR_STARTSWITH(CURRENTMUSICZONE, "MIN_"))) {
        return WORLD_WOLFSDEN;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "MON_")) {
        return WORLD_MONASTERY;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "HAV_")) {
        return WORLD_HAVEN;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "VIN_")) {
        return WORLD_VALERIO;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "SWP_")) {
        return WORLD_SWAMPS;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        return WORLD_ARCHOLOS;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) {
        return WORLD_ENDGAME;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
        return WORLD_SILVERMINE;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        return WORLD_VOLFZACKE;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) {
        return WORLD_SEWERS;
    };
    return "";
}

func void PATCHSAVEGAMEWORLD_HOOK() {
    var string WORLDNAME;
    WORLDNAME = GETWORLDNAME();
    if (HLP_STRCMP(WORLDNAME, "")) {
        MEM_WRITESTRING((EBP) + (84), MEM_WORLD.WORLDNAME);
    };
    MEM_WRITESTRING((EBP) + (84), WORLDNAME);
}

func void PATCHSAVEGAMEWORLD() {
    HOOKENGINEF(4423071, 5, 21348);
}

func int GETKEYSTATE(var int NVIRTKEY) {
    var int PGETKEYSTATE;
    PGETKEYSTATE = GETPROCADDRESS(LOADLIBRARY("USER32.DLL"), "GetKeyState");
    CALL_INTPARAM(NVIRTKEY);
    CALL__STDCALL(PGETKEYSTATE);
    return CALL_RETVALASINT();
}

var int INFOMANAGERANSWERMODE;
var string INFOMANAGERANSWER;
var int INFOMANAGERLASTCHOICESELECTED;
var int INFOMANAGERUPDATESTATE;
const int CIM2BCHANGED = 0;
const int CIMCHANGED = 1;
func void ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK() {
    var int MEM;
    var int LEN;
    var int UPPERCASE;
    var int ALT;
    var int CAPSLOCK;
    var int SHIFT;
    var string S;
    var int KEY;
    INFOMANAGERUPDATESTATE = CIM2BCHANGED;
    KEY = EDI;
    if (INFOMANAGERANSWERPOSSIBLE) {
        if ((KEY) == (KEY_ESCAPE)) {
            INFOMANAGERANSWERMODE = FALSE;
            INFOMANAGERANSWER = "";
        };
        if (((((KEY) == (KEY_RETURN)) || ((KEY) == (MOUSE_BUTTONLEFT))) || ((KEY) == (MEM_GETKEY("keyAction")))) || ((KEY) == (MEM_GETSECONDARYKEY("keyAction")))) {
            if (!(INFOMANAGERANSWERMODE)) {
                INFOMANAGERANSWER = "";
            };
            INFOMANAGERANSWERMODE = !(INFOMANAGERANSWERMODE);
        };
        S = "";
        if (INFOMANAGERANSWERMODE) {
            SHIFT = ((((MEM_KEYSTATE(KEY_LSHIFT)) == (KEY_PRESSED)) | ((MEM_KEYSTATE(KEY_LSHIFT)) == (KEY_HOLD))) | ((MEM_KEYSTATE(KEY_RSHIFT)) == (KEY_PRESSED))) | ((MEM_KEYSTATE(KEY_RSHIFT)) == (KEY_HOLD));
            CAPSLOCK = (GETKEYSTATE(20)) & ((1) != (0));
            UPPERCASE = (SHIFT) || (CAPSLOCK);
            ALT = ((((MEM_KEYSTATE(KEY_LMENU)) == (KEY_PRESSED)) | ((MEM_KEYSTATE(KEY_LMENU)) == (KEY_HOLD))) | ((MEM_KEYSTATE(KEY_RMENU)) == (KEY_PRESSED))) | ((MEM_KEYSTATE(KEY_RMENU)) == (KEY_HOLD));
            if ((KEY) == (KEY_1)) {
                if (SHIFT) {
                    S = "!";
                } else {
                    S = "1";
                };
            };
            if ((KEY) == (KEY_2)) {
                if (SHIFT) {
                    S = "@";
                } else {
                    S = "2";
                };
            };
            if ((KEY) == (KEY_3)) {
                if (SHIFT) {
                    S = "#";
                } else {
                    S = "3";
                };
            };
            if ((KEY) == (KEY_4)) {
                if (SHIFT) {
                    S = "$";
                } else {
                    S = "4";
                };
            };
            if ((KEY) == (KEY_5)) {
                if (SHIFT) {
                    S = "%";
                } else {
                    S = "5";
                };
            };
            if ((KEY) == (KEY_6)) {
                if (SHIFT) {
                    S = "^";
                } else {
                    S = "6";
                };
            };
            if ((KEY) == (KEY_7)) {
                if (SHIFT) {
                    S = "&";
                } else {
                    S = "7";
                };
            };
            if ((KEY) == (KEY_8)) {
                if (SHIFT) {
                    S = "*";
                } else {
                    S = "8";
                };
            };
            if ((KEY) == (KEY_9)) {
                if (SHIFT) {
                    S = "(";
                } else {
                    S = "9";
                };
            };
            if ((KEY) == (KEY_0)) {
                if (SHIFT) {
                    S = ")";
                } else {
                    S = "0";
                };
            };
            if ((KEY) == (KEY_MINUS)) {
                if (SHIFT) {
                    S = "-";
                } else {
                    S = "_";
                };
            };
            if ((KEY) == (KEY_EQUALS)) {
                if (SHIFT) {
                    S = "+";
                } else {
                    S = "=";
                };
            };
            if ((KEY) == (KEY_BACK)) {
                LEN = STR_LEN(INFOMANAGERANSWER);
                if ((LEN) == (1)) {
                    INFOMANAGERANSWER = "";
                } else if ((LEN) > (1)) {
                    INFOMANAGERANSWER = STR_SUBSTR(INFOMANAGERANSWER, 0, (LEN) - (1));
                };
            };
            if ((KEY) == (KEY_Q)) {
                if (UPPERCASE) {
                    S = "Q";
                } else {
                    S = "q";
                };
            };
            if ((KEY) == (KEY_W)) {
                if (UPPERCASE) {
                    S = "W";
                } else {
                    S = "w";
                };
            };
            if ((KEY) == (KEY_E)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "E";
                } else if ((UPPERCASE) && (ALT)) {
                    S = " ";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Í";
                } else {
                    S = "e";
                };
            };
            if ((KEY) == (KEY_R)) {
                if (UPPERCASE) {
                    S = "R";
                } else {
                    S = "r";
                };
            };
            if ((KEY) == (KEY_T)) {
                if (UPPERCASE) {
                    S = "T";
                } else {
                    S = "t";
                };
            };
            if ((KEY) == (KEY_Y)) {
                if (UPPERCASE) {
                    S = "Y";
                } else {
                    S = "y";
                };
            };
            if ((KEY) == (KEY_U)) {
                if (UPPERCASE) {
                    S = "U";
                } else {
                    S = "u";
                };
            };
            if ((KEY) == (KEY_I)) {
                if (UPPERCASE) {
                    S = "I";
                } else {
                    S = "i";
                };
            };
            if ((KEY) == (KEY_O)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "O";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "”";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Û";
                } else {
                    S = "o";
                };
            };
            if ((KEY) == (KEY_P)) {
                if (UPPERCASE) {
                    S = "P";
                } else {
                    S = "p";
                };
            };
            if ((KEY) == (KEY_LBRACKET)) {
                if (SHIFT) {
                    S = "{";
                } else {
                    S = "[";
                };
            };
            if ((KEY) == (KEY_RBRACKET)) {
                if (SHIFT) {
                    S = "}";
                } else {
                    S = "]";
                };
            };
            if ((KEY) == (KEY_A)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "A";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "•";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "π";
                } else {
                    S = "a";
                };
            };
            if ((KEY) == (KEY_S)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "S";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "å";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "s";
                } else {
                    S = "s";
                };
            };
            if ((KEY) == (KEY_D)) {
                if (UPPERCASE) {
                    S = "D";
                } else {
                    S = "d";
                };
            };
            if ((KEY) == (KEY_F)) {
                if (UPPERCASE) {
                    S = "F";
                } else {
                    S = "f";
                };
            };
            if ((KEY) == (KEY_G)) {
                if (UPPERCASE) {
                    S = "G";
                } else {
                    S = "g";
                };
            };
            if ((KEY) == (KEY_H)) {
                if (UPPERCASE) {
                    S = "H";
                } else {
                    S = "h";
                };
            };
            if ((KEY) == (KEY_J)) {
                if (UPPERCASE) {
                    S = "J";
                } else {
                    S = "j";
                };
            };
            if ((KEY) == (KEY_K)) {
                if (UPPERCASE) {
                    S = "K";
                } else {
                    S = "k";
                };
            };
            if ((KEY) == (KEY_L)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "L";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "£";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "≥";
                } else {
                    S = "l";
                };
            };
            if ((KEY) == (KEY_SEMICOLON)) {
                if (SHIFT) {
                    S = ":";
                } else {
                    S = ";";
                };
            };
            if ((KEY) == (KEY_APOSTROPHE)) {
                if (SHIFT) {
                    if (!(MEM)) {
                        MEM = MEM_ALLOC(1);
                    };
                    MEM_WRITEBYTE(MEM, 34);
                    S = STR_FROMCHAR(MEM);
                } else {
                    S = "'";
                };
            };
            if ((KEY) == (KEY_GRAVE)) {
                if (SHIFT) {
                    S = "~";
                } else {
                    S = "`";
                };
            };
            if ((KEY) == (KEY_BACKSLASH)) {
                if (SHIFT) {
                    S = "|";
                } else {
                    S = "\\";
                };
            };
            if ((KEY) == (KEY_Z)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "Z";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "Ø";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "ø";
                } else {
                    S = "z";
                };
            };
            if ((KEY) == (KEY_X)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "X";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "è";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "ü";
                } else {
                    S = "x";
                };
            };
            if ((KEY) == (KEY_C)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "C";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "∆";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Ê";
                } else {
                    S = "c";
                };
            };
            if ((KEY) == (KEY_V)) {
                if (UPPERCASE) {
                    S = "V";
                } else {
                    S = "v";
                };
            };
            if ((KEY) == (KEY_B)) {
                if (UPPERCASE) {
                    S = "B";
                } else {
                    S = "b";
                };
            };
            if ((KEY) == (KEY_N)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "N";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "—";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Ò";
                } else {
                    S = "n";
                };
            };
            if ((KEY) == (KEY_M)) {
                if (UPPERCASE) {
                    S = "M";
                } else {
                    S = "m";
                };
            };
            if ((KEY) == (KEY_COMMA)) {
                if (SHIFT) {
                    S = "<";
                } else {
                    S = ",";
                };
            };
            if ((KEY) == (KEY_PERIOD)) {
                if (SHIFT) {
                    S = ">";
                } else {
                    S = ".";
                };
            };
            if ((KEY) == (KEY_SLASH)) {
                if (SHIFT) {
                    S = "?";
                } else {
                    S = "/";
                };
            };
            if ((KEY) == (KEY_SPACE)) {
                S = " ";
            };
            if ((KEY) == (KEY_NUMPAD0)) {
                S = "0";
            };
            if ((KEY) == (KEY_NUMPAD1)) {
                S = "1";
            };
            if ((KEY) == (KEY_NUMPAD2)) {
                S = "2";
            };
            if ((KEY) == (KEY_NUMPAD3)) {
                S = "3";
            };
            if ((KEY) == (KEY_NUMPAD4)) {
                S = "4";
            };
            if ((KEY) == (KEY_NUMPAD5)) {
                S = "5";
            };
            if ((KEY) == (KEY_NUMPAD6)) {
                S = "6";
            };
            if ((KEY) == (KEY_NUMPAD7)) {
                S = "7";
            };
            if ((KEY) == (KEY_NUMPAD8)) {
                S = "8";
            };
            if ((KEY) == (KEY_NUMPAD9)) {
                S = "9";
            };
            if ((KEY) == (KEY_MULTIPLY)) {
                S = "*";
            };
            if ((KEY) == (KEY_SUBTRACT)) {
                S = "-";
            };
            if ((KEY) == (KEY_ADD)) {
                S = "+";
            };
            if ((KEY) == (KEY_DECIMAL)) {
                S = ".";
            };
            if ((STR_LEN(S)) > (0)) {
                INFOMANAGERANSWER = CONCATSTRINGS(INFOMANAGERANSWER, S);
            };
            EDI = 0;
            MEM_WRITEINT((ESP) + (4), 0);
        };
    };
}

const int CINFO_MGR_MODE_IMPORTANT = 0;
const int CINFO_MGR_MODE_INFO = 1;
const int CINFO_MGR_MODE_CHOICE = 2;
const int CINFO_MGR_MODE_TRADE = 3;
const int DIALOG_ANSWER_NR = 1337;
func void OCINFORMATIONMANAGER__UPDATE_HOOK() {
    var OCINFOCHOICE DLGCHOICE;
    var ZCLIST L;
    var int J;
    var int LEN;
    var int P;
    var ZCVIEWTEXT2 TXT;
    var int I;
    var int ANSWERDIALOG;
    var string DLGDESCRIPTION;
    var int LIST;
    var ZCARRAY ARR;
    var ZCVIEWDIALOGCHOICE DLG;
    var OCINFO DLGINSTANCE;
    if ((MEM_INFORMATIONMAN.INFO) == (0)) {
        return;
    };
    DLGINSTANCE = _^(MEM_INFORMATIONMAN.INFO);
    if ((DLGINSTANCE.NR) != (DIALOG_ANSWER_NR)) {
        return;
    };
    if ((MEM_INFORMATIONMAN.DLGCHOICE) == (0)) {
        return;
    };
    DLG = _^(MEM_INFORMATIONMAN.DLGCHOICE);
    if ((DLG.ISACTIVATED) == (1)) {
        if (((INFOMANAGERUPDATESTATE) == (CIM2BCHANGED)) || ((INFOMANAGERLASTCHOICESELECTED) != (DLG.CHOICESELECTED))) {
            INFOMANAGERANSWERPOSSIBLE = FALSE;
            ARR = _^((MEM_INFORMATIONMAN.DLGCHOICE) + (172));
            if (ARR.ARRAY) {
                I = 0;
                P = MEM_STACKPOS.POSITION;
                if ((I) < (DLG.CHOICES)) {
                    if ((MEM_INFORMATIONMAN.MODE) == (CINFO_MGR_MODE_CHOICE)) {
                        if (DLGINSTANCE.LISTCHOICES_NEXT) {
                            J = 0;
                            LIST = DLGINSTANCE.LISTCHOICES_NEXT;
                            WHILE(LIST);
                            L = _^(LIST);
                            DLGCHOICE = MEM_PTRTOINST(L.DATA);
                            if ((I) == (J)) {
                                DLGDESCRIPTION = DLGCHOICE.TEXT;
                            };
                            LIST = L.NEXT;
                            J += 1;
                            END;
                        };
                        ANSWERDIALOG = -(1);
                        LEN = STR_LEN(DLGDESCRIPTION);
                        if ((LEN) > (0)) {
                            if (STR_STARTSWITH(DLGDESCRIPTION, "?")) {
                                DLGDESCRIPTION = STR_SUBSTR(DLGDESCRIPTION, 1, (LEN) - (1));
                                ANSWERDIALOG = I;
                            };
                        };
                        if ((I) == (DLG.CHOICESELECTED)) {
                            if ((ANSWERDIALOG) == (I)) {
                                INFOMANAGERANSWERPOSSIBLE = TRUE;
                            };
                            if (INFOMANAGERANSWERMODE) {
                                DLGDESCRIPTION = CONCATSTRINGS(INFOMANAGERANSWER, "_");
                            };
                        };
                        TXT = _^(MEM_READINTARRAY(ARR.ARRAY, I));
                        TXT.TEXT = DLGDESCRIPTION;
                    };
                    I += 1;
                    MEM_STACKPOS.POSITION = P;
                };
            } else {
                INFOMANAGERUPDATESTATE = CIMCHANGED;
                INFOMANAGERLASTCHOICESELECTED = DLG.CHOICESELECTED;
            };
        };
    };
}

func void OCNPC__EVDROPVOB_HOOK() {
    var C_ITEM ITM;
    var int ITEMPTR;
    var int CSGPTR;
    var C_NPC NPC;
    NPC = MEM_PTRTOINST(ECX);
    if ((NPC_ISPLAYER(NPC)) == (FALSE)) {
        return;
    };
    CSGPTR = MEM_READINT((ESP) + (4));
    if ((CSGPTR) == (0)) {
        return;
    };
    ITEMPTR = MEM_READINT((CSGPTR) + (108));
    if ((ITEMPTR) == (0)) {
        return;
    };
    ITM = _^(ITEMPTR);
    if (((ITM.FLAGS) & (ITEM_IMPORTANT)) == (ITEM_IMPORTANT)) {
        NPC_STARTANIMATION(NPC, T_NO);
        CALL_INTPARAM(1);
        CALL__THISCALL(CSGPTR, 7745808);
    };
}

func int OCINFOMANAGER_GETINFOUNIMPORTANT(var int NPCINSTANCE, var int HERINSTANCE, var int INDEX) {
    var OCNPC HER;
    var OCNPC SLF;
    var int OCINFOMANAGER__GETINFOUNIMPORTANT_G1;
    var int OCINFOMANAGER__GETINFOUNIMPORTANT_G2;
    var int OCINFOMANAGER__GETINFOUNIMPORTANT;
    OCINFOMANAGER__GETINFOUNIMPORTANT = MEMINT_SWITCHG1G2(OCINFOMANAGER__GETINFOUNIMPORTANT_G1, OCINFOMANAGER__GETINFOUNIMPORTANT_G2);
    SLF = HLP_GETNPC(NPCINSTANCE);
    HER = HLP_GETNPC(HERINSTANCE);
    CALL_INTPARAM(INDEX);
    CALL_PTRPARAM(MEM_INSTTOPTR(21401));
    CALL_PTRPARAM(MEM_INSTTOPTR(21402));
    CALL__THISCALL(MEM_GAME.INFOMAN, OCINFOMANAGER__GETINFOUNIMPORTANT);
    return CALL_RETVALASPTR();
}

