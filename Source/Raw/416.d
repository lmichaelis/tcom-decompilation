instance DIA_PART4_FISHERMAN_Q208_YANNICK(C_INFO) {
    NR = 1;
    CONDITION = DIA_PART4_FISHERMAN_Q208_YANNICK_CONDITION;
    INFORMATION = DIA_PART4_FISHERMAN_Q208_YANNICK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you know where I can find Yannick?";
}

func int DIA_PART4_FISHERMAN_Q208_YANNICK_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1325a)) && ((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING))) && ((Q208_TALKEDWITHYANNIC) == (FALSE))) {
        if ((SELF.AIVAR[93]) <= (B_GETDAYPLUS())) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PART4_FISHERMAN_Q208_YANNICK_INFO() {
    B_SAY(OTHER, SELF, "$Q208_SearchYannick");
    RNGANWSER = HLP_RANDOM(4);
    if ((RNGANWSER) == (0)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        B_SAY(SELF, OTHER, "$Q208_SearchYannick_Anwser_01");
    };
    if ((RNGANWSER) == (1)) {
        AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
        B_SAY(SELF, OTHER, "$Q208_SearchYannick_Anwser_02");
        B_SAY(OTHER, SELF, "$Q208_SearchYannick2");
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$Q208_SearchYannick_Anwser_03");
    };
    if ((RNGANWSER) == (2)) {
        B_SAY(SELF, OTHER, "$DONTKNOW_TOPIC_CALM");
    };
    if ((RNGANWSER) == (3)) {
        B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    };
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[93] = (B_GETDAYPLUS()) + (1);
}

var int DIA_PART4_FISHERMAN_Q208_YANNICK_INFO.RNGANWSER = 0;
func void B_ASSIGNAMBIENTINFOS_PART4_FISHERMAN(var C_NPC SLF) {
    DIA_PART4_FISHERMAN_Q208_YANNICK.NPC = HLP_GETINSTANCEID(SLF);
}

