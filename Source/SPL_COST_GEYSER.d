const int SPL_COST_GEYSER = 30;
const int SPL_DAMAGE_GEYSER = 200;
instance SPELL_GEYSER(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_GEYSER;
    DAMAGETYPE = DAM_MAGIC;
}

func int SPELL_LOGIC_GEYSER(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL3))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_GEYSER)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

