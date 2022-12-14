const int SPL_COST_DEATHBOLT = 25;
const int SPL_DAMAGE_DEATHBOLT = 125;
instance SPELL_DEATHBOLT(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_DEATHBOLT;
}

func int SPELL_LOGIC_DEATHBOLT(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_DEATHBOLT)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_DEATHBOLT() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_DEATHBOLT);
    SELF.AIVAR[20] += 1;
}

