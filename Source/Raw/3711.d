instance DIA_WORKER_QA401_01_BUSY(C_INFO) {
    NPC = 0xd2aa;
    NR = 1;
    CONDITION = DIA_WORKER_QA401_01_BUSY_CONDITION;
    INFORMATION = DIA_WORKER_QA401_01_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WORKER_QA401_01_BUSY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKER_QA401_01_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

