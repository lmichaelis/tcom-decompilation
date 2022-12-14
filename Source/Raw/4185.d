instance DIA_AKSE_ARCHOLOS_EXIT(C_INFO) {
    NPC = 0xc9b2;
    NR = 999;
    CONDITION = DIA_AKSE_ARCHOLOS_EXIT_CONDITION;
    INFORMATION = DIA_AKSE_ARCHOLOS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AKSE_ARCHOLOS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AKSE_ARCHOLOS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AKSE_ARCHOLOS_Q305_HELLO(C_INFO) {
    NPC = 0xc9b2;
    NR = 1;
    CONDITION = DIA_AKSE_ARCHOLOS_Q305_HELLO_CONDITION;
    INFORMATION = DIA_AKSE_ARCHOLOS_Q305_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_AKSE_ARCHOLOS_Q305_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AKSE_ARCHOLOS_Q305_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_TIRED, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_03");
    INFO_CLEARCHOICES(0x14ad5);
    INFO_ADDCHOICE(0x14ad5, "Cortez sent me...", 0x14ad8);
}

func void DIA_AKSE_ARCHOLOS_Q305_HELLO_CORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_08");
    if (NPC_KNOWSINFO(OTHER, 0x165bd)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_09");
        AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_15_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_11");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_13");
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_03_16");
    B_STANDUP();
    INFO_CLEARCHOICES(0x14ad5);
    INFO_ADDCHOICE(0x14ad5, "You have my word.", 0x14ad9);
    INFO_ADDCHOICE(0x14ad5, "You got what you deserved. Let lurkers eat you!", 0x14ada);
}

func void DIA_AKSE_ARCHOLOS_Q305_HELLO_YES() {
    Q305_EVENT2_FINISH = 1;
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_Yes_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_Yes_15_03");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAIT(OTHER, 0x3e4ccccd);
    B_MARVIN_USEFAKEGROG();
    B_USEFAKEGROG();
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_Yes_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_Yes_03_05");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_ASKE_DECISION_V1);
    INFO_CLEARCHOICES(0x14ad5);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xee1b);
}

func void DIA_AKSE_ARCHOLOS_Q305_HELLO_NO() {
    SELF.FLAGS = 0;
    SELF.AIVAR[52] = TRUE;
    Q305_EVENT2_FINISH = 2;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Akse_Archolos_Q305_Hello_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Akse_Archolos_Q305_Hello_No_03_02");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_ASKE_DECISION_V2);
    INFO_CLEARCHOICES(0x14ad5);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

