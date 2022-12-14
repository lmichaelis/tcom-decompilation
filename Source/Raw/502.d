const int SPL_COST_SKULL = 11;
const int SPL_DAMAGE_SKULL = 65;
instance SPELL_SKULL(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_SKULL;
    DAMAGETYPE = DAM_MAGIC;
    TARGETCOLLECTALGO = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
}

func int SPELL_LOGIC_SKULL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL2))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SKULL)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_SKULL() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL2);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SKULL);
    SELF.AIVAR[20] += 1;
}

