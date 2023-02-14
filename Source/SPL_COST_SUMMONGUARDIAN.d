const int SPL_COST_SUMMONGUARDIAN = 60;
instance SPELL_SUMMONGUARDIAN(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    TARGETCOLLECTALGO = TARGET_COLLECT_NONE;
}

func int SPELL_LOGIC_SUMMONGUARDIAN(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SUMMONGUARDIAN)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_SUMMONGUARDIAN() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SUMMONGUARDIAN);
    SELF.AIVAR[20] = (SELF.AIVAR[20]) + (1);
    if (NPC_ISPLAYER(SELF)) {
        WLD_SPAWNNPCRANGE(SELF, 50215, 1, 1140457472);
    };
    WLD_SPAWNNPCRANGE(SELF, 50216, 1, 1140457472);
    SELF.AIVAR[20] += 1;
}

