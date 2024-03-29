instance DIA_FARMER02_EXIT(C_INFO) {
    NPC = 56989;
    NR = 999;
    CONDITION = DIA_FARMER02_EXIT_CONDITION;
    INFORMATION = DIA_FARMER02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FARMER02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FARMER02_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FARMER02_SQ225_HOLDWIGFIGHT(C_INFO) {
    NPC = 56989;
    NR = 1;
    CONDITION = DIA_FARMER02_SQ225_HOLDWIGFIGHT_CONDITION;
    INFORMATION = DIA_FARMER02_SQ225_HOLDWIGFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FARMER02_SQ225_HOLDWIGFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_HUNTINGGIANTBUG) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FARMER02_SQ225_HOLDWIGFIGHT_INFO() {
    SQ225_TELEPORTFARMER = TRUE;
    SQ225_REMOVEHOLDWIGPORTALCHECK = TRUE;
    WLD_ASSIGNROOMTOGUILD("9WINERY01", GIL_PAL);
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer02_SQ225_HoldwigFight_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer02_SQ225_HoldwigFight_03_05");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_FARMER_ANDREASATTACK);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

