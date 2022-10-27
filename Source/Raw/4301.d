var int THORSTEN_FIRSTTALK = 0;
var int THORSTEN_TAKEQUEST = 0;
instance DIA_THORSTEN_EXIT(C_INFO) {
    NPC = 0xe0e5;
    NR = 999;
    CONDITION = DIA_THORSTEN_EXIT_CONDITION;
    INFORMATION = DIA_THORSTEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THORSTEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THORSTEN_EXIT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_EXIT_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_EXIT_711_02");
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STOPPROCESSINFOS(HERO);
    };
}

instance DIA_THORSTEN_Q601_WHAT(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_Q601_WHAT_CONDITION;
    INFORMATION = DIA_THORSTEN_Q601_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Thorsten? What are you doing here?";
}

func int DIA_THORSTEN_Q601_WHAT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_Q601_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Q601_What_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Q601_What_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Q601_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Q601_What_03_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Q601_What_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_THORSTEN_TRADE(C_INFO) {
    NPC = 0xe0e5;
    NR = 998;
    CONDITION = DIA_THORSTEN_TRADE_CONDITION;
    INFORMATION = DIA_THORSTEN_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me what you have in stock.";
}

func int DIA_THORSTEN_TRADE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x159bd)) && ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    if (((LOG_GETSTATUS(MIS_Q515)) == (LOG_SUCCESS)) && ((NPC_KNOWSINFO(OTHER, 0x159b4)) == (FALSE))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_Q515)) == (LOG_SUCCESS)) && (NPC_KNOWSINFO(OTHER, 0x159b4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Trade_15_01");
    TRADER_LOGENTRY_THORSTEN();
    B_GIVETRADEINV(SELF);
}

instance DIA_THORSTEN_HELLO(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_HELLO_CONDITION;
    INFORMATION = DIA_THORSTEN_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_THORSTEN_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        if ((THORSTEN_FIRSTTALK) == (FALSE)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_HELLO_711_01");
            THORSTEN_FIRSTTALK = TRUE;
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_HELLO_711_02");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_HELLO_711_03");
    };
}

instance DIA_THORSTEN_WHO(C_INFO) {
    NPC = 0xe0e5;
    NR = 2;
    CONDITION = DIA_THORSTEN_WHO_CONDITION;
    INFORMATION = DIA_THORSTEN_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_THORSTEN_WHO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Who_711_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Who_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Who_711_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Who_711_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Who_711_06");
}

instance DIA_THORSTEN_ALONE(C_INFO) {
    NPC = 0xe0e5;
    NR = 3;
    CONDITION = DIA_THORSTEN_ALONE_CONDITION;
    INFORMATION = DIA_THORSTEN_ALONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you work in this forge yourself?";
}

func int DIA_THORSTEN_ALONE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x159bd)) && ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_ALONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Alone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Alone_711_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Alone_711_03");
}

instance DIA_THORSTEN_MATERIALS(C_INFO) {
    NPC = 0xe0e5;
    NR = 4;
    CONDITION = DIA_THORSTEN_MATERIALS_CONDITION;
    INFORMATION = DIA_THORSTEN_MATERIALS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where do you source materials for your work?";
}

func int DIA_THORSTEN_MATERIALS_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x159bd)) && ((LOG_GETSTATUS(MIS_Q515)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_MATERIALS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Materials_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Materials_711_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Materials_711_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Materials_711_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Materials_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Materials_711_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Materials_711_08");
}

instance DIA_THORSTEN_SQ202HAMMERS(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_SQ202HAMMERS_CONDITION;
    INFORMATION = DIA_THORSTEN_SQ202HAMMERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have several hammers for sale.";
}

func int DIA_THORSTEN_SQ202HAMMERS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9109)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_SQ202HAMMERS_INFO() {
    SQ202_INFOFROMTHORSTEN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_SQ202_15_01");
    B_USEFAKEHAMMERS();
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_SQ202_711_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_SQ202_711_03");
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_THORSTEN_HAMMERS);
    AI_RESETFACEANI(SELF);
}

instance DIA_THORSTEN_SQ202IRON(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_SQ202IRON_CONDITION;
    INFORMATION = DIA_THORSTEN_SQ202IRON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe you are interested in buying iron?";
}

func int DIA_THORSTEN_SQ202IRON_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9107)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_SQ202IRON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_SQ202Iron_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_SQ202Iron_711_02");
    B_USEFAKEIRON();
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_SQ202Iron_711_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_SQ202Iron_711_04");
    AI_LOGENTRY(TOPIC_SQ202, LOG_SQ202_THORSTEN_IRON);
    AI_FUNCTION(SELF, 0xf4f5);
}

instance DIA_THORSTEN_BOLT(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_BOLT_CONDITION;
    INFORMATION = DIA_THORSTEN_BOLT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you ever make arrowheads?";
}

func int DIA_THORSTEN_BOLT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x91ad)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_BOLT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_03");
    if (((STONE_NEWTEACHER) == (0)) && (NPC_KNOWSINFO(OTHER, 0x15a04))) {
        AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_07");
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_Q309, LOG_Q309_THORSTEN_BOLT_V1);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_09");
    if ((NPC_HASITEMS(SELF, 0x8ce3)) == (0)) {
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 0x8ce3);
        AI_USEITEMTOSTATE(SELF, 0x8ce3, 1);
        AI_WAIT(SELF, 0x40400000);
        AI_USEITEMTOSTATE(SELF, 0x8ce3, -(1));
        AI_LOOKATNPC(SELF, OTHER);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_15");
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_15_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_711_17");
    INFO_CLEARCHOICES(0x159cc);
    INFO_ADDCHOICE(0x159cc, "Thanks for your help.", 0x159cf);
    INFO_ADDCHOICE(0x159cc, "Thanks for nothing.", 0x159d0);
}

func void DIA_THORSTEN_BOLT_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_Help_711_02");
    INFO_CLEARCHOICES(0x159cc);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_THORSTEN_BOLT_V2);
}

func void DIA_THORSTEN_BOLT_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_Bolt_Nothing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_Nothing_711_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Bolt_Nothing_711_03");
    INFO_CLEARCHOICES(0x159cc);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_THORSTEN_BOLT_V2);
}

instance DIA_THORSTEN_TEACH(C_INFO) {
    NPC = 0xe0e5;
    NR = 1;
    CONDITION = DIA_THORSTEN_TEACH_CONDITION;
    INFORMATION = DIA_THORSTEN_TEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you teach me something?";
}

func int DIA_THORSTEN_TEACH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x159c3)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) < (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_TEACH_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_TEACH_03_02");
    LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_SILBACHTEACHER_THORSTEN);
}

instance DIA_THORSTEN_TRAIN_SMITH(C_INFO) {
    NPC = 0xe0e5;
    NR = 7;
    CONDITION = DIA_THORSTEN_TRAIN_SMITH_CONDITION;
    INFORMATION = DIA_THORSTEN_TRAIN_SMITH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_SMITH1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 1), THORSTEN_PAYMENT);
}

func int DIA_THORSTEN_TRAIN_SMITH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x159d1)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) < (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_TRAIN_SMITH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thorsten_TRAIN_smith_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (THORSTEN_PAYMENT)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) >= (1)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, THORSTEN_PAYMENT);
            AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_TRAIN_smith_03_01");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, THORSTEN_PAYMENT);
            AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_TRAIN_smith_03_02");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_TRAIN_smith_03_03");
}

instance DIA_THORSTEN_AMBIENT(C_INFO) {
    NPC = 0xe0e5;
    NR = 990;
    CONDITION = DIA_THORSTEN_AMBIENT_CONDITION;
    INFORMATION = DIA_THORSTEN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_THORSTEN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x159bd)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((KAPITEL) == (1)) || ((KAPITEL) == (2))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Ambient_03_01");
    };
    if (((KAPITEL) == (3)) || ((KAPITEL) == (4))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Ambient_03_02");
    };
    if ((KAPITEL) >= (5)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Thorsten_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_THORSTEN_PICKPOCKET(C_INFO) {
    NPC = 0xe0e5;
    NR = 900;
    CONDITION = DIA_THORSTEN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_THORSTEN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_THORSTEN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THORSTEN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x159da);
    INFO_ADDCHOICE(0x159da, DIALOG_BACK, 0x159de);
    INFO_ADDCHOICE(0x159da, DIALOG_PICKPOCKET, 0x159dd);
}

func void DIA_THORSTEN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x85b4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x85b4, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x159da);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x159da);
}

func void DIA_THORSTEN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x159da);
}
