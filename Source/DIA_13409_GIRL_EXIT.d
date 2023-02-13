instance DIA_13409_GIRL_EXIT(C_INFO) {
    NPC = 57302;
    NR = 999;
    CONDITION = DIA_13409_GIRL_EXIT_CONDITION;
    INFORMATION = DIA_13409_GIRL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13409_GIRL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13409_GIRL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13409_GIRL_AFTEREVENT(C_INFO) {
    NPC = 57302;
    NR = 1;
    CONDITION = DIA_13409_GIRL_AFTEREVENT_CONDITION;
    INFORMATION = DIA_13409_GIRL_AFTEREVENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_13409_GIRL_AFTEREVENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 85625)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13409_GIRL_AFTEREVENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13409_Girl_AfterEvent_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

