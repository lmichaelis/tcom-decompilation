const int SPL_COST_WINDFIST = 80;
const int STEP_WINDFIST = 20;
const int SPL_DAMAGE_WINDFIST = 75;
instance SPELL_WINDFIST(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 30;
    DAMAGE_PER_LEVEL = SPL_DAMAGE_WINDFIST;
    DAMAGETYPE = DAM_FLY;
    CANTURNDURINGINVEST = TRUE;
    TARGETCOLLECTALGO = TARGET_COLLECT_FOCUS_FALLBACK_NONE;
    TARGETCOLLECTRANGE = 1000;
    TARGETCOLLECTTYPE = TARGET_TYPE_NPCS;
}

func int SPELL_LOGIC_WINDFIST(var int MANAINVESTED) {
    if ((SELF.ATTRIBUTE[2]) < (STEP_WINDFIST)) {
        return SPL_DONTINVEST;
    };
    if ((MANAINVESTED) <= ((STEP_WINDFIST) * (1))) {
        SELF.AIVAR[88] = 1;
        return SPL_STATUS_CANINVEST_NO_MANADEC;
    };
    if (((MANAINVESTED) > ((STEP_WINDFIST) * (1))) && ((SELF.AIVAR[88]) <= (1))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_WINDFIST);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 2;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_WINDFIST) * (2))) && ((SELF.AIVAR[88]) <= (2))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_WINDFIST);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 3;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_WINDFIST) * (3))) && ((SELF.AIVAR[88]) <= (3))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (STEP_WINDFIST);
        if ((SELF.ATTRIBUTE[2]) < (0)) {
            SELF.ATTRIBUTE[2] = 0;
        };
        SELF.AIVAR[88] = 4;
        return SPL_NEXTLEVEL;
    };
    if (((MANAINVESTED) > ((STEP_WINDFIST) * (3))) && ((SELF.AIVAR[88]) == (4))) {
        return SPL_DONTINVEST;
    };
    return SPL_STATUS_CANINVEST_NO_MANADEC;
}

