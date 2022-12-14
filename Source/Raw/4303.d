var int OSVALD_SQ202_HAMMERSPRICE = 0;
instance DIA_OSVALD_EXIT(C_INFO) {
    NPC = 0xe0ef;
    NR = 999;
    CONDITION = DIA_OSVALD_EXIT_CONDITION;
    INFORMATION = DIA_OSVALD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OSVALD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OSVALD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OSVALD_SQ111_WAITASEC(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ111_WAITASEC_CONDITION;
    INFORMATION = DIA_OSVALD_SQ111_WAITASEC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OSVALD_SQ111_WAITASEC_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ111)) != (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ111_WAITASEC_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_WaitASec_713_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_WaitASec_713_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_WaitASec_713_02");
}

instance DIA_OSVALD_WHOAREYOU(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_WHOAREYOU_CONDITION;
    INFORMATION = DIA_OSVALD_WHOAREYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_OSVALD_WHOAREYOU_CONDITION() {
    return TRUE;
}

func void DIA_OSVALD_WHOAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_whoareyou_15_00");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_whoareyou_713_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_whoareyou_713_02");
}

instance DIA_OSVALD_SQ111_START(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ111_START_CONDITION;
    INFORMATION = DIA_OSVALD_SQ111_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you need?";
}

func int DIA_OSVALD_SQ111_START_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x15a16)) && (NPC_KNOWSINFO(OTHER, 0x15a13))) && ((LOG_GETSTATUS(MIS_SQ111)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ111_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Start_15_00");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_713_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_713_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Start_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_713_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_713_05");
    AI_RESETFACEANI(OTHER);
    INFO_ADDCHOICE(0x15a19, "I'm sorry, but I don't have time right now.", 0x15a1d);
    INFO_ADDCHOICE(0x15a19, "How can I help you?", 0x15a1c);
}

func void DIA_OSVALD_SQ111_START_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Start_help_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_help_713_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_help_713_02");
    INFO_CLEARCHOICES(0x15a19);
    INFO_ADDCHOICE(0x15a19, "All right, I'll see what it is.", 0x15a1e);
    INFO_CLEARCHOICES(0x15a1f);
    INFO_ADDCHOICE(0x15a1f, "All right, I'll see what it is.", 0x15a1e);
}

func void DIA_OSVALD_SQ111_START_SORRY() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Start_sorry_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_sorry_713_01");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    SQ111_TAKEQUEST = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_OSVALD_SQ111_START_HELP_FEW_CHECK() {
    SQ111_TAKEQUEST = FALSE;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Start_help_few_check_15_00");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Start_help_few_check_713_01");
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_SQ111, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ111), TOPIC_SQ111, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ111, LOG_SQ111_START);
    INFO_CLEARCHOICES(0x15a1f);
    INFO_CLEARCHOICES(0x15a19);
    AI_STOPPROCESSINFOS(SELF);
    SQ111_PREPARESTONES();
}

instance DIA_OSVALD_SQ111_TAKEQUEST(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ111_TAKEQUEST_CONDITION;
    INFORMATION = DIA_OSVALD_SQ111_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you still need help?";
}

func int DIA_OSVALD_SQ111_TAKEQUEST_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x15a19)) && ((SQ111_TAKEQUEST) == (TRUE))) && ((LOG_GETSTATUS(MIS_SQ111)) != (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_SQ111)) != (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ111_TAKEQUEST_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_TakeQuest_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_TakeQuest_713_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    DIA_OSVALD_SQ111_START_HELP();
}

instance DIA_OSVALD_SQ111_FINISH(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ111_FINISH_CONDITION;
    INFORMATION = DIA_OSVALD_SQ111_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OSVALD_SQ111_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ111)) == (LOG_RUNNING)) && ((SQ111_MILLREADY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ111_FINISH_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ111_Finish_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Finish_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ111_Finish_713_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ111, LOG_SQ111_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ111), TOPIC_SQ111, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ111_FINISH);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ111_REWARD);
}

instance DIA_OSVALD_WORK(C_INFO) {
    NPC = 0xe0ef;
    NR = 10;
    CONDITION = DIA_OSVALD_WORK_CONDITION;
    INFORMATION = DIA_OSVALD_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_OSVALD_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a16)) {
        if ((LOG_GETSTATUS(MIS_SQ111)) == (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Work_713_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Work_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Work_713_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Work_713_05");
}

instance DIA_OSVALD_SIRRAMSEY(C_INFO) {
    NPC = 0xe0ef;
    NR = 11;
    CONDITION = DIA_OSVALD_SIRRAMSEY_CONDITION;
    INFORMATION = DIA_OSVALD_SIRRAMSEY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you think of Sir Ramsey?";
}

func int DIA_OSVALD_SIRRAMSEY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a25)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SIRRAMSEY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SirRamsey_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_713_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_713_05");
    INFO_CLEARCHOICES(0x15a28);
    INFO_ADDCHOICE(0x15a28, "He's just like everyone else.", 0x15a2b);
    INFO_ADDCHOICE(0x15a28, "Where is Sir Ramsey now?", 0x15a2c);
}

func void DIA_OSVALD_SIRRAMSEY_RUDE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SirRamsey_Rude_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SirRamsey_Rude_15_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Rude_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Rude_713_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Rude_713_05");
    AI_RESETFACEANI(SELF);
}

func void DIA_OSVALD_SIRRAMSEY_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SirRamsey_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Where_713_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Where_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SirRamsey_Where_713_04");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x15a28);
}

instance DIA_OSVALD_MILL(C_INFO) {
    NPC = 0xe0ef;
    NR = 12;
    CONDITION = DIA_OSVALD_MILL_CONDITION;
    INFORMATION = DIA_OSVALD_MILL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about this mill.";
}

func int DIA_OSVALD_MILL_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a16)) {
        if ((LOG_GETSTATUS(MIS_SQ111)) == (LOG_SUCCESS)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_MILL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Mill_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_713_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_713_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_713_06");
    INFO_CLEARCHOICES(0x15a2d);
    INFO_ADDCHOICE(0x15a2d, "Why doesn't Albyn want to invest in a mill?", 0x15a30);
}

func void DIA_OSVALD_MILL_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Mill_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Why_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Why_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Why_713_04");
    INFO_CLEARCHOICES(0x15a2d);
    INFO_ADDCHOICE(0x15a2d, "What about the Merchant's Guild?", 0x15a31);
    INFO_ADDCHOICE(0x15a2d, "Why won't the governor help you?", 0x15a32);
}

func void DIA_OSVALD_MILL_WHY_ARAXOS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Mill_Araxos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Araxos_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Araxos_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Araxos_713_04");
}

func void DIA_OSVALD_MILL_WHY_GOVERNOR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Mill_Governor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Governor_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Governor_713_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Mill_Governor_713_04");
}

instance DIA_OSVALD_SQ202THORSTEN(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ202THORSTEN_CONDITION;
    INFORMATION = DIA_OSVALD_SQ202THORSTEN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have some hammers for sale here.";
}

func int DIA_OSVALD_SQ202THORSTEN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9109)) >= (1))) && ((SQ202_INFOFROMTHORSTEN) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ202_CHOICE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_713_07");
    INFO_CLEARCHOICES(0x15a33);
    INFO_ADDCHOICE(0x15a33, "15 gold pieces.", 0x15a38);
    INFO_ADDCHOICE(0x15a33, "25 gold pieces.", 0x15a39);
    INFO_ADDCHOICE(0x15a33, "50 gold pieces.", 0x15a3a);
    INFO_ADDCHOICE(0x15a33, "How much would you give for them?", 0x15a3b);
    INFO_CLEARCHOICES(0x15a40);
    INFO_ADDCHOICE(0x15a40, "15 gold pieces.", 0x15a38);
    INFO_ADDCHOICE(0x15a40, "25 gold pieces.", 0x15a39);
    INFO_ADDCHOICE(0x15a40, "50 gold pieces.", 0x15a3a);
    INFO_ADDCHOICE(0x15a40, "How much would you give for them?", 0x15a3b);
}

func void DIA_OSVALD_SQ202THORSTEN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_713_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_15_03");
    B_USEFAKEHAMMERS();
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_713_04");
    DIA_OSVALD_SQ202_CHOICE();
}

func void DIA_OSVALD_GIVEHAMMERS() {
    SQ202_HAMMERSSOLD = 1;
    CREATEINVITEMS(SELF, 0x859b, OSVALD_SQ202_HAMMERSPRICE);
    B_GIVEINVITEMS(OTHER, SELF, 0x9109, 1);
    SQ202_EARNEDGOLD = (SQ202_EARNEDGOLD) + (OSVALD_SQ202_HAMMERSPRICE);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, OSVALD_SQ202_HAMMERSPRICE);
    INFO_CLEARCHOICES(0x15a33);
    INFO_CLEARCHOICES(0x15a40);
    if ((SQ202_INFOFROMTHORSTEN) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_OSVALD_HAMMERS_V1);
    };
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_OSVALD_HAMMERS_V2);
}

func void DIA_OSVALD_SQ202THORSTEN_15() {
    OSVALD_SQ202_HAMMERSPRICE = 15;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten15_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten15_713_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten15_713_03");
    DIA_OSVALD_GIVEHAMMERS();
}

func void DIA_OSVALD_SQ202THORSTEN_25() {
    OSVALD_SQ202_HAMMERSPRICE = 25;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_25_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_25_713_02");
    DIA_OSVALD_GIVEHAMMERS();
}

func void DIA_OSVALD_SQ202THORSTEN_50() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_50_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_50_713_02");
    INFO_ADDCHOICE(0x15a33, "The market can be brutal.", 0x15a3c);
    INFO_ADDCHOICE(0x15a40, "The market can be brutal.", 0x15a3c);
}

func void DIA_OSVALD_SQ202THORSTEN_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_Gold_713_02");
    INFO_ADDCHOICE(0x15a33, "Okay, make it 30.", 0x15a3f);
    INFO_ADDCHOICE(0x15a40, "Okay, make it 30.", 0x15a3f);
}

func void DIA_OSVALD_SQ202THORSTEN_50_SHRUG() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_Shrug_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_Shrug_713_02");
    INFO_CLEARCHOICES(0x15a33);
    INFO_ADDCHOICE(0x15a33, "All right, make it 40.", 0x15a3d);
    INFO_ADDCHOICE(0x15a33, "Pay everything or we have nothing to talk about.", 0x15a3e);
    INFO_CLEARCHOICES(0x15a40);
    INFO_ADDCHOICE(0x15a40, "All right, make it 40.", 0x15a3d);
    INFO_ADDCHOICE(0x15a40, "Pay everything or we have nothing to talk about.", 0x15a3e);
}

func void DIA_OSVALD_SQ202THORSTEN_50_SHRUG_40() {
    OSVALD_SQ202_HAMMERSPRICE = 40;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_40_15_01");
    DIA_OSVALD_GIVEHAMMERS();
}

func void DIA_OSVALD_SQ202THORSTEN_50_SHRUG_ALL() {
    OSVALD_SQ202_HAMMERSPRICE = 50;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_All_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202Thorsten_All_713_02");
    DIA_OSVALD_GIVEHAMMERS();
}

func void DIA_OSVALD_SQ202THORSTEN_GOLD_30() {
    OSVALD_SQ202_HAMMERSPRICE = 30;
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202Thorsten_30_15_01");
    DIA_OSVALD_GIVEHAMMERS();
}

instance DIA_OSVALD_SQ202(C_INFO) {
    NPC = 0xe0ef;
    NR = 1;
    CONDITION = DIA_OSVALD_SQ202_CONDITION;
    INFORMATION = DIA_OSVALD_SQ202_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you need anything?";
}

func int DIA_OSVALD_SQ202_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9109)) >= (1))) && ((SQ202_INFOFROMTHORSTEN) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_SQ202_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202_713_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202_713_04");
    INFO_CLEARCHOICES(0x15a40);
    INFO_ADDCHOICE(0x15a40, "Maybe you could use those hammers?", 0x15a43);
}

func void DIA_OSVALD_SQ202_HAMMERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_SQ202_Hammers_15_01");
    B_USEFAKEHAMMERS();
    AI_OUTPUT(SELF, OTHER, "DIA_Osvald_SQ202_Hammers_713_02");
    DIA_OSVALD_SQ202_CHOICE();
}

instance DIA_OSVALD_AMBIENT(C_INFO) {
    NPC = 0xe0ef;
    NR = 400;
    CONDITION = DIA_OSVALD_AMBIENT_CONDITION;
    INFORMATION = DIA_OSVALD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_OSVALD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15a16)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    AI_OUTPUT(OTHER, SELF, "DIA_Osvald_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_05");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        if ((LOG_GETSTATUS(MIS_SQ111)) == (LOG_RUNNING)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_07");
            AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_08");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Osvald_Ambient_713_06");
        };
    };
}

instance DIA_OSVALD_PICKPOCKET(C_INFO) {
    NPC = 0xe0ef;
    NR = 900;
    CONDITION = DIA_OSVALD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_OSVALD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_OSVALD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSVALD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15a47);
    INFO_ADDCHOICE(0x15a47, DIALOG_BACK, 0x15a4b);
    INFO_ADDCHOICE(0x15a47, DIALOG_PICKPOCKET, 0x15a4a);
}

func void DIA_OSVALD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x84d0, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84d0, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15a47);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15a47);
}

func void DIA_OSVALD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15a47);
}

