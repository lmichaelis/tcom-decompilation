instance DIA_GLORIO_EXIT(C_INFO) {
    NPC = 56744;
    NR = 999;
    CONDITION = DIA_GLORIO_EXIT_CONDITION;
    INFORMATION = DIA_GLORIO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GLORIO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GLORIO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}
