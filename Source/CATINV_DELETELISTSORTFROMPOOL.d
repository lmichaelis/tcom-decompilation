func void CATINV_DELETELISTSORTFROMPOOL(var int LIST, var int PURGE) {
    var ZCLISTSORT L;
    var int ONE;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ONE));
        CALL__THISCALL(_@(LIST), ZCLISTSORT_OCITEM____SCALAR_DELETING_DESTRUCTOR);
        CALL = CALL_END();
    };
    if (PURGE) {
        LIST_DESTROYS(LIST);
    };
    L = _^(LIST);
    L.NEXT = 0;
}

func int CATINV_GETCATID(var int OFFSET) {
    var int I;
    if (!(OFFSET)) {
        return 0;
    };
    OFFSET += (OFFSET) > (MEM_READINT(INVCATORDER));
    REPEAT(I, (INV_CAT_MAX) + (1));
    if ((MEM_READINTARRAY(INVCATORDER, I)) == ((OFFSET) - (1))) {
        return I;
    };
    END;
    return 0;
}

func int CATINV_SUPPORTCAT(var int CONTAINER) {
    var OCITEMCONTAINER CON;
    if (!(CATINV_G1MODE)) {
        return TRUE;
    };
    CON = _^(CONTAINER);
    return CON.RIGHT;
}

func int CATINV_RESET(var int CONTAINER) {
    var OCITEMCONTAINER ITMCON;
    var int CALL2;
    var ZCLISTSORT L;
    var OCITEMCONTAINER NPCCON;
    var int CALL;
    var OCNPCINVENTORY NPCINV;
    var int CONTAINER_VTBL;
    CONTAINER_VTBL = MEM_READINT(CONTAINER);
    if ((CONTAINER_VTBL) == (OCNPCINVENTORY___VFTABLE)) {
        NPCINV = _^(CONTAINER);
        if ((NPCINV._OCITEMCONTAINER_CONTENTS) != (_@(NPCINV.INVENTORY_COMPARE))) {
            CATINV_DELETELISTSORTFROMPOOL(NPCINV._OCITEMCONTAINER_CONTENTS, 1);
            NPCINV._OCITEMCONTAINER_CONTENTS = _@(NPCINV.INVENTORY_COMPARE);
        };
    };
    if ((CONTAINER_VTBL) == (OCSTEALCONTAINER___VFTABLE)) {
        if (CALL_BEGIN(CALL)) {
            CALL__THISCALL(_@(CONTAINER), OCSTEALCONTAINER__CREATELIST);
            CALL = CALL_END();
        };
    };
    if ((CONTAINER_VTBL) == (OCNPCCONTAINER___VFTABLE)) {
        NPCCON = _^(CONTAINER);
        L = _^(NPCCON.CONTENTS);
        if (L.NEXT) {
            CATINV_DELETELISTSORTFROMPOOL(L.NEXT, 1);
            L.NEXT = 0;
        };
        if (CALL_BEGIN(CALL2)) {
            CALL__THISCALL(_@(CONTAINER), OCNPCCONTAINER__CREATELIST);
            CALL2 = CALL_END();
        };
    };
    if ((CONTAINER_VTBL) == (OCITEMCONTAINER___VFTABLE)) {
        if (_CATINV_BACKUPLIST) {
            ITMCON = _^(CONTAINER);
            CATINV_DELETELISTSORTFROMPOOL(ITMCON.CONTENTS, 1);
            ITMCON.CONTENTS = _CATINV_BACKUPLIST;
            _CATINV_BACKUPLIST = 0;
        };
    };
    return CONTAINER_VTBL;
}

func void CATINV_MANIPULATECREATELIST() {
    var C_ITEM ITM;
    ITM = _^(ECX);
    if (((ITM.MAINFLAG) == (ITEM_KAT_ARMOR)) && (!(CATINV_SP18ARMOR))) {
        EAX = 1;
    };
    if (CATINV_G1MODE) {
        EAX = 0;
    };
    if (!(CATINV_ACTIVECATEGORY)) {
        EAX = 0;
    };
    if ((ITM.MAINFLAG) & (MEM_READSTATARR(INV_CAT_GROUPS[0], CATINV_GETCATID(CATINV_ACTIVECATEGORY)))) {
        EAX = 0;
    };
    EAX = 1;
}

func void CATINV_RESETOFFSET(var int CONTAINER) {
    var OCITEMCONTAINER CON;
    CON = _^(CONTAINER);
    CON.SELECTEDITEM -= CON.OFFSET;
    CON.OFFSET = 0;
}

func void CATINV_SETSELECTIONFIRST(var int CONTAINER) {
    var OCITEMCONTAINER CON;
    CATINV_RESETOFFSET(CONTAINER);
    CON = _^(CONTAINER);
    CON.SELECTEDITEM = 0;
}

func void CATINV_SETMAXOFFSET(var int CONTAINER, var int SELLASTITEM) {
    var int NUMITEMS;
    var int CONTENTS;
    var int NUMROWS;
    var int CALL;
    var OCITEMCONTAINER CON;
    CON = _^(CONTAINER);
    CONTENTS = CON.CONTENTS;
    if (CALL_BEGIN(CALL)) {
        CALL_PUTRETVALTO(_@(NUMITEMS));
        CALL__THISCALL(_@(CONTENTS), ZCLISTSORT_OCITEM___GETNUMINLIST);
        CALL = CALL_END();
    };
    NUMROWS = (((NUMITEMS) - (1)) / (CON.MAXSLOTSCOL)) + (1);
    CON.OFFSET = ((NUMROWS) - (CON.MAXSLOTSROW)) * (CON.MAXSLOTSCOL);
    if ((CON.OFFSET) < (0)) {
        CON.OFFSET = 0;
    };
    if (SELLASTITEM) {
        CON.SELECTEDITEM = (NUMITEMS) - (1);
    };
    CON.SELECTEDITEM += CON.OFFSET;
}

func void CATINV_SETSELECTIONLAST(var int CONTAINER) {
    CATINV_SETMAXOFFSET(CONTAINER, TRUE);
}

func void CATINV_UPDATE(var int CONTAINER) {
    var ZCLISTSORT LIST;
    var ZCLISTSORT BACKUPLIST;
    var OCITEMCONTAINER ITMCON;
    var ZCLISTSORT LIST0;
    var OCNPCINVENTORY NPCINV;
    var int CONTAINER_VTBL;
    CONTAINER_VTBL = CATINV_RESET(CONTAINER);
    if (!(CATINV_ACTIVECATEGORY)) {
        return;
    };
    if ((CONTAINER_VTBL) == (OCNPCINVENTORY___VFTABLE)) {
        NPCINV = _^(CONTAINER);
        NPCINV._OCITEMCONTAINER_CONTENTS = LIST_CREATES(0);
        LIST0 = _^(NPCINV._OCITEMCONTAINER_CONTENTS);
        LIST0.COMPAREFUNC = NPCINV.INVENTORY_COMPARE;
        _CATINV_CURRENTLIST = NPCINV._OCITEMCONTAINER_CONTENTS;
        if (NPCINV.INVENTORY_NEXT) {
            LIST_FORFS(NPCINV.INVENTORY_NEXT, 20905);
        };
    };
    if ((CONTAINER_VTBL) == (OCITEMCONTAINER___VFTABLE)) {
        if (CATINV_G1MODE) {
            return;
        };
        ITMCON = _^(CONTAINER);
        if (_CATINV_BACKUPLIST) {
            CATINV_DELETELISTSORTFROMPOOL(_CATINV_BACKUPLIST, 1);
        };
        _CATINV_BACKUPLIST = ITMCON.CONTENTS;
        BACKUPLIST = _^(_CATINV_BACKUPLIST);
        ITMCON.CONTENTS = LIST_CREATES(0);
        LIST = _^(ITMCON.CONTENTS);
        LIST.COMPAREFUNC = BACKUPLIST.COMPAREFUNC;
        _CATINV_CURRENTLIST = ITMCON.CONTENTS;
        if (BACKUPLIST.NEXT) {
            LIST_FORFS(BACKUPLIST.NEXT, 20905);
        };
    };
}

func void CATINV_ADDITEM(var int LISTPTR) {
    var C_ITEM ITM;
    var ZCLISTSORT L;
    L = _^(LISTPTR);
    ITM = _^(L.DATA);
    if ((ITM.MAINFLAG) & (MEM_READSTATARR(INV_CAT_GROUPS[0], CATINV_GETCATID(CATINV_ACTIVECATEGORY)))) {
        LIST_ADDS(_CATINV_CURRENTLIST, L.DATA);
    };
}

func void CATINV_UPDATEALL() {
    var ZCLIST L;
    var int LIST;
    LIST = MEM_READINT(S_OPENCONTAINERS_NEXT);
    WHILE(LIST);
    L = _^(LIST);
    CATINV_UPDATE(L.DATA);
    if (CATINV_SUPPORTCAT(L.DATA)) {
        CATINV_RESETOFFSET(L.DATA);
    };
    LIST = L.NEXT;
    END;
}

func int CATINV_SETCATEGORY(var int POS) {
    var int INVNEWCATEGORY;
    INVNEWCATEGORY = POS;
    if ((INVNEWCATEGORY) < (CATINV_G1MODE)) {
        INVNEWCATEGORY = CATINV_G1MODE;
    };
    if ((INVNEWCATEGORY) >= (INV_CAT_MAX)) {
        INVNEWCATEGORY = (INV_CAT_MAX) - (1);
    };
    if ((INVNEWCATEGORY) == (CATINV_ACTIVECATEGORY)) {
        return FALSE;
    };
    CATINV_ACTIVECATEGORY = INVNEWCATEGORY;
    CATINV_UPDATEALL();
    return TRUE;
}

func int CATINV_SHIFTCATEGORY(var int OFFSET) {
    return CATINV_SETCATEGORY((CATINV_ACTIVECATEGORY) + (OFFSET));
}

func int CATINV_SETCATEGORYFIRST() {
    return CATINV_SETCATEGORY(CATINV_G1MODE);
}

func int CATINV_SETCATEGORYLAST() {
    return CATINV_SETCATEGORY((INV_CAT_MAX) - (1));
}

func void CATINV_OPEN() {
    var OCNPC HER;
    var OCITEMCONTAINER CONTAINER;
    CONTAINER = _^(ECX);
    if ((CONTAINER.VTBL) != (OCNPCINVENTORY___VFTABLE)) {
        if (!(CATINV_G1MODE)) {
            CATINV_SETCATEGORYFIRST();
        };
        CATINV_SETSELECTIONFIRST(ECX);
        HER = HLP_GETNPC(1819);
        CATINV_SETSELECTIONFIRST(_@(HER.INVENTORY2_VTBL));
    };
    CATINV_UPDATE(ECX);
}

func void CATINV_CLOSE() {
    var int I;
    if (HLP_ISVALIDNPC(HERO)) {
        I = CATINV_RESET(ESI);
    };
}

