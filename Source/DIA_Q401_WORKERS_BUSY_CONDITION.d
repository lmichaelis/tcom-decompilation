func int DIA_Q401_WORKERS_BUSY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_Q401_WORKERS_BUSY_INFO() {
    var int RNGANWSER;
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        DIA_IMBUSY_ANGRY();
    };
    if ((RNGANWSER) == (1)) {
        DIA_IMBUSY_CALM();
    };
    AI_STOPPROCESSINFOS(SELF);
}

func void B_ASSIGNAMBIENTINFOS_Q401_WORKERS(var C_NPC SLF) {
    DIA_Q401_WORKERS_BUSY.NPC = HLP_GETINSTANCEID(SLF);
}

