const int SPL_COST_ICEWAVE = 120;
instance SPELL_ICEWAVE(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = 60;
    TARGETCOLLECTALGO = TARGET_COLLECT_NONE;
}

func int SPELL_LOGIC_ICEWAVE(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL3))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_ICEWAVE)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_ICEWAVE() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL3);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_ICEWAVE);
    SELF.AIVAR[20] += 1;
}

