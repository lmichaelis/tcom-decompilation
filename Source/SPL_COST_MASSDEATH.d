const int SPL_COST_MASSDEATH = 150;
const int SPL_DAMAGE_MASSDEATH = 500;
instance SPELL_MASSDEATH(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_MASSDEATH;
    TARGETCOLLECTALGO = TARGET_COLLECT_NONE;
}

func int SPELL_LOGIC_MASSDEATH(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_MASSDEATH)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}
