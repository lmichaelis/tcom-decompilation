const int MAX_VISIBLEARROWS = 10;
const int QUIVERREFRESHFORALLDELAY = 5000;
const int QUIVERSLOTID = 21;
func int QUIVERS_GETQUIVERTYPE(var C_NPC SLF) {
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

instance QUIVERS_GETQUIVERTYPE.ITM(C_ITEM)
func void REFRESHBOWQUIVERMODEL(var C_NPC SLF) {
    if ((NPC_HASITEMS(SLF, 0x864f)) > (MAX_VISIBLEARROWS)) {
        VOBPTR = MEM_INSERTVOB(CS3("ItRw_Quiver_", INTTOSTRING(MAX_VISIBLEARROWS), ".3ds"), MEM_GETANYWP());
    };
    VOBPTR = MEM_INSERTVOB(CS3("ItRw_Quiver_", INTTOSTRING(NPC_HASITEMS(SLF, 0x864f)), ".3ds"), MEM_GETANYWP());
    OCNPC_PUTINSLOT(SLF, "ZS_CROSSBOW", VOBPTR, QUIVERSLOTID);
    SLF.AIVAR[98] = NPC_HASITEMS(SLF, 0x864f);
    MEM_DELETEVOB(VOBPTR);
}

var int REFRESHBOWQUIVERMODEL.VOBPTR = 0;
func void CREATEBOWQUIVER(var C_NPC SLF) {
    SLF.AIVAR[90] = TRUE;
    REFRESHBOWQUIVERMODEL(SLF);
}

func void REFRESHCBOWQUIVERMODEL(var C_NPC SLF) {
    if ((NPC_HASITEMS(SLF, 0x8650)) > (MAX_VISIBLEARROWS)) {
        VOBPTR = MEM_INSERTVOB(CS3("ItRw_Quiver_", INTTOSTRING(MAX_VISIBLEARROWS), "c.3ds"), MEM_GETANYWP());
    };
    VOBPTR = MEM_INSERTVOB(CS3("ItRw_Quiver_", INTTOSTRING(NPC_HASITEMS(SLF, 0x8650)), "c.3ds"), MEM_GETANYWP());
    OCNPC_PUTINSLOT(SLF, "ZS_BOW", VOBPTR, QUIVERSLOTID);
    SLF.AIVAR[98] = NPC_HASITEMS(SLF, 0x8650);
    MEM_DELETEVOB(VOBPTR);
}

var int REFRESHCBOWQUIVERMODEL.VOBPTR = 0;
func void CREATECBOWQUIVER(var C_NPC SLF) {
    SLF.AIVAR[90] = TRUE;
    REFRESHCBOWQUIVERMODEL(SLF);
}

func void REMOVEQUIVER(var C_NPC SLF) {
    SLF.AIVAR[90] = FALSE;
    OCNPC_REMOVEFROMSLOT(SLF, "ZS_CROSSBOW", 1, QUIVERSLOTID);
}

func void REFRESHQUIVER(var C_NPC NPC) {
    if ((QUIVERS_GETQUIVERTYPE(NPC)) == (1)) {
        if ((NPC.AIVAR[90]) && ((NPC_HASITEMS(NPC, 0x864f)) != (NPC.AIVAR[98]))) {
            REFRESHBOWQUIVERMODEL(NPC);
        };
    };
    if ((QUIVERS_GETQUIVERTYPE(NPC)) == (2)) {
        if ((NPC.AIVAR[90]) && ((NPC_HASITEMS(NPC, 0x8650)) != (NPC.AIVAR[98]))) {
            REFRESHCBOWQUIVERMODEL(NPC);
        };
    };
}

func void QUIVERS_FF() {
    HER = HLP_GETNPC(0x71b);
    REFRESHQUIVER(HER);
}

instance QUIVERS_FF.HER(C_NPC)
func void CREATEQUIVERSFORALL(var int NODE) {
    L = _^(NODE);
    HER = HLP_GETNPC(0x71b);
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

instance CREATEQUIVERSFORALL.L(ZCLISTSORT)
instance CREATEQUIVERSFORALL.HER(C_NPC)
instance CREATEQUIVERSFORALL.NPC(C_NPC)
instance CREATEQUIVERSFORALL.ITM(C_ITEM)
func void _EVT_QUIVER_EQUIP() {
    if ((MEM_WORLDTIMER.WORLDTIME) == (0)) {
        return;
    };
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
        if ((ITM.FLAGS) & (ITEM_BOW)) {
            CREATEBOWQUIVER(SLF);
        } else if ((ITM.FLAGS) & (ITEM_CROSSBOW)) {
            CREATECBOWQUIVER(SLF);
        };
    };
}

var int _EVT_QUIVER_EQUIP.ITMPTR = 0;
instance _EVT_QUIVER_EQUIP.ITM(C_ITEM)
instance _EVT_QUIVER_EQUIP.SLF(C_NPC)
func void _EVT_QUIVER_UNEQUIP() {
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

var int _EVT_QUIVER_UNEQUIP.ITMPTR = 0;
instance _EVT_QUIVER_UNEQUIP.ITM(C_ITEM)
instance _EVT_QUIVER_UNEQUIP.SLF(C_NPC)
func void INIT_QUIVERS_GAMESTART() {
    HOOKENGINEF(OCNPC__EQUIPITEM, 7, 0x54f2);
    HOOKENGINEF(OCNPC__UNEQUIPITEM, 6, 0x54f6);
    FF_APPLYONCEGT(0x54ea);
}

func void INIT_QUIVERS_ALWAYS() {
    LIST_FORFS(MEM_WORLD.VOBLIST_NPCS, 0x54ec);
}

