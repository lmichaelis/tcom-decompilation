instance DIA_ARAXOS_01_QA305_EXIT(C_INFO) {
    NPC = 0xd325;
    NR = 999;
    CONDITION = DIA_ARAXOS_01_QA305_EXIT_CONDITION;
    INFORMATION = DIA_ARAXOS_01_QA305_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARAXOS_01_QA305_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARAXOS_01_QA305_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARAXOS_QA305_FINALLY(C_INFO) {
    NPC = 0xd325;
    NR = 1;
    CONDITION = DIA_ARAXOS_QA305_FINALLY_CONDITION;
    INFORMATION = DIA_ARAXOS_QA305_FINALLY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_QA305_FINALLY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x114b5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_QA305_FINALLY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_QA305_Finally_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_QA305_Finally_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_QA305_Finally_03_03");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_QA305_Finally_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_QA305_Finally_03_05");
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARAXOS_QA305_BUSY(C_INFO) {
    NPC = 0xd325;
    NR = 1;
    CONDITION = DIA_ARAXOS_QA305_BUSY_CONDITION;
    INFORMATION = DIA_ARAXOS_QA305_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_QA305_BUSY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x114d1))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_QA305_BUSY_INFO() {
    DIA_IMBUSY_DRUNK();
}

