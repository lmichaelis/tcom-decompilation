const int MAX_VISIBLEARROWS = 10;
const int QUIVERREFRESHFORALLDELAY = 5000;
const int QUIVERSLOTID = 21;
func int QUIVERS_GETQUIVERTYPE(var C_NPC SLF) {
    var C_ITEM ITM;
    if (NPC_HASEQUIPPEDRANGEDWEAPON(SLF)) {
        ITM = NPC_GETEQUIPPEDRANGEDWEAPON(SLF);
        if ((ITM.FLAGS) & (ITEM_BOW)) {
            return 1;
        };
        if ((ITM.FLAGS) & (ITEM_CROSSBOW)) {
            return 2;
        };
    };
    if (NPC_HASREADIEDRANGEDWEAPON(SLF)) {
        ITM = NPC_GETREADIEDWEAPON(SLF);
        if ((ITM.FLAGS) & (ITEM_BOW)) {
            return 1;
        };
        if ((ITM.FLAGS) & (ITEM_CROSSBOW)) {
            return 2;
        };
    };
    return FALSE;
}

func void CREATEBOWQUIVER(var C_NPC SLF) {
    SLF.AIVAR[90] = TRUE;
    REFRESHBOWQUIVERMODEL(SLF);
}

func void CREATECBOWQUIVER(var C_NPC SLF) {
    SLF.AIVAR[90] = TRUE;
    REFRESHCBOWQUIVERMODEL(SLF);
}

func void REFRESHQUIVER(var C_NPC NPC) {
    if ((QUIVERS_GETQUIVERTYPE(NPC)) == (1)) {
        if ((NPC.AIVAR[90]) && ((NPC_HASITEMS(NPC, 34383)) != (NPC.AIVAR[98]))) {
            REFRESHBOWQUIVERMODEL(NPC);
        };
    };
    if ((QUIVERS_GETQUIVERTYPE(NPC)) == (2)) {
        if ((NPC.AIVAR[90]) && ((NPC_HASITEMS(NPC, 34384)) != (NPC.AIVAR[98]))) {
            REFRESHCBOWQUIVERMODEL(NPC);
        };
    };
}

func void CREATEQUIVERSFORALL(var int NODE) {
    var C_ITEM ITM;
    var C_NPC NPC;
    var C_NPC HER;
    var ZCLISTSORT L;
    L = _^(NODE);
    HER = HLP_GETNPC(1819);
    if (L.DATA) {
        NPC = _^(L.DATA);
        NPC.AIVAR[98] = -(1);
        if (NPC_HASEQUIPPEDRANGEDWEAPON(NPC)) {
            ITM = NPC_GETEQUIPPEDRANGEDWEAPON(NPC);
            if ((ITM.FLAGS) & (ITEM_BOW)) {
                CREATEBOWQUIVER(NPC);
            } else if ((ITM.FLAGS) & (ITEM_CROSSBOW)) {
                CREATECBOWQUIVER(NPC);
            };
        };
    };
    if (!(L.NEXT)) {
        LIST_DESTROYS(NODE);
    };
}

func void _EVT_QUIVER_UNEQUIP() {
    var C_NPC SLF;
    var C_ITEM ITM;
    var int ITMPTR;
    if ((!(ECX)) || (!(ESP))) {
        return;
    };
    ITMPTR = MEM_READINT((ESP) + (4));
    if (!(ITMPTR)) {
        return;
    };
    ITM = MEM_PTRTOINST(ITMPTR);
    if (((ITM.FLAGS) & (ITEM_BOW)) || ((ITM.FLAGS) & (ITEM_CROSSBOW))) {
        SLF = MEM_PTRTOINST(ECX);
        SLF.AIVAR[90] = FALSE;
        if ((ITM.FLAGS) & (ITEM_BOW)) {
        } else if ((ITM.FLAGS) & (ITEM_CROSSBOW)) {
            OCNPC_REMOVEFROMSLOT(SLF, "ZS_BOW", 1, QUIVERSLOTID);
        };
    };
}

func void INIT_QUIVERS_GAMESTART() {
    HOOKENGINEF(OCNPC__EQUIPITEM, 7, 21746);
    HOOKENGINEF(OCNPC__UNEQUIPITEM, 6, 21750);
    FF_APPLYONCEGT(21738);
}

func void INIT_QUIVERS_ALWAYS() {
    LIST_FORFS(MEM_WORLD.VOBLIST_NPCS, 21740);
}

