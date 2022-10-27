instance DIA_AMIR_EXIT(C_INFO) {
    NPC = 0xd523;
    NR = 999;
    CONDITION = DIA_AMIR_EXIT_CONDITION;
    INFORMATION = DIA_AMIR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMIR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMIR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int FIGHTWITHAMIRHELLO = 0;
var int AMIRWARNING = 0;
instance DIA_AMIR_HELLO(C_INFO) {
    NPC = 0xd523;
    NR = 2;
    CONDITION = DIA_AMIR_HELLO_CONDITION;
    INFORMATION = DIA_AMIR_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hey, what are you doing here?";
}

func int DIA_AMIR_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_AMIR_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_03_02");
    INFO_CLEARCHOICES(0x126ef);
    INFO_ADDCHOICE(0x126ef, "Chump?", 0x126f3);
    INFO_ADDCHOICE(0x126ef, "What are you guarding?", 0x126f2);
}

func void DIA_AMIR_HELLO_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_What_03_03");
    INFO_CLEARCHOICES(0x126ef);
    INFO_ADDCHOICE(0x126ef, "I'm going in.", 0x126f7);
    INFO_ADDCHOICE(0x126ef, "Maybe I'll stop by another time.", 0x126f8);
}

func void DIA_AMIR_HELLO_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Who_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Who_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Who_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Who_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Who_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Who_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Who_03_09");
    INFO_CLEARCHOICES(0x126ef);
    INFO_ADDCHOICE(0x126ef, "I apologize.", 0x126f6);
    INFO_ADDCHOICE(0x126ef, "You can try.", 0x126f5);
}

func void AMIR_ARENAFIGHT() {
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    FIGHTWITHAMIRHELLO = 1;
}

func void DIA_AMIR_HELLO_WHO_SURE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Sure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Sure_03_02");
    INFO_CLEARCHOICES(0x126ef);
    AMIR_ARENAFIGHT();
}

func void DIA_AMIR_HELLO_WHO_SORRY() {
    FIGHTWITHAMIRHELLO = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Sorry_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_Sorry_03_02");
    INFO_CLEARCHOICES(0x126ef);
    INFO_ADDCHOICE(0x126ef, "What are you guarding?", 0x126f2);
}

func void DIA_AMIR_HELLO_WHAT_IMIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_ImIn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_ImIn_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_ImIn_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hello_ImIn_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_ImIn_15_05");
    INFO_CLEARCHOICES(0x126ef);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_AMIR_HELLO_WHAT_LATER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Later_15_01");
    INFO_CLEARCHOICES(0x126ef);
    AI_STOPPROCESSINFOS(OTHER);
}

instance DIA_AMIR_PLACE(C_INFO) {
    NPC = 0xd523;
    NR = 3;
    CONDITION = DIA_AMIR_PLACE_CONDITION;
    INFORMATION = DIA_AMIR_PLACE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What can I find here?";
}

func int DIA_AMIR_PLACE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x126ef)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_PLACE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatCanIFindHere");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Place_03_02");
}

instance DIA_AMIR_VLADAN(C_INFO) {
    NPC = 0xd523;
    NR = 4;
    CONDITION = DIA_AMIR_VLADAN_CONDITION;
    INFORMATION = DIA_AMIR_VLADAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who is Vlada?";
}

func int DIA_AMIR_VLADAN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x126ef)) && (!(NPC_KNOWSINFO(OTHER, 0x110df)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_VLADAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Vladan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Vladan_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Vladan_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Vladan_03_04");
}

instance DIA_AMIR_FIGHTRESULT(C_INFO) {
    NPC = 0xd523;
    NR = 5;
    CONDITION = DIA_AMIR_FIGHTRESULT_CONDITION;
    INFORMATION = DIA_AMIR_FIGHTRESULT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_AMIR_FIGHTRESULT_CONDITION() {
    if (((FIGHTWITHAMIRHELLO) == (1)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_FIGHTRESULT_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Amir_FightResult_03_01");
        if ((AMIRWARNING) == (FALSE)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Amir_FightResult_15_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Amir_FightResult_03_03");
            AMIRWARNING = TRUE;
        };
        FIGHTWITHAMIRHELLO = 3;
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_FightResult_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_FightResult_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_FightResult_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_FightResult_03_07");
    FIGHTWITHAMIRHELLO = 2;
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_AMIR_REMATCH(C_INFO) {
    NPC = 0xd523;
    NR = 100;
    CONDITION = DIA_AMIR_REMATCH_CONDITION;
    INFORMATION = DIA_AMIR_REMATCH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I think someone should give you a lesson in good manners.";
}

func int DIA_AMIR_REMATCH_CONDITION() {
    if ((FIGHTWITHAMIRHELLO) == (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_REMATCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Rematch_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Rematch_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Rematch_03_03");
    AMIR_ARENAFIGHT();
}

instance DIA_AMIR_FROM(C_INFO) {
    NPC = 0xd523;
    NR = 7;
    CONDITION = DIA_AMIR_FROM_CONDITION;
    INFORMATION = DIA_AMIR_FROM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where are you from?";
}

func int DIA_AMIR_FROM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x126ef)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_FROM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_From_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_From_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_From_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_From_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_From_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_From_03_07");
}

instance DIA_AMIR_HATE(C_INFO) {
    NPC = 0xd523;
    NR = 8;
    CONDITION = DIA_AMIR_HATE_CONDITION;
    INFORMATION = DIA_AMIR_HATE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why do you dislike the locals so much?";
}

func int DIA_AMIR_HATE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12705)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_HATE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hate_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hate_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hate_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hate_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hate_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Hate_03_06");
}

instance DIA_AMIR_PIETER(C_INFO) {
    NPC = 0xd523;
    NR = 15;
    CONDITION = DIA_AMIR_PIETER_CONDITION;
    INFORMATION = DIA_AMIR_PIETER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a request for you.";
}

func int DIA_AMIR_PIETER_CONDITION() {
    if (((FAQ002_FIGHTWITHPIETER) == (1)) && ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_PIETER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Pieter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Pieter_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Pieter_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Pieter_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Pieter_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Pieter_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Amir_Pieter_03_07");
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_AMIRDONTCARE);
}

instance DIA_AMIR_PICKPOCKET(C_INFO) {
    NPC = 0xd523;
    NR = 900;
    CONDITION = DIA_AMIR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_AMIR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_AMIR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMIR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x1270e);
    INFO_ADDCHOICE(0x1270e, DIALOG_BACK, 0x12712);
    INFO_ADDCHOICE(0x1270e, DIALOG_PICKPOCKET, 0x12711);
}

func void DIA_AMIR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x84c4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84c4, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x1270e);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x1270e);
}

func void DIA_AMIR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x1270e);
}

