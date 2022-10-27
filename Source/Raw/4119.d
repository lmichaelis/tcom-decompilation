instance DIA_LEGRIF_EXIT(C_INFO) {
    NPC = 0xe3c0;
    NR = 999;
    CONDITION = DIA_LEGRIF_EXIT_CONDITION;
    INFORMATION = DIA_LEGRIF_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LEGRIF_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LEGRIF_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEGRIF_HELLO(C_INFO) {
    NPC = 0xe3c0;
    NR = 1;
    CONDITION = DIA_LEGRIF_HELLO_CONDITION;
    INFORMATION = DIA_LEGRIF_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LEGRIF_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LEGRIF_HELLOHOW = 0;
var int LEGRIF_HELLOWHEN = 0;
var int LEGRIF_HELLOBOLT = 0;
var int LEGRIF_HELLOCOUNT = 0;
var int LEGRIF_HELLOVARHAL = 0;
func void DIA_LEGRIF_HELLO_CHOICES() {
    INFO_CLEARCHOICES(0x140a0);
    if ((LEGRIF_HELLOHOW) == (FALSE)) {
        INFO_ADDCHOICE(0x140a0, "How did you get here?", 0x140a9);
    };
    if ((LEGRIF_HELLOWHEN) == (FALSE)) {
        INFO_ADDCHOICE(0x140a0, "When was the last time you were in the city?", 0x140aa);
    };
    if ((LEGRIF_HELLOBOLT) == (FALSE)) {
        INFO_ADDCHOICE(0x140a0, "Do you use some special bolts sometimes?", 0x140ab);
    };
    if (!(NPC_KNOWSINFO(OTHER, 0x13ffe))) {
        if ((LEGRIF_HELLOVARHAL) == (FALSE)) {
            INFO_ADDCHOICE(0x140a0, "Where can I find Henk?", 0x140ac);
        };
    };
    if ((LEGRIF_HELLOCOUNT) == (3)) {
        if (NPC_KNOWSINFO(OTHER, 0x13ffe)) {
            INFO_ADDCHOICE(0x140a0, "Henk mentioned that he often had watch at the mine.", 0x140ad);
        } else {
            INFO_ADDCHOICE(0x140a0, "Thanks for the answers. I'll look for your buddy.", 0x140ae);
        };
    };
}

func void DIA_LEGRIF_HELLO_INFO() {
    Q402_FOUNDVARHALANDLEGRIF = TRUE;
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_03_05");
    DIA_LEGRIF_HELLO_CHOICES();
}

func void DIA_LEGRIF_HELLO_HOW() {
    LEGRIF_HELLOHOW = TRUE;
    LEGRIF_HELLOCOUNT = (LEGRIF_HELLOCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_How_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_How_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_How_03_04");
    DIA_LEGRIF_HELLO_CHOICES();
}

func void DIA_LEGRIF_HELLO_WHEN() {
    LEGRIF_HELLOWHEN = TRUE;
    LEGRIF_HELLOCOUNT = (LEGRIF_HELLOCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_When_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_When_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_When_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_When_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_When_03_05");
    DIA_LEGRIF_HELLO_CHOICES();
}

func void DIA_LEGRIF_HELLO_BOLT() {
    LEGRIF_HELLOBOLT = TRUE;
    LEGRIF_HELLOCOUNT = (LEGRIF_HELLOCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Bolt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Bolt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Bolt_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Bolt_03_05");
    DIA_LEGRIF_HELLO_CHOICES();
}

func void DIA_LEGRIF_HELLO_VARHAL() {
    LEGRIF_HELLOVARHAL = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Varhal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Varhal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Varhal_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Varhal_15_04");
}

func void DIA_LEGRIF_HELLO_MINE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Mine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Mine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Mine_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Mine_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Mine_03_05");
    INFO_CLEARCHOICES(0x140a0);
}

func void DIA_LEGRIF_HELLO_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_HELLO_Bye_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_HELLO_Bye_15_03");
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LEGRIFINFO);
    INFO_CLEARCHOICES(0x140a0);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEGRIF_MINE(C_INFO) {
    NPC = 0xe3c0;
    NR = 1;
    CONDITION = DIA_LEGRIF_MINE_CONDITION;
    INFORMATION = DIA_LEGRIF_MINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Take back the mine?";
}

func int DIA_LEGRIF_MINE_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x13ffe)) && ((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x140a0))) {
        if ((Q402_INFOABOUTMINE) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int LEGRIF_MINECOUNT = 0;
func void DIA_LEGRIF_MINE_FINALQUESTION() {
    INFO_CLEARCHOICES(0x140af);
    INFO_ADDCHOICE(0x140af, "How do I get into the mine?", 0x140b7);
}

func void DIA_LEGRIF_MINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_03_04");
    INFO_CLEARCHOICES(0x140af);
    INFO_ADDCHOICE(0x140af, "What group is Jon leading?", 0x140b4);
    INFO_ADDCHOICE(0x140af, "What does this group want to accomplish?", 0x140b5);
    INFO_ADDCHOICE(0x140af, "Did Jon get the bolts from Einar?", 0x140b6);
}

func void DIA_LEGRIF_MINE_JON() {
    LEGRIF_MINECOUNT = (LEGRIF_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Jon_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Jon_03_02");
    if ((LEGRIF_MINECOUNT) == (3)) {
        DIA_LEGRIF_MINE_FINALQUESTION();
    };
}

func void DIA_LEGRIF_MINE_GROUP() {
    LEGRIF_MINECOUNT = (LEGRIF_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Group_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Group_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Group_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Group_03_04");
    if ((LEGRIF_MINECOUNT) == (3)) {
        DIA_LEGRIF_MINE_FINALQUESTION();
    };
}

func void DIA_LEGRIF_MINE_BOLT() {
    LEGRIF_MINECOUNT = (LEGRIF_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Bolt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Bolt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Bolt_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Bolt_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Bolt_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Bolt_03_07");
    if ((LEGRIF_MINECOUNT) == (3)) {
        DIA_LEGRIF_MINE_FINALQUESTION();
    };
}

func void DIA_LEGRIF_MINE_BOLT_ENTER() {
    Q402_INFOABOUTMINE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Enter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Enter_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Enter_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Enter_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Mine_Enter_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Mine_Enter_03_06");
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_LEGRIFMINE);
    INFO_CLEARCHOICES(0x140af);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LEGRIF_GUARDMINE(C_INFO) {
    NPC = 0xe3c0;
    NR = 1;
    CONDITION = DIA_LEGRIF_GUARDMINE_CONDITION;
    INFORMATION = DIA_LEGRIF_GUARDMINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need someone to guard the mine.";
}

func int DIA_LEGRIF_GUARDMINE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEGRIF_GUARDMINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_GuardMine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_GuardMine_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_GuardMine_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_GuardMine_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_GuardMine_03_05");
}

instance DIA_LEGRIF_MINEHOW(C_INFO) {
    NPC = 0xe3c0;
    NR = 1;
    CONDITION = DIA_LEGRIF_MINEHOW_CONDITION;
    INFORMATION = DIA_LEGRIF_MINEHOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How should I do this?";
}

func int DIA_LEGRIF_MINEHOW_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x140b8))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEGRIF_MINEHOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_MineHow_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_MineHow_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_03_06");
    INFO_CLEARCHOICES(0x140bb);
    INFO_ADDCHOICE(0x140bb, "Why don't you get it yourself?", 0x140be);
    INFO_ADDCHOICE(0x140bb, "Then we have a deal.", 0x140bf);
}

func void DIA_LEGRIF_MINEHOW_YOURSELF() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_MineHow_Yourself_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_Yourself_03_02");
}

func void DIA_LEGRIF_MINEHOW_GO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_MineHow_Go_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_MineHow_Go_03_02");
    INFO_CLEARCHOICES(0x140bb);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_LEGRIF_NEEDHELP);
}

instance DIA_LEGRIF_GOTPILLOW(C_INFO) {
    NPC = 0xe3c0;
    NR = 1;
    CONDITION = DIA_LEGRIF_GOTPILLOW_CONDITION;
    INFORMATION = DIA_LEGRIF_GOTPILLOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, a pillow for you.";
}

func int DIA_LEGRIF_GOTPILLOW_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && ((NPC_HASITEMS(OTHER, 0x91e0)) >= (1))) && (NPC_KNOWSINFO(OTHER, 0x140bb))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEGRIF_GOTPILLOW_INFO() {
    Q404_LEGRIFSTATUS = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_GotPillow_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x91e0, 1);
    AI_WAITTILLEND(SELF, OTHER);
    B_STANDUP();
    if ((NPC_HASITEMS(SELF, 0x8ce8)) == (0)) {
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 0x8ce8);
        AI_USEITEMTOSTATE(SELF, 0x8ce8, 1);
        AI_WAIT(SELF, 0x40400000);
        AI_USEITEMTOSTATE(SELF, 0x8ce8, -(1));
        AI_LOOKATNPC(SELF, OTHER);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_GotPillow_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Legrif_GotPillow_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_LEGRIF_SUCCESS);
    NPC_EXCHANGEROUTINE(SELF, "RUNMINE");
}

instance DIA_LEGRIF_AMBIENT(C_INFO) {
    NPC = 0xe3c0;
    NR = 850;
    CONDITION = DIA_LEGRIF_AMBIENT_CONDITION;
    INFORMATION = DIA_LEGRIF_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LEGRIF_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x140a0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEGRIF_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Legrif_Ambient_15_01");
    if (((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_Q404)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Legrif_Ambient_03_03");
    };
}

instance DIA_LEGRIF_PICKPOCKET(C_INFO) {
    NPC = 0xe3c0;
    NR = 900;
    CONDITION = DIA_LEGRIF_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LEGRIF_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_LEGRIF_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LEGRIF_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x140c6);
    INFO_ADDCHOICE(0x140c6, DIALOG_BACK, 0x140ca);
    INFO_ADDCHOICE(0x140c6, DIALOG_PICKPOCKET, 0x140c9);
}

func void DIA_LEGRIF_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x140c6);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x140c6);
}

func void DIA_LEGRIF_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x140c6);
}

