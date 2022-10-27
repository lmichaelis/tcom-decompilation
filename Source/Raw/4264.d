instance DIA_LOAFS_VZ_EXIT(C_INFO) {
    NPC = 0xe770;
    NR = 999;
    CONDITION = DIA_LOAFS_VZ_EXIT_CONDITION;
    INFORMATION = DIA_LOAFS_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LOAFS_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LOAFS_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LOAFS_VZ_AMBIENT(C_INFO) {
    NPC = 0xe770;
    NR = 1;
    CONDITION = DIA_LOAFS_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_LOAFS_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How do you stand being in this cursed place?";
}

func int DIA_LOAFS_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOAFS_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale1");
    if ((Q514_FINISHVOLFZACKE) == (1)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Loafs_VZ_Ambient_03_03");
    };
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Loafs_VZ_Ambient_03_02");
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Loafs_VZ_Ambient_03_01");
}

