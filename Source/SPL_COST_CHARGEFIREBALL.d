const int SPL_COST_CHARGEFIREBALL = 160;
const int STEP_CHARGEFIREBALL = 40;
const int SPL_DAMAGE_CHARGEFIREBALL = 75;
instance SPELL_CHARGEFIREBALL(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 30;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_CHARGEFIREBALL;
    DAMAGETYPE = DAM_MAGIC;
    CANTURNDURINGINVEST = TRUE;
}

func int SPELL_LOGIC_CHARGEFIREBALL(var int MANAINVESTED) {
    if ((SELF.ATTRIBUTE[2]) < (STEP_CHARGEFIREBALL)) {
        return SPL_DONTINVEST;
    };
    if ((MANAINVESTED) <= ((STEP_CHARGEFIREBALL) * (1))) {
        SELF.AIVAR[88] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEFIREBALL) * (1))) && ((SELF.AIVAR[88]) <= (1))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEFIREBALL);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 2;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEFIREBALL) * (2))) && ((SELF.AIVAR[88]) <= (2))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEFIREBALL);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 3;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEFIREBALL) * (3))) && ((SELF.AIVAR[88]) <= (3))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEFIREBALL);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 4;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEFIREBALL) * (3))) && ((SELF.AIVAR[88]) == (4))) {
        return SPL_DONTINVEST;
    };
    return SPL_STATUS_CANINVEST_NO_MANADEC;
}

