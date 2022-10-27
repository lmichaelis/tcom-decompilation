instance DIA_VLK_SLUMS_CQ004_ASK(C_INFO) {
    NR = 1;
    CONDITION = DIA_VLK_SLUMS_CQ004_ASK_CONDITION;
    INFORMATION = DIA_VLK_SLUMS_CQ004_ASK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What do you know about the damage to one of the harbor cranes?";
}

func int DIA_VLK_SLUMS_CQ004_ASK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) {
        if ((NPC_KNOWSINFO(OTHER, 0x1265a)) && ((NPC_KNOWSINFO(OTHER, 0x12512)) == (FALSE))) {
            if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VLK_SLUMS_CQ004_ASK_INFO() {
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

var int DIA_VLK_SLUMS_CQ004_ASK_INFO.RNGANWSER2 = 0;
var int DIA_VLK_SLUMS_CQ004_ASK_INFO.CQ004_BORRINFO = 0;
func void B_ASSIGNAMBIENTINFOS_VLK_SLUMS(var C_NPC SLF) {
    DIA_VLK_SLUMS_CQ004_ASK.NPC = HLP_GETINSTANCEID(SLF);
}

