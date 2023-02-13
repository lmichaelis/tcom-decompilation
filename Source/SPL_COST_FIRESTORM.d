const int SPL_COST_FIRESTORM = 200;
const int STEP_FIRESTORM = 50;
const int SPL_DAMAGE_FIRESTORM = 75;
const int SPL_PYRO_DAMAGE_PER_SEC = 20;
instance SPELL_PYROKINESIS(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 30;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_FIRESTORM;
    DAMAGETYPE = DAM_MAGIC;
    CANTURNDURINGINVEST = TRUE;
}

func int SPELL_LOGIC_PYROKINESIS(var int MANAINVESTED) {
    if ((SELF.ATTRIBUTE[2]) < (STEP_FIRESTORM)) {
        return SPL_DONTINVEST;
    };
    if ((MANAINVESTED) <= ((STEP_FIRESTORM) * (1))) {
        SELF.AIVAR[88] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
    if (((MANAINVESTED) > ((STEP_FIRESTORM) * (1))) && ((SELF.AIVAR[88]) <= (1))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_FIRESTORM);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 2;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_FIRESTORM) * (2))) && ((SELF.AIVAR[88]) <= (2))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_FIRESTORM);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 3;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_FIRESTORM) * (3))) && ((SELF.AIVAR[88]) <= (3))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_FIRESTORM);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 4;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_FIRESTORM) * (3))) && ((SELF.AIVAR[88]) == (4))) {
        return SPL_DONTINVEST;
    };
    return SPL_STATUS_CANINVEST_NO_MANADEC;
}

