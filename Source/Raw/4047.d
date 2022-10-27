instance DIA_HEINSER_EXIT(C_INFO) {
    NPC = 0xdc52;
    NR = 999;
    CONDITION = DIA_HEINSER_EXIT_CONDITION;
    INFORMATION = DIA_HEINSER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HEINSER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HEINSER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HEINSER_HELLO(C_INFO) {
    NPC = 0xdc52;
    NR = 1;
    CONDITION = DIA_HEINSER_HELLO_CONDITION;
    INFORMATION = DIA_HEINSER_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HEINSER_HELLO_CONDITION() {
    if ((QA306_GOTOARAXOSMINE) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_Hello_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_Hello_03_02");
    if ((HEINSER_HELLO_TRADECHECKINFO) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
            HEINSER_HELLO_TRADECHECKINFO = TRUE;
            AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_HEINSERTRADE);
        };
    };
}

var int DIA_HEINSER_HELLO_INFO.HEINSER_HELLO_TRADECHECKINFO = 0;
instance DIA_HEINSER_TRADE(C_INFO) {
    NPC = 0xdc52;
    NR = 950;
    CONDITION = DIA_HEINSER_TRADE_CONDITION;
    INFORMATION = DIA_HEINSER_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_TRADE;
}

func int DIA_HEINSER_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_HEINSER_TRADE_INFO() {
    INFO_CLEARCHOICES(0x13541);
    INFO_ADDCHOICE(0x13541, DIALOG_BACK, 0x1354f);
    INFO_ADDCHOICE(0x13541, "(Buy a pack of 50 bolts for 3 nuggets)", 0x13546);
    INFO_ADDCHOICE(0x13541, "(Buy a pack of 50 arrows for 3 nuggets)", 0x13547);
    INFO_ADDCHOICE(0x13541, "(Buy a decayed light crossbow for 4 nuggets)", 0x13548);
    INFO_ADDCHOICE(0x13541, "(Buy Light Birch Bow for 4 nuggets)", 0x13549);
    INFO_ADDCHOICE(0x13541, "(Buy a fighting staff for 4 nuggets)", 0x1354a);
    INFO_ADDCHOICE(0x13541, "(Buy a wolf knife for 4 nuggets)", 0x1354b);
    INFO_ADDCHOICE(0x13541, "(Buy a spiked mace for 4 nuggets)", 0x1354c);
    INFO_ADDCHOICE(0x13541, "(Buy a meal kit for 5 nuggets)", 0x13544);
    INFO_ADDCHOICE(0x13541, "(Buy a bag of snacks for 3 nuggets)", 0x13545);
    INFO_ADDCHOICE(0x13541, "(Buy a torch for 1 nugget)", 0x1354e);
    INFO_ADDCHOICE(0x13541, "(Buy a pickaxe for 4 nuggets)", 0x1354d);
}

func void DIA_HEINSER_TRADE_ITSE_ARAXOSMINE_FOODPACKET_02() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (5)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 5);
        CREATEINVITEMS(SELF, 0x9566, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITSE_ARAXOSMINE_FOODPACKET_01() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (3)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 3);
        CREATEINVITEMS(SELF, 0x9564, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITSE_BOLTPACKET_50() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (3)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 3);
        CREATEINVITEMS(SELF, 0x955c, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITSE_ARROWPACKET_50() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (3)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 3);
        CREATEINVITEMS(SELF, 0x9556, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITRW_CROSSBOW_L_02_GENERATE() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x8670, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITRW_BOW_01_NORMAL() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x9b41, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITMW_2H_SPEAR_06() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x9ad2, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITMW_1H_SWORD_L_03() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x84d6, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_ITMW_NAGELKNUEPPEL() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x84d5, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_PICKAXE() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (4)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 4);
        CREATEINVITEMS(SELF, 0x84df, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_TORCH() {
    if ((NPC_HASITEMS(OTHER, 0x837c)) >= (1)) {
        NPC_REMOVEINVITEMS(SELF, 0x837c, 1);
        CREATEINVITEMS(SELF, 0x87b6, 1);
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_HEINSER_TRADE_INFO();
}

func void DIA_HEINSER_TRADE_BACK() {
    INFO_CLEARCHOICES(0x13541);
}

instance DIA_HEINSER_QA306_HELLO(C_INFO) {
    NPC = 0xdc52;
    NR = 1;
    CONDITION = DIA_HEINSER_QA306_HELLO_CONDITION;
    INFORMATION = DIA_HEINSER_QA306_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HEINSER_QA306_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 0x13625)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_QA306_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Hello_03_01");
    AI_RESETFACEANI(SELF);
}

instance DIA_HEINSER_QA306_STEAL(C_INFO) {
    NPC = 0xdc52;
    NR = 1;
    CONDITION = DIA_HEINSER_QA306_STEAL_CONDITION;
    INFORMATION = DIA_HEINSER_QA306_STEAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Someone tried to rob you?";
}

func int DIA_HEINSER_QA306_STEAL_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13550)) && ((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING))) {
        if ((NPC_KNOWSINFO(HERO, 0x13625)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_QA306_STEAL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_Steal_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Steal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Steal_03_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Steal_03_04");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Steal_03_05");
    AI_RESETFACEANI(SELF);
}

instance DIA_HEINSER_QA306_HELP(C_INFO) {
    NPC = 0xdc52;
    NR = 1;
    CONDITION = DIA_HEINSER_QA306_HELP_CONDITION;
    INFORMATION = DIA_HEINSER_QA306_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll take care of it.";
}

func int DIA_HEINSER_QA306_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13553))) {
        if ((NPC_KNOWSINFO(HERO, 0x13625)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_QA306_HELP_INFO() {
    QA306_SEARCHHEINSERJOINTS = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_Help_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Help_03_02");
    AI_WAITTILLEND(OTHER, SELF);
    B_SAY(OTHER, SELF, "$MARVIN_ThinkingEmoji");
    CREATEINVITEMS(SELF, 0x9166, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9166, 1);
    B_USEFAKEJOINT_MARVIN();
    NPC_REMOVEINVITEMS(HERO, 0x9166, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Help_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Help_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_Help_03_05");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_HEINSER_LOSTJOINTS);
    AI_FUNCTION(SELF, 0xf708);
}

instance DIA_HEINSER_QA306_FOUNDPACKET(C_INFO) {
    NPC = 0xdc52;
    NR = 1;
    CONDITION = DIA_HEINSER_QA306_FOUNDPACKET_CONDITION;
    INFORMATION = DIA_HEINSER_QA306_FOUNDPACKET_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I followed the lead of your tobacco...";
}

func int DIA_HEINSER_QA306_FOUNDPACKET_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 0x9169)) >= (1))) {
        if ((NPC_KNOWSINFO(HERO, 0x13625)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_QA306_FOUNDPACKET_INFO() {
    QA306_FINISHEDEVENTS = (QA306_FINISHEDEVENTS) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_FoundPacket_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_03_02");
    INFO_CLEARCHOICES(0x13559);
    if ((QA306_LOAFSOPTION) == (TRUE)) {
        INFO_ADDCHOICE(0x13559, "I think someone was trying to frame the miners.", 0x1355e);
    };
    INFO_ADDCHOICE(0x13559, "Unfortunately, I couldn't figure anything out, the trail was lost.", 0x1355d);
    INFO_ADDCHOICE(0x13559, "The miners burned the whole package, I found just that.", 0x1355c);
}

func void DIA_HEINSER_QA306_FOUNDPACKET_WORKERS() {
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) - (3);
    PRINTD(CS2("Reputacja u g�rnik�w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_FoundPacket_Workers_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9169, 1);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Workers_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Workers_03_03");
    CREATEINVITEMS(SELF, 0x837c, 10);
    B_GIVEINVITEMS(SELF, OTHER, 0x837c, 10);
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_HEINSER_RESULT_V1);
    INFO_CLEARCHOICES(0x13559);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_HEINSER_QA306_FOUNDPACKET_NOPE() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_FoundPacket_Nope_15_01");
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Nope_03_02");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_HEINSER_RESULT_V2);
    INFO_CLEARCHOICES(0x13559);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_HEINSER_QA306_FOUNDPACKET_SOMEONE() {
    WORKERREPUTATION_ARAXOSMINE = (WORKERREPUTATION_ARAXOSMINE) + (1);
    PRINTD(CS2("Reputacja u g�rnik�w Araxos: ", INTTOSTRING(WORKERREPUTATION_ARAXOSMINE)));
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Heinser_QA306_FoundPacket_Someone_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Someone_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Someone_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Heinser_QA306_FoundPacket_Someone_03_04");
    CREATEINVITEMS(SELF, 0x837c, 3);
    B_GIVEINVITEMS(SELF, OTHER, 0x837c, 3);
    INFO_CLEARCHOICES(0x13559);
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_HEINSER_RESULT_V3);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HEINSER_PICKPOCKET(C_INFO) {
    NPC = 0xdc52;
    NR = 900;
    CONDITION = DIA_HEINSER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HEINSER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_HEINSER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HEINSER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x1355f);
    INFO_ADDCHOICE(0x1355f, DIALOG_BACK, 0x13563);
    INFO_ADDCHOICE(0x1355f, DIALOG_PICKPOCKET, 0x13562);
}

func void DIA_HEINSER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x9564, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x9564, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x1355f);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x1355f);
}

func void DIA_HEINSER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x1355f);
}
