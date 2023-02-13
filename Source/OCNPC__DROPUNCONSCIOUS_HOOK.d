func void OCNPC__DROPUNCONSCIOUS_HOOK() {
    var int CALL;
    var C_ITEM ITM;
    var int ITEMLEFT;
    var int ITEMRIGHT;
    var C_NPC NPC;
    NPC = _^(ESI);
    if ((((NPC.AIVAR[45]) == (AF_RUNNING)) || (Q205_ONDROPUNCONSCIOUS(NPC))) || (Q306_ONDROPUNCONSCIOUS(NPC))) {
        ITEMRIGHT = OCNPC_REMOVEFROMSLOT(NPC, "ZS_RIGHTHAND", 1, 10);
        ITEMLEFT = OCNPC_REMOVEFROMSLOT(NPC, "ZS_LEFTHAND", 1, 10);
        if (ITEMRIGHT) {
            ITM = _^(ITEMRIGHT);
            if ((HLP_ISVALIDITEM(ITM)) && (((ITM.MAINFLAG) == (ITEM_KAT_NF)) || ((ITM.MAINFLAG) == (ITEM_KAT_FF)))) {
                CALL_PTRPARAM(MEM_INSTTOPTR(64094));
                CALL__THISCALL(MEM_INSTTOPTR(64091), OCNPC__EQUIPWEAPON);
            };
        };
        if (ITEMLEFT) {
            ITM = _^(ITEMLEFT);
            if ((HLP_ISVALIDITEM(ITM)) && (((ITM.MAINFLAG) == (ITEM_KAT_NF)) || ((ITM.MAINFLAG) == (ITEM_KAT_FF)))) {
                CALL_PTRPARAM(MEM_INSTTOPTR(64094));
                CALL__THISCALL(MEM_INSTTOPTR(64091), OCNPC__EQUIPWEAPON);
            };
        };
    };
    if (CALL_BEGIN(CALL)) {
        CALL__THISCALL(_@(ESI), OCNPC__DROPALLINHAND);
        CALL = CALL_END();
    };
}

func void INIT_DROPUNCONSCIOUS_HOOK() {
    WRITENOP(7561131, 2);
    WRITENOP(7561133, 5);
    HOOKENGINEF(7561131, 7, 64090);
}

