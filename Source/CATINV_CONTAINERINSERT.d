func void CATINV_CONTAINERINSERT() {
    var int CALL;
    var OCITEMCONTAINER CONTAINER;
    CONTAINER = _^(EBP);
    if ((((CONTAINER.VTBL) != (OCITEMCONTAINER___VFTABLE)) || ((CONTAINER.INVMODE) != (INV_MODE_MOB))) || (!(_CATINV_BACKUPLIST))) {
        return;
    };
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ESI));
        CALL__THISCALL(_@(_CATINV_BACKUPLIST), ZCLISTSORT_OCITEM___INSERTSORT);
        CALL = CALL_END();
    };
}

func void CATINV_CONTAINERREMOVE() {
    var int CALL;
    var OCITEMCONTAINER CONTAINER;
    CONTAINER = _^(EBX);
    if ((((CONTAINER.VTBL) != (OCITEMCONTAINER___VFTABLE)) || ((CONTAINER.INVMODE) != (INV_MODE_MOB))) || (!(_CATINV_BACKUPLIST))) {
        return;
    };
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ESI));
        CALL__THISCALL(_@(_CATINV_BACKUPLIST), ZCLISTSORT_OCITEM___REMOVE);
        CALL = CALL_END();
    };
}

func void CATINV_NPCINVINSERT() {
    var int LIST;
    var int CONTAINERLIST;
    var C_NPC NPC;
    var int CALL;
    var OCNPCINVENTORY NPCINV;
    if (!(CATINV_ACTIVECATEGORY)) {
        return;
    };
    NPCINV = _^(ECX);
    NPC = _^(NPCINV.OWNER);
    if (!(NPC_ISPLAYER(NPC))) {
        return;
    };
    CONTAINERLIST = MEM_READINT(S_OPENCONTAINERS_NEXT);
    if (!(CONTAINERLIST)) {
        return;
    };
    if (!(LIST_CONTAINS(CONTAINERLIST, ECX))) {
        return;
    };
    LIST = NPCINV._OCITEMCONTAINER_CONTENTS;
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ESI));
        CALL__THISCALL(_@(LIST), ZCLISTSORT_OCITEM___INSERTSORT);
        CALL = CALL_END();
    };
}

func void CATINV_NPCINVREMOVE() {
    var int LIST;
    var int CONTAINERLIST;
    var C_NPC NPC;
    var int CALL;
    var OCNPCINVENTORY NPCINV;
    if (!(CATINV_ACTIVECATEGORY)) {
        return;
    };
    NPCINV = _^(EBX);
    NPC = _^(NPCINV.OWNER);
    if (!(NPC_ISPLAYER(NPC))) {
        return;
    };
    CONTAINERLIST = MEM_READINT(S_OPENCONTAINERS_NEXT);
    if (!(CONTAINERLIST)) {
        return;
    };
    if (!(LIST_CONTAINS(CONTAINERLIST, EBX))) {
        return;
    };
    LIST = NPCINV._OCITEMCONTAINER_CONTENTS;
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ESI));
        CALL__THISCALL(_@(LIST), ZCLISTSORT_OCITEM___REMOVE);
        CALL = CALL_END();
    };
}

func void CATINV_NPCINVREMOVEBYPTR() {
    var int BAK;
    BAK = EBX;
    EBX = EBP;
    CATINV_NPCINVREMOVE();
    EBX = BAK;
}

func void CATINV_NPCINVREMOVEITEM() {
    var int BAK;
    BAK = ESI;
    ESI = EDI;
    CATINV_NPCINVREMOVE();
    ESI = BAK;
}

