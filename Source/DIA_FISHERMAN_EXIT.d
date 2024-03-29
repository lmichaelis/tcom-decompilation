instance DIA_FISHERMAN_EXIT(C_INFO) {
    NPC = 54139;
    NR = 999;
    CONDITION = DIA_FISHERMAN_EXIT_CONDITION;
    INFORMATION = DIA_FISHERMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FISHERMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FISHERMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FISHERMAN_Q509_WATCHOUT(C_INFO) {
    NPC = 54139;
    NR = 1;
    CONDITION = DIA_FISHERMAN_Q509_WATCHOUT_CONDITION;
    INFORMATION = DIA_FISHERMAN_Q509_WATCHOUT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FISHERMAN_Q509_WATCHOUT_CONDITION() {
    return TRUE;
}

func void DIA_FISHERMAN_Q509_WATCHOUT_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fisherman_Q509_WatchOut_03_01");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SCARED");
}

