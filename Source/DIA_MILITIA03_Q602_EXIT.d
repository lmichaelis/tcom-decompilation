instance DIA_MILITIA03_Q602_EXIT(C_INFO) {
    NPC = 59698;
    NR = 999;
    CONDITION = DIA_MILITIA03_Q602_EXIT_CONDITION;
    INFORMATION = DIA_MILITIA03_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MILITIA03_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MILITIA03_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MILITIA03_Q602_THANKS(C_INFO) {
    NPC = 59698;
    NR = 1;
    CONDITION = DIA_MILITIA03_Q602_THANKS_CONDITION;
    INFORMATION = DIA_MILITIA03_Q602_THANKS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MILITIA03_Q602_THANKS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_RAMSEY_STATUS) >= (1))) && ((Q602_MILITIA_DIALOGUE) == (0))) && (NPC_KNOWSINFO(OTHER, 90246))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MILITIA03_Q602_THANKS_INFO() {
    Q602_AFTERRAMSEY_MILITIADIALOGUE();
}

