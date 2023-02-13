const int SPL_COST_ZAP = 3;
const int SPL_DAMAGE_ZAP = 20;
instance SPELL_ZAP(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_ZAP;
    DAMAGETYPE = DAM_MAGIC;
}

func int SPELL_LOGIC_ZAP(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_ZAP)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

