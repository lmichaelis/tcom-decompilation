func int CATINV_NEXTNONACTIVEITEM(var int LIST, var int MAX) {
    var C_ITEM ITM;
    var ZCLISTSORT L;
    var int I;
    I = 0;
    WHILE((LIST) && ((I) < (MAX)));
    L = _^(LIST);
    if (HLP_IS_OCITEM(L.DATA)) {
        ITM = _^(L.DATA);
        if (((ITM.FLAGS) & (ITEM_ACTIVE)) != (ITEM_ACTIVE)) {
            BREAK;
        };
        I += 1;
    };
    LIST = L.NEXT;
    END;
    return I;
}

func void CATINV_LEFT() {
    var int LIST;
    var int DUMP;
    var int SWITCHVIEW;
    var int COLTOGO;
    var OCITEMCONTAINER CONTAINER;
    CONTAINER = _^(ESI);
    SWITCHVIEW = 0;
    if ((CATINV_G1MODE) && (MEM_READINT(OCNPC__GAME_MODE))) {
        SWITCHVIEW = 0;
    };
    if ((MEM_KEYPRESSED(KEY_LSHIFT)) || (MEM_KEYPRESSED(KEY_RSHIFT))) {
        SWITCHVIEW = -(1);
        DUMP = CATINV_SHIFTCATEGORY(-(1));
    };
    if (CATINV_CHANGEONLAST) {
        if ((((CONTAINER.SELECTEDITEM) % (CONTAINER.MAXSLOTSCOL)) == (0)) || ((CONTAINER.SELECTEDITEM) <= (0))) {
            if (CATINV_SHIFTCATEGORY(-(1))) {
                SWITCHVIEW = -(1);
            };
        } else if (CONTAINER.M_BMANIPULATEITEMSDISABLED) {
            COLTOGO = (CONTAINER.SELECTEDITEM) - ((CONTAINER.SELECTEDITEM) % (CONTAINER.MAXSLOTSCOL));
            LIST = LIST_NODES(CONTAINER.CONTENTS, ((COLTOGO) + (1)) + (1));
            if (((CATINV_NEXTNONACTIVEITEM(LIST, CONTAINER.SELECTEDITEM)) + (COLTOGO)) == (CONTAINER.SELECTEDITEM)) {
                if (CATINV_SHIFTCATEGORY(-(1))) {
                    SWITCHVIEW = -(1);
                };
            };
        };
    };
    if ((SWITCHVIEW) == (-(1))) {
        MEM_WRITEINT((ESP) + (16), CONTAINER.SELECTEDITEM);
        MEM_WRITEINT((ESP) + (12), CONTAINER.OFFSET);
        MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK1, ASMINT_OP_NOP);
        MEM_WRITEBYTE((OCITEMCONTAINER__PREVITEM_CHECK1) + (1), ASMINT_OP_JMP);
        MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK2, 132);
    };
    if ((SWITCHVIEW) == (1)) {
        MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK1, 235);
        MEM_WRITEBYTE((OCITEMCONTAINER__PREVITEM_CHECK1) + (1), 34);
        MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK2, 133);
    };
    MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK1, 15);
    MEM_WRITEBYTE((OCITEMCONTAINER__PREVITEM_CHECK1) + (1), 142);
    MEM_WRITEBYTE(OCITEMCONTAINER__PREVITEM_CHECK2, 133);
}

func int CATINV_SWITCHCONTAINER(var int CONTAINER) {
    var int DIR;
    var int RET;
    var int CALL;
    var OCITEMCONTAINER CON;
    if (MEM_READINT(OCNPC__GAME_MODE)) {
        return 0;
    };
    CON = _^(CONTAINER);
    DIR = -(CON.RIGHT);
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(DIR));
        CALL_PUTRETVALTO(_@(RET));
        CALL__THISCALL(_@(CONTAINER), OCITEMCONTAINER__ACTIVATENEXTCONTAINER);
        CALL = CALL_END();
    };
    return +(RET);
}

func void CATINV_HANDLEEVENT(var int KEYSTROKE, var int CONTAINER) {
    var int DUMP;
    if ((KEYSTROKE) == (KEY_HOME)) {
        if ((MEM_KEYPRESSED(KEY_LSHIFT)) || (MEM_KEYPRESSED(KEY_RSHIFT))) {
            if ((!(CATINV_G1MODE)) || (!(MEM_READINT(OCNPC__GAME_MODE)))) {
                DUMP = CATINV_SETCATEGORYFIRST();
            };
        } else {
            CATINV_SETSELECTIONFIRST(CONTAINER);
        };
    };
    if ((KEYSTROKE) == (KEY_END)) {
        if ((MEM_KEYPRESSED(KEY_LSHIFT)) || (MEM_KEYPRESSED(KEY_RSHIFT))) {
            if ((!(CATINV_G1MODE)) || (!(MEM_READINT(OCNPC__GAME_MODE)))) {
                DUMP = CATINV_SETCATEGORYLAST();
            };
        } else {
            CATINV_SETSELECTIONLAST(CONTAINER);
        };
    };
    if (CATINV_KEYBINDINGISTOGGLED(KEYSTROKE, ZOPT_GAMEKEY_WEAPON)) {
        DUMP = CATINV_SWITCHCONTAINER(CONTAINER);
    };
}

func void CATINV_HANDLEEVENTNPCINVENTORY() {
    EAX = CATINV_KEYBINDINGISTOGGLED(ESI, ZOPT_GAMEKEY_WEAPON);
    if (EAX) {
        EAX = !(CATINV_SWITCHCONTAINER(EBP));
    };
    if ((ESI) == (KEY_HOME)) {
        if ((MEM_KEYPRESSED(KEY_LSHIFT)) || (MEM_KEYPRESSED(KEY_RSHIFT))) {
            if ((!(CATINV_G1MODE)) || (!(MEM_READINT(OCNPC__GAME_MODE)))) {
                EAX = CATINV_SETCATEGORYFIRST();
            };
        } else {
            CATINV_SETSELECTIONFIRST(EBP);
        };
        EAX = 0;
    };
    if ((ESI) == (KEY_END)) {
        if ((MEM_KEYPRESSED(KEY_LSHIFT)) || (MEM_KEYPRESSED(KEY_RSHIFT))) {
            if ((!(CATINV_G1MODE)) || (!(MEM_READINT(OCNPC__GAME_MODE)))) {
                EAX = CATINV_SETCATEGORYLAST();
            };
        } else {
            CATINV_SETSELECTIONLAST(EBP);
        };
        EAX = 0;
    };
    MEM_WRITEBYTE(OCNPCINVENTORY__HANDLEEVENT_KEYWEAPONJZ, (18) + ((!(EAX)) * (2)));
}

func void CATINV_DELAYMOBCAMERA() {
    var int TIMER;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(ZOPT_GAMEKEY_WEAPON));
        CALL__THISCALL(_@(ECX), ZCINPUT_WIN32__GETSTATE);
        CALL_PUTRETVALTO(_@(EAX));
        CALL__CDECL(__FTOL);
        CALL = CALL_END();
    };
    if (!(EAX)) {
        TIMER = 0;
    };
    if ((TIMER) < (500)) {
        EAX = 0;
        TIMER += MEM_TIMER.FRAMETIME;
    };
}

func void CATINV_CLAMPCATEGORY() {
    var int IPOS;
    var int NUMITEMS;
    var int LIST;
    var C_ITEM ITM;
    var OCITEMCONTAINER CONTAINER;
    CONTAINER = _^(ESI);
    ITM = _^(ECX);
    EAX = 0;
    if (!(CONTAINER.M_BMANIPULATEITEMSDISABLED)) {
        return;
    };
    if (((ITM.FLAGS) & (ITEM_ACTIVE)) != (ITEM_ACTIVE)) {
        return;
    };
    LIST = LIST_NODES(CONTAINER.CONTENTS, ((CONTAINER.SELECTEDITEM) + (1)) + (1));
    NUMITEMS = LIST_LENGTHS(LIST);
    IPOS = CATINV_NEXTNONACTIVEITEM(LIST, NUMITEMS);
    if ((IPOS) != (NUMITEMS)) {
        CONTAINER.SELECTEDITEM += IPOS;
        return;
    };
    LIST = LIST_NODES(CONTAINER.CONTENTS, (1) + (1));
    IPOS = CATINV_LASTNONACTIVEITEM(LIST, CONTAINER.SELECTEDITEM);
    if ((IPOS) != (CONTAINER.SELECTEDITEM)) {
        CONTAINER.SELECTEDITEM = IPOS;
        return;
    };
    CONTAINER.SELECTEDITEM = -(1);
}

