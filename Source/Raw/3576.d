func void OCNPC__CHANGEATTRIBUTE_HOOK() {
    ATT = MEM_READINT((ESP) + (4));
    CHANGE = MEM_READINT((ESP) + (8));
    SLF = MEM_PTRTOINST(ECX);
    if ((ATT) == (ATR_HITPOINTS)) {
        if ((SLF.FLAGS) & (NPC_FLAG_IMPORTANT)) {
            if (((SLF.ATTRIBUTE[0]) + (CHANGE)) <= (0)) {
                MEM_WRITEINT((ESP) + (8), (1) - (SLF.ATTRIBUTE[0]));
                PRINTD(CS2("block kill: ", SLF.NAME[0]));
            };
        };
    };
}

var int OCNPC__CHANGEATTRIBUTE_HOOK.ATT = 0;
var int OCNPC__CHANGEATTRIBUTE_HOOK.CHANGE = 0;
instance OCNPC__CHANGEATTRIBUTE_HOOK.SLF(C_NPC)
