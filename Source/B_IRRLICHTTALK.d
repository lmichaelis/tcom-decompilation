func void B_IRRLICHTTALK() {
    AI_OUTPUT(SELF, OTHER, "DIA_Wisp_03_01");
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPPROCESSINFOS(OTHER);
}

instance DIA_WISP_VZ_EXIT(C_INFO) {
    NPC = 51061;
    NR = 999;
    CONDITION = DIA_WISP_VZ_EXIT_CONDITION;
    INFORMATION = DIA_WISP_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WISP_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WISP_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WISP_VZ_HELLO(C_INFO) {
    NPC = 51061;
    NR = 1;
    CONDITION = DIA_WISP_VZ_HELLO_CONDITION;
    INFORMATION = DIA_WISP_VZ_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WISP_VZ_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WISP_VZ_HELLO_INFO() {
    B_IRRLICHTTALK();
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_WISP_FOUND);
}

instance DIA_WISP_VZ_IDLE(C_INFO) {
    NPC = 51061;
    NR = 1;
    CONDITION = DIA_WISP_VZ_IDLE_CONDITION;
    INFORMATION = DIA_WISP_VZ_IDLE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WISP_VZ_IDLE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 87447)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WISP_VZ_IDLE_INFO() {
    B_IRRLICHTTALK();
    AI_STOPPROCESSINFOS(SELF);
}
