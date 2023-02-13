func int DIA_SQ225_OLDCITY_ALARM_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) {
        if (((SQ225_OLDCITYUNLOCKED) == (2)) || ((SQ225_OLDCITYUNLOCKED) == (3))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SQ225_OLDCITY_ALARM_INFO() {
    SQ225_OLDCITYUNLOCKED = 3;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Guards");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

instance DIA_SQ225_OLDCITY_REGULARALARM(C_INFO) {
    NR = 1;
    CONDITION = DIA_SQ225_OLDCITY_REGULARALARM_CONDITION;
    INFORMATION = DIA_SQ225_OLDCITY_REGULARALARM_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SQ225_OLDCITY_REGULARALARM_CONDITION() {
    if (((OLDCITYENTERED) == (FALSE)) && ((Q308_TOTHEOLDTOWN_EVENTS) != (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SQ225_OLDCITY_REGULARALARM_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if ((SELF.GUILD) == (GIL_MIL)) {
        B_SAY(SELF, OTHER, "$Alarm");
    };
    B_SAY(SELF, OTHER, "$Guards");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void B_ASSIGNAMBIENTINFOS_SQ225_OLDCITY(var C_NPC SLF) {
    DIA_SQ225_OLDCITY_ALARM.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SQ225_OLDCITY_REGULARALARM.NPC = HLP_GETINSTANCEID(SLF);
}
