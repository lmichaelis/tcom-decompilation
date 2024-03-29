instance DIA_WORKER_01_Q312_EXIT(C_INFO) {
    NPC = 55688;
    NR = 999;
    CONDITION = DIA_WORKER_01_Q312_EXIT_CONDITION;
    INFORMATION = DIA_WORKER_01_Q312_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WORKER_01_Q312_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WORKER_01_Q312_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WORKER_01_Q312_BUSY(C_INFO) {
    NPC = 55688;
    NR = 1;
    CONDITION = DIA_WORKER_01_Q312_BUSY_CONDITION;
    INFORMATION = DIA_WORKER_01_Q312_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER_01_Q312_BUSY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER_01_Q312_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
    if ((Q312_INFOABOUTSEWERS) == (FALSE)) {
        Q312_INFOABOUTSEWERS = TRUE;
        AI_LOGENTRY(TOPIC_Q312, LOG_Q312_SEWERS_NOENTRY);
    };
}

