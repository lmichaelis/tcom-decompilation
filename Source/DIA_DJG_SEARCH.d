instance DIA_DJG_SEARCH(C_INFO) {
    NR = 10;
    CONDITION = DIA_DJG_SEARCH_CONDITION;
    INFORMATION = DIA_DJG_SEARCH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you know where I can find Henk and Legrif?";
}

func int DIA_DJG_SEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 81528))) {
        if ((Q402_FOUNDVARHALANDLEGRIF) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_DJG_SEARCH_INFO() {
    var int RNGANWSER;
    AI_OUTPUT(OTHER, SELF, "DIA_DJG_Search_15_01");
    RNGANWSER = HLP_RANDOM(4);
    if ((RNGANWSER) == (0)) {
        B_SAY(SELF, OTHER, "$DIA_DJG_Search_03_02");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$DIA_DJG_Search_03_03");
    };
    if ((RNGANWSER) == (2)) {
        if ((SELF.VOICE) == (37)) {
            B_SAY(SELF, OTHER, "$DIA_DJG_Search_03_05");
        } else {
            B_SAY(SELF, OTHER, "$DIA_DJG_Search_03_04");
        };
    };
    if ((RNGANWSER) == (3)) {
        B_SAY(SELF, OTHER, "$DIA_DJG_Search_03_05");
    };
}

instance DIA_DJG_Q404_HELP(C_INFO) {
    NR = 11;
    CONDITION = DIA_DJG_Q404_HELP_CONDITION;
    INFORMATION = DIA_DJG_Q404_HELP_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I need someone to guard the mine.";
}

func int DIA_DJG_Q404_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DJG_Q404_HELP_INFO() {
    var int RNGANWSER;
    Q404_MARVINASK_NEEDHELP();
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        DIA_IMBUSY_ANGRY();
    };
    if ((RNGANWSER) == (1)) {
        DIA_IMBUSY_CALM();
    };
}

func void B_ASSIGNAMBIENTINFOS_DJG(var C_NPC SLF) {
    DIA_DJG_SEARCH.NPC = HLP_GETINSTANCEID(SLF);
    DIA_DJG_Q404_HELP.NPC = HLP_GETINSTANCEID(SLF);
}

