const int SPL_COST_ARMYOFDARKNESS = 150;
instance SPELL_ARMYOFDARKNESS(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    TARGETCOLLECTALGO = TARGET_COLLECT_NONE;
}

func int SPELL_LOGIC_ARMYOFDARKNESS(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL3))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_ARMYOFDARKNESS)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_ARMYOFDARKNESS(var int SPELLLEVEL) {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL3);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_ARMYOFDARKNESS);
    if (NPC_ISPLAYER(SELF)) {
        WLD_SPAWNNPCRANGE(SELF, 0xc695, 6, 0x44480000);
    };
    WLD_SPAWNNPCRANGE(SELF, 0xc684, 6, 0x44480000);
    SELF.AIVAR[20] += 1;
}

