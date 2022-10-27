const int SPL_COST_SLOWDOWN = 75;
instance SPELL_SLOWDOWN(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_FOCUS;
    TARGETCOLLECTRANGE = 0xdac;
}

func int SPELL_LOGIC_SLOWDOWN(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL3))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SLOWDOWN)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

const int SPELL_SLOWDOWNDURATION = 60000;
func void SPELL_CAST_SLOWDOWN() {
    NPC = HLP_GETNPC(0x717);
    if ((MEM_READINT((NPC.MAG_BOOK) + (24))) == (0)) {
        CALL_PTRPARAM(_@(0xaaee));
        CALL__THISCALL(NPC.MAG_BOOK, 0x475a50);
    };
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL3);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SLOWDOWN);
    if ((OTHER.AIVAR[17]) == (FALSE)) {
        PRINTD("slowdown spell");
        OTHER.AIVAR[17] = 1;
        OTHER.VOICEPITCH = -(5);
        WLD_PLAYEFFECT("SLOW_TIME_SPELL", OTHER, OTHER, 0, 0, 0, FALSE);
        if (((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HERO))) && ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PIR_13050_OTIS_ARENA)))) && ((Q306_STATE) == (5))) && ((NPC_ISINSTATE(OTHER, 0xf0a3)) == (FALSE))) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_26);
        };
        FF_APPLYEXTDATAGT(0xaaf0, SPELL_SLOWDOWNDURATION, 1, NPC_GETID(OTHER));
    };
    if ((OTHER.AIVAR[17]) == (TRUE)) {
        PRINTD("spowolniony!!!");
    };
    SELF.AIVAR[20] += 1;
}

instance SPELL_CAST_SLOWDOWN.NPC(OCNPC)
var int SPELL_CAST_SLOWDOWN.NPCPTR = 0;
func void CLEARSLOWDOWNSPELL(var int NPCPTR) {
    NPC = _^(NPC_FINDBYID(NPCPTR));
    if (HLP_ISVALIDNPC(NPC)) {
        PRINTD(CS2(NPC.NAME[0], " slowdown spell end"));
        NPC.AIVAR[17] = 0;
        NPC.VOICEPITCH = 0;
    };
    PRINTD("slowdownend SHOULDNT HAPPEN!!!!!");
}

instance CLEARSLOWDOWNSPELL.NPC(C_NPC)
