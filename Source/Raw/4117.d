instance DIA_VAHRAL_EXIT(C_INFO) {
    NPC = 0xe3ab;
    NR = 999;
    CONDITION = DIA_VAHRAL_EXIT_CONDITION;
    INFORMATION = DIA_VAHRAL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VAHRAL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VAHRAL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VAHRAL_HELLO(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_HELLO_CONDITION;
    INFORMATION = DIA_VAHRAL_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_VAHRAL_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && (!(NPC_KNOWSINFO(OTHER, 0x13e78)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Hello_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VAHRAL_FOUNDYOU(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_FOUNDYOU_CONDITION;
    INFORMATION = DIA_VAHRAL_FOUNDYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You must be Henk.";
}

func int DIA_VAHRAL_FOUNDYOU_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13e78))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int VAHRAL_FOUNDYOUCOUNTS = 0;
var int VAHRAL_FOUNDYOU_HOW = 0;
var int VAHRAL_FOUNDYOU_WHEN = 0;
var int VAHRAL_FOUNDYOU_BOLT = 0;
var int VAHRAL_FOUNDYOU_LEGRIF = 0;
func void DIA_VAHRAL_FOUNDYOU_CHOICES() {
    INFO_CLEARCHOICES(0x13ffe);
    if ((VAHRAL_FOUNDYOU_HOW) == (FALSE)) {
        INFO_ADDCHOICE(0x13ffe, "How did you get here?", 0x14007);
    };
    if ((VAHRAL_FOUNDYOU_WHEN) == (FALSE)) {
        INFO_ADDCHOICE(0x13ffe, "When was the last time you were in the city?", 0x14008);
    };
    if ((VAHRAL_FOUNDYOU_BOLT) == (FALSE)) {
        INFO_ADDCHOICE(0x13ffe, "Do you use some special bolts sometimes?", 0x14009);
    };
    if (!(NPC_KNOWSINFO(OTHER, 0x140a0))) {
        if ((VAHRAL_FOUNDYOU_LEGRIF) == (FALSE)) {
            INFO_ADDCHOICE(0x13ffe, "Where can I find Legrif?", 0x1400a);
        };
    };
    if ((VAHRAL_FOUNDYOUCOUNTS) >= (3)) {
        if (NPC_KNOWSINFO(OTHER, 0x140a0)) {
            INFO_ADDCHOICE(0x13ffe, "Legrif mentioned that you lost your bolts in some bet.", 0x1400b);
        } else {
            INFO_ADDCHOICE(0x13ffe, "Thanks for the answers. I'll look for your buddy.", 0x1400c);
        };
    };
}

func void DIA_VAHRAL_FOUNDYOU_INFO() {
    Q402_FOUNDVARHALANDLEGRIF = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_03_04");
    DIA_VAHRAL_FOUNDYOU_CHOICES();
}

func void DIA_VAHRAL_FOUNDYOU_HOW() {
    VAHRAL_FOUNDYOU_HOW = TRUE;
    VAHRAL_FOUNDYOUCOUNTS = (VAHRAL_FOUNDYOUCOUNTS) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_How_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_How_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_How_03_04");
    DIA_VAHRAL_FOUNDYOU_CHOICES();
}

func void DIA_VAHRAL_FOUNDYOU_WHEN() {
    VAHRAL_FOUNDYOU_WHEN = TRUE;
    VAHRAL_FOUNDYOUCOUNTS = (VAHRAL_FOUNDYOUCOUNTS) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_When_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_When_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_When_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_When_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_When_03_05");
    DIA_VAHRAL_FOUNDYOU_CHOICES();
}

func void DIA_VAHRAL_FOUNDYOU_BOLT() {
    VAHRAL_FOUNDYOU_BOLT = TRUE;
    VAHRAL_FOUNDYOUCOUNTS = (VAHRAL_FOUNDYOUCOUNTS) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bolt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bolt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bolt_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bolt_03_05");
    DIA_VAHRAL_FOUNDYOU_CHOICES();
}

func void DIA_VAHRAL_FOUNDYOU_LEGRIF() {
    VAHRAL_FOUNDYOU_LEGRIF = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Legrif_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Legrif_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Legrif_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Legrif_15_04");
}

func void DIA_VAHRAL_FOUNDYOU_BET() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bet_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bet_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bet_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bet_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bet_03_05");
    INFO_CLEARCHOICES(0x13ffe);
}

func void DIA_VAHRAL_FOUNDYOU_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bye_03_02");
    if (NPC_KNOWSINFO(OTHER, 0x14030)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Vahral_FoundYou_Bye_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Vahral_FoundYou_Bye_03_04");
    };
    AI_LOGENTRY(TOPIC_Q402, LOG_Q402_VAHRALINFO);
    INFO_CLEARCHOICES(0x13ffe);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VAHRAL_MINE(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_MINE_CONDITION;
    INFORMATION = DIA_VAHRAL_MINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Clean up the mine?";
}

func int DIA_VAHRAL_MINE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13ffe))) && (NPC_KNOWSINFO(OTHER, 0x140a0))) {
        if ((Q402_INFOABOUTMINE) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int VAHRAL_MINECOUNT = 0;
func void DIA_VAHRAL_MINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_03_04");
    INFO_CLEARCHOICES(0x1400d);
    INFO_ADDCHOICE(0x1400d, "What group does Jon command?", 0x14012);
    INFO_ADDCHOICE(0x1400d, "What is the task of this group?", 0x14013);
    INFO_ADDCHOICE(0x1400d, "Did Jon get the bolts from Einar too?", 0x14014);
}

func void DIA_VAHRAL_MINE_FINALQUESTION() {
    INFO_CLEARCHOICES(0x1400d);
    INFO_ADDCHOICE(0x1400d, "How do I get into the mine?", 0x14015);
}

func void DIA_VAHRAL_MINE_JON() {
    VAHRAL_MINECOUNT = (VAHRAL_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Jon_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Jon_03_02");
    if ((VAHRAL_MINECOUNT) == (3)) {
        DIA_VAHRAL_MINE_FINALQUESTION();
    };
}

func void DIA_VAHRAL_MINE_JOB() {
    VAHRAL_MINECOUNT = (VAHRAL_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Job_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Job_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Job_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Job_03_04");
    if ((VAHRAL_MINECOUNT) == (3)) {
        DIA_VAHRAL_MINE_FINALQUESTION();
    };
}

func void DIA_VAHRAL_MINE_BOLT() {
    VAHRAL_MINECOUNT = (VAHRAL_MINECOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Bolt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Bolt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Bolt_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_Bolt_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_Bolt_03_06");
    if ((VAHRAL_MINECOUNT) == (3)) {
        DIA_VAHRAL_MINE_FINALQUESTION();
    };
}

func void DIA_VAHRAL_MINE_BOLT_HOW() {
    Q402_INFOABOUTMINE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_How_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_How_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_How_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_How_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_How_03_06");
    if (NPC_KNOWSINFO(OTHER, 0x14030)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Mine_How_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Mine_How_03_08");
    };
    B_LOGENTRY(TOPIC_Q402, LOG_Q402_VARHALMINE);
    INFO_CLEARCHOICES(0x1400d);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VAHRAL_GUARDMINE(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_GUARDMINE_CONDITION;
    INFORMATION = DIA_VAHRAL_GUARDMINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "There's a job by the mine.";
}

func int DIA_VAHRAL_GUARDMINE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_GUARDMINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_GuardMine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_GuardMine_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_GuardMine_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_GuardMine_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_GuardMine_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_GuardMine_03_06");
}

instance DIA_VAHRAL_MINEHELP(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_MINEHELP_CONDITION;
    INFORMATION = DIA_VAHRAL_MINEHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How can I help you?";
}

func int DIA_VAHRAL_MINEHELP_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x14016)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_MINEHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_MineHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_MineHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_MineHelp_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_MineHelp_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_MineHelp_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_MineHelp_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_MineHelp_15_07");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_VAHRAL_NEDDSALT);
}

instance DIA_VAHRAL_SALT(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_SALT_CONDITION;
    INFORMATION = DIA_VAHRAL_SALT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here, your salts.";
}

func int DIA_VAHRAL_SALT_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x14019)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && ((NPC_HASITEMS(OTHER, 0x905b)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_SALT_INFO() {
    Q404_VAHRALSTATUS = 1;
    B_STANDUP();
    B_GIVEINVITEMS(OTHER, SELF, 0x905b, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Salt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_02");
    AI_USEITEM(SELF, 0x905b);
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Salt_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Salt_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Salt_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Salt_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Salt_03_11");
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_VAHRAL_SUCCESS);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "RUNMINE");
}

instance DIA_VAHRAL_AMBIENT(C_INFO) {
    NPC = 0xe3ab;
    NR = 850;
    CONDITION = DIA_VAHRAL_AMBIENT_CONDITION;
    INFORMATION = DIA_VAHRAL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's up?";
}

func int DIA_VAHRAL_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x13ffe)) || (NPC_KNOWSINFO(OTHER, 0x13ffb))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Ambient_15_01");
    if ((LOG_GETSTATUS(MIS_Q402)) == (LOG_RUNNING)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_Q402)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Ambient_03_03");
    };
}

instance DIA_VAHRAL_ACROBAT(C_INFO) {
    NPC = 0xe3ab;
    NR = 1;
    CONDITION = DIA_VAHRAL_ACROBAT_CONDITION;
    INFORMATION = DIA_VAHRAL_ACROBAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How do you do it that you're so good at climbing?";
}

func int DIA_VAHRAL_ACROBAT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1400d)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ACROBAT)) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_ACROBAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_Acrobat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_Acrobat_03_02");
    LOG_CREATETOPIC(TOPIC_WOLFSDENTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_WOLFSDENTEACHER, LOG_WOLFSDENTEACHER_HENK);
}

instance DIA_VAHRAL_TRAIN_ACROBAT(C_INFO) {
    NPC = 0xe3ab;
    NR = 7;
    CONDITION = DIA_VAHRAL_TRAIN_ACROBAT_CONDITION;
    INFORMATION = DIA_VAHRAL_TRAIN_ACROBAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_ACROBAT, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_ACROBAT, 1), VAHRAL_ACROBAT);
}

func int DIA_VAHRAL_TRAIN_ACROBAT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14022)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ACROBAT)) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_TRAIN_ACROBAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vahral_TRAIN_Acrobat_15_00");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VAHRAL_ACROBAT)) {
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ACROBAT)) == (1)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, VAHRAL_ACROBAT);
            AI_OUTPUT(SELF, OTHER, "DIA_Vahral_TRAIN_Acrobat_03_01");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VAHRAL_ACROBAT);
            AI_OUTPUT(SELF, OTHER, "DIA_Vahral_TRAIN_Acrobat_03_02");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Vahral_TRAIN_Acrobat_03_03");
}

instance DIA_VAHRAL_PICKPOCKET(C_INFO) {
    NPC = 0xe3ab;
    NR = 900;
    CONDITION = DIA_VAHRAL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VAHRAL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_VAHRAL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VAHRAL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14028);
    INFO_ADDCHOICE(0x14028, DIALOG_BACK, 0x1402c);
    INFO_ADDCHOICE(0x14028, DIALOG_PICKPOCKET, 0x1402b);
}

func void DIA_VAHRAL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14028);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14028);
}

func void DIA_VAHRAL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14028);
}

