const int SPL_COST_FIREBOLT = 5;
const int SPL_DAMAGE_FIREBOLT = 25;
instance SPELL_FIREBOLT(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_FIREBOLT;
    DAMAGETYPE = DAM_MAGIC;
}

func int SPELL_LOGIC_FIREBOLT(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_FIREBOLT)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}
