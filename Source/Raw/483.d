const int SPL_COST_INSTANTFIRESTORM = 25;
const int SPL_DAMAGE_INSTANTFIRESTORM = 100;
instance SPELL_FIRESTORM(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_INSTANTFIRESTORM;
    DAMAGETYPE = DAM_MAGIC;
}

func int SPELL_LOGIC_FIRESTORM(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_INSTANTFIRESTORM)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_FIRESTORM() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_INSTANTFIRESTORM);
    SELF.AIVAR[20] += 1;
}

