const int SPL_COST_CHARGEZAP = 100;
const int STEP_CHARGEZAP = 25;
const int SPL_DAMAGE_CHARGEZAP = 100;
instance SPELL_CHARGEZAP(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 100;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_CHARGEZAP;
    DAMAGETYPE = DAM_MAGIC;
    CANTURNDURINGINVEST = TRUE;
}

func int SPELL_LOGIC_CHARGEZAP(var int MANAINVESTED) {
    if ((SELF.ATTRIBUTE[2]) < (STEP_CHARGEZAP)) {
        return SPL_DONTINVEST;
    };
    if ((MANAINVESTED) <= ((STEP_CHARGEZAP) * (1))) {
        SELF.AIVAR[88] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEZAP) * (1))) && ((SELF.AIVAR[88]) <= (1))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEZAP);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 2;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEZAP) * (2))) && ((SELF.AIVAR[88]) <= (2))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEZAP);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 3;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEZAP) * (3))) && ((SELF.AIVAR[88]) <= (3))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEZAP);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 4;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_CHARGEZAP) * (3))) && ((SELF.AIVAR[88]) == (4))) {
        return SPL_DONTINVEST;
    };
    return SPL_STATUS_CANINVEST_NO_MANADEC;
}

func void SPELL_CAST_CHARGEZAP(var int SPELLLEVEL) {
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_CHARGEZAP);
    if ((SELF.ATTRIBUTE[2]) < (0)) {
        SELF.ATTRIBUTE[2] = 0;
    };
    SELF.AIVAR[20] += 1;
}

