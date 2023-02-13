func int DIA_VLK_SLUMS_CQ004_ASK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) {
        if ((NPC_KNOWSINFO(OTHER, 75354)) && ((NPC_KNOWSINFO(OTHER, 75026)) == (FALSE))) {
            if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_SLUMS_CQ004_ASK_INFO() {
    var int CQ004_BORRINFO;
    var int RNGANWSER2;
    SELF.AIVAR[93] = (WLD_GETDAY()) + (1);
    B_SAY(OTHER, SELF, "$CQ004_MARVIN_ABOUTCRANE");
    RNGANWSER2 = HLP_RANDOM(3);
    if ((RNGANWSER2) == (0)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_TOPIC_CALM");
    };
    if ((RNGANWSER2) == (1)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$DONTKNOW_TOPIC_ANGRY");
    };
    if ((RNGANWSER2) == (2)) {
        B_SAY(SELF, OTHER, "$CQ004_ASKBOOR");
        if ((CQ004_BORRINFO) == (FALSE)) {
            CQ004_BORRINFO = TRUE;
            B_LOGENTRY(TOPIC_CQ004, LOG_CQ004_BORRINFO);
        };
    };
}

func void B_ASSIGNAMBIENTINFOS_VLK_SLUMS(var C_NPC SLF) {
    DIA_VLK_SLUMS_CQ004_ASK.NPC = HLP_GETINSTANCEID(SLF);
}

