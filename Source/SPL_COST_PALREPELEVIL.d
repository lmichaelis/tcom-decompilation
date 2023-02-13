const int SPL_COST_PALREPELEVIL = 30;
const int SPL_DAMAGE_PALREPELEVIL = 300;
instance SPELL_PALREPELEVIL(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_PALREPELEVIL;
}

func int SPELL_LOGIC_PALREPELEVIL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_PALREPELEVIL)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

