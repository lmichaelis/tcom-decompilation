func int CATINV_NPCCONTAINERISEMPTY(var int CONTAINER, var int INCLUDEEQUIPPED, var int INCLUDEARMOR) {
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

instance CATINV_NPCCONTAINERISEMPTY.CON(OCNPCINVENTORY)
instance CATINV_NPCCONTAINERISEMPTY.OWNER(OCNPC)
var int CATINV_NPCCONTAINERISEMPTY.LIST = 0;
instance CATINV_NPCCONTAINERISEMPTY.L(ZCLISTSORT)
instance CATINV_NPCCONTAINERISEMPTY.ITM(C_ITEM)
func void CATINV_PREVENTCLOSEDEADINV() {
    if (CATINV_NPCCONTAINERISEMPTY(ESI, 0, 0)) {
        if (CALL_BEGIN(CALL)) {
            CALL__THISCALL(_@(ECX), OCNPC__CLOSEDEADNPC);
            CALL = CALL_END();
        };
    };
}

const int CATINV_PREVENTCLOSEDEADINV.CALL = 0;
func void CATINV_DEADRESETCATEGORY() {
    if (!(CATINV_G1MODE)) {
        CATINV_SETCATEGORYFIRST();
    };
}

