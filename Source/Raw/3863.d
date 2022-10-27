instance DIA_CRISEN_EXIT(C_INFO) {
    NPC = 0xd091;
    NR = 999;
    CONDITION = DIA_CRISEN_EXIT_CONDITION;
    INFORMATION = DIA_CRISEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CRISEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CRISEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CRISEN_QM202_HELLO(C_INFO) {
    NPC = 0xd091;
    NR = 1;
    CONDITION = DIA_CRISEN_QM202_HELLO_CONDITION;
    INFORMATION = DIA_CRISEN_QM202_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CRISEN_QM202_HELLO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10490))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CRISEN_QM202_HELLO_INFO() {
    QM202_RECRUITSCOUNTDIALOGUE = (QM202_RECRUITSCOUNTDIALOGUE) + (1);
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_03_01");
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_03_02");
    INFO_CLEARCHOICES(0x11cec);
    INFO_ADDCHOICE(0x11cec, "I don't understand...", 0x11cf1);
    INFO_ADDCHOICE(0x11cec, "Excuse me?", 0x11cf0);
}

func void DIA_CRISEN_QM202_HELLO_NEXT() {
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_What_03_03");
    INFO_CLEARCHOICES(0x11cec);
    INFO_ADDCHOICE(0x11cec, "Sure I do.", 0x11cf3);
    INFO_ADDCHOICE(0x11cec, "Why are you interested in this?", 0x11cf4);
}

func void DIA_CRISEN_QM202_HELLO_WHAT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Crisen_QM202_Hello_What_15_01");
    DIA_CRISEN_QM202_HELLO_NEXT();
}

func void DIA_CRISEN_QM202_HELLO_UNDERSTAND() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    B_SAY(OTHER, SELF, RESERVED_CONST_STRING_03);
    DUMMYFUNCWITHSTRINGPARAMETER("DIA_Crisen_QM202_Hello_Understand_03_01");
    DIA_CRISEN_QM202_HELLO_NEXT();
}

func void DIA_CRISEN_QM202_HELLO_NEXT2() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_Yes_03_03");
    AI_STARTFACEANI(OTHER, S_DISGUST, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Crisen_QM202_Hello_Yes_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_QM202_Hello_Yes_03_05");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x11cec);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QM202, LOG_QM202_CRISEN_DIALOGUE);
}

func void DIA_CRISEN_QM202_HELLO_WHAT_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Crisen_QM202_Hello_Yes_15_01");
    DIA_CRISEN_QM202_HELLO_NEXT2();
}

func void DIA_CRISEN_QM202_HELLO_WHAT_WHY() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Crisen_QM202_Hello_Why_15_01");
    DIA_CRISEN_QM202_HELLO_NEXT2();
}

instance DIA_CRISEN_YOUBACK(C_INFO) {
    NPC = 0xd091;
    NR = 1;
    CONDITION = DIA_CRISEN_YOUBACK_CONDITION;
    INFORMATION = DIA_CRISEN_YOUBACK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CRISEN_YOUBACK_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11cec)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CRISEN_YOUBACK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Crisen_YouBack_09_01");
    B_SAY(OTHER, SELF, "$MARVIN_No");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CRISEN_PICKPOCKET(C_INFO) {
    NPC = 0xd091;
    NR = 900;
    CONDITION = DIA_CRISEN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_CRISEN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_CRISEN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CRISEN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11cf8);
    INFO_ADDCHOICE(0x11cf8, DIALOG_BACK, 0x11cfc);
    INFO_ADDCHOICE(0x11cf8, DIALOG_PICKPOCKET, 0x11cfb);
}

func void DIA_CRISEN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11cf8);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11cf8);
}

func void DIA_CRISEN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11cf8);
}
