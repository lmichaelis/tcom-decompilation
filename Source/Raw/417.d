instance DIA_SQ505_CITIZEN_M7_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_SQ505_CITIZEN_M7_EXIT_CONDITION;
    INFORMATION = DIA_SQ505_CITIZEN_M7_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SQ505_CITIZEN_M7_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SQ505_CITIZEN_M7_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SQ505_CITIZEN_M7_BUSY(C_INFO) {
    NR = 1;
    CONDITION = DIA_SQ505_CITIZEN_M7_BUSY_CONDITION;
    INFORMATION = DIA_SQ505_CITIZEN_M7_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SQ505_CITIZEN_M7_BUSY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if (((LOG_GETSTATUS(MIS_SQ505)) != (LOG_RUNNING)) || ((SQ505_FIGHTWITHVOLKERGUARDS) != (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SQ505_CITIZEN_M7_BUSY_INFO() {
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        DIA_IMBUSY_ANGRY();
    };
    if ((RNGANWSER) == (1)) {
        DIA_IMBUSY_CALM();
    };
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_SQ505_CITIZEN_M7_BUSY_INFO.RNGANWSER = 0;
instance DIA_SQ505_CITIZEN_M7_WHAT(C_INFO) {
    NR = 1;
    CONDITION = DIA_SQ505_CITIZEN_M7_WHAT_CONDITION;
    INFORMATION = DIA_SQ505_CITIZEN_M7_WHAT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SQ505_CITIZEN_M7_WHAT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((SQ505_FIGHTWITHVOLKERGUARDS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SQ505_CITIZEN_M7_WHAT_INFO() {
    SQ505_FIGHTWITHVOLKERGUARDS = 3;
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_SQ505_Citizen_M7_What_03_01");
    INFO_CLEARCHOICES(0xa6ee);
    INFO_ADDCHOICE(0xa6ee, "You saw with your own eyes!", 0xa6f2);
    INFO_ADDCHOICE(0xa6ee, "This is what happens when someone tries to tell the truth...", 0xa6f3);
}

func void DIA_SQ505_CITIZEN_M7_WHAT_NEXT() {
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_SQ505_Citizen_M7_What_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_SQ505_Citizen_M7_What_Next_03_02");
    AI_TURNAWAY(SELF, OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_SQ505_Citizen_M7_What_Next_03_03");
    AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_VOLKERGUARD_HARBOUR_GONE);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x7dfd);
    AI_FUNCTION(SELF, 0x7ded);
}

func void DIA_SQ505_CITIZEN_M7_WHAT_EYES() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_SQ505_Citizen_M7_What_Eyes_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_SQ505_Citizen_M7_What_Eyes_15_02");
    DIA_SQ505_CITIZEN_M7_WHAT_NEXT();
}

func void DIA_SQ505_CITIZEN_M7_WHAT_TRUTH() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_SQ505_Citizen_M7_What_Truth_15_01");
    DIA_SQ505_CITIZEN_M7_WHAT_NEXT();
}

func void B_ASSIGNAMBIENTINFOS_SQ505_CITIZEN_M7(var C_NPC SLF) {
    DIA_SQ505_CITIZEN_M7_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SQ505_CITIZEN_M7_WHAT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_SQ505_CITIZEN_M7_BUSY.NPC = HLP_GETINSTANCEID(SLF);
}

