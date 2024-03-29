instance DIA_RUUD_VZ_EXIT(C_INFO) {
    NPC = 59383;
    NR = 999;
    CONDITION = DIA_RUUD_VZ_EXIT_CONDITION;
    INFORMATION = DIA_RUUD_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RUUD_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RUUD_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RUUD_VZ_TRAIN_PICKLOCK(C_INFO) {
    NPC = 59383;
    NR = 7;
    CONDITION = DIA_RUUD_VZ_TRAIN_PICKLOCK_CONDITION;
    INFORMATION = DIA_RUUD_VZ_TRAIN_PICKLOCK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_PICKLOCK2, 0, RUUD_PICKLOCK);
}

func int DIA_RUUD_VZ_TRAIN_PICKLOCK_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 87098)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKLOCK)) == (1))) && ((Q514_CAMPISREADY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RUUD_VZ_TRAIN_PICKLOCK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ruud_VZ_TRAIN_Picklock_15_00");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (RUUD_PICKLOCK)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKLOCK)) == (2)) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, RUUD_PICKLOCK);
            AI_OUTPUT(SELF, OTHER, "DIA_Ruud_TRAIN_Picklock_03_01");
            AI_OUTPUT(SELF, OTHER, "DIA_Ruud_TRAIN_Picklock_03_02");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Ruud_TRAIN_Picklock_03_03");
}

instance DIA_RUUD_VZ_AMBIENT(C_INFO) {
    NPC = 59383;
    NR = 998;
    CONDITION = DIA_RUUD_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_RUUD_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Aren't you scared?";
}

func int DIA_RUUD_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RUUD_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale2");
    if ((Q514_FINISHVOLFZACKE) == (1)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ruud_VZ_Ambient_03_05");
    };
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ruud_VZ_Ambient_03_04");
    };
    if ((Q514_CAMPISREADY) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Ruud_VZ_Ambient_03_03");
    };
    if ((Q514_CAMPISREADY) == (TRUE)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ruud_VZ_Ambient_03_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ruud_VZ_Ambient_03_02");
        };
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

