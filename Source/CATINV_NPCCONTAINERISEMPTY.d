func int CATINV_NPCCONTAINERISEMPTY(var int CONTAINER, var int INCLUDEEQUIPPED, var int INCLUDEARMOR) {
    var ZCLISTSORT L;
    var C_ITEM ITM;
    var int LIST;
    var OCNPC OWNER;
    var OCNPCINVENTORY CON;
    CON = _^(CONTAINER);
    if (CON.OWNER) {
        OWNER = _^(CON.OWNER);
        LIST = _@(OWNER.INVENTORY2_INVENTORY_COMPARE);
        L = _^(LIST);
        if (L.NEXT) {
            WHILE(LIST);
            L = _^(LIST);
            if (HLP_IS_OCITEM(L.DATA)) {
                ITM = _^(L.DATA);
                if (((INCLUDEEQUIPPED) || (((ITM.FLAGS) & (ITEM_ACTIVE)) != (ITEM_ACTIVE))) && ((INCLUDEARMOR) || ((ITM.MAINFLAG) != (ITEM_KAT_ARMOR)))) {
                    return FALSE;
                };
            };
            LIST = L.NEXT;
            END;
        };
    };
    return TRUE;
}

func void CATINV_PREVENTCLOSEDEADINV() {
    var int CALL;
    if (CATINV_NPCCONTAINERISEMPTY(ESI, 0, 0)) {
        if (CALL_BEGIN(CALL)) {
            CALL__THISCALL(_@(ECX), OCNPC__CLOSEDEADNPC);
            CALL = CALL_END();
        };
    };
}

func void CATINV_DEADRESETCATEGORY() {
    if (!(CATINV_G1MODE)) {
        CATINV_SETCATEGORYFIRST();
    };
}

