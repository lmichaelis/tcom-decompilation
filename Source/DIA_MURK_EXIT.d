instance DIA_MURK_EXIT(C_INFO) {
    NPC = 56329;
    NR = 999;
    CONDITION = DIA_MURK_EXIT_CONDITION;
    INFORMATION = DIA_MURK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MURK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MURK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MURK_BREAK(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_BREAK_CONDITION;
    INFORMATION = DIA_MURK_BREAK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MURK_BREAK_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_BREAK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Break_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Break_03_02");
}

instance DIA_MURK_WHAT(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_WHAT_CONDITION;
    INFORMATION = DIA_MURK_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What happened?";
}

func int DIA_MURK_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78775)) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_What_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_What_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_What_03_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_What_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_What_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_What_03_07");
    AI_RESETFACEANI(OTHER);
}

instance DIA_MURK_HELP(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_HELP_CONDITION;
    INFORMATION = DIA_MURK_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is there anything I can do for you?";
}

func int DIA_MURK_HELP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78778)) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_HELP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Help_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_03_04");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(78781);
    INFO_ADDCHOICE(78781, "Okay, I'll look for it for you.", 78785);
    INFO_ADDCHOICE(78781, "If this moss is so good why is no one gathering it?", 78784);
}

func void DIA_MURK_HELP_WHY() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Help_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_Why_03_02");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Help_Why_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_Why_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_MURK_HELP_SEARCH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Help_Search_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_Search_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Help_Search_15_03");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Help_Search_03_04");
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_MURK_NEEDHELP);
    };
    INFO_CLEARCHOICES(78781);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_MURK_MINE(C_INFO) {
    NPC = 56329;
    NR = 2;
    CONDITION = DIA_MURK_MINE_CONDITION;
    INFORMATION = DIA_MURK_MINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the situation at the mine?";
}

func int DIA_MURK_MINE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78781)) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_MINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_Mine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Mine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_Mine_03_03");
}

instance DIA_MURK_GOTEVERYTHING(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_GOTEVERYTHING_CONDITION;
    INFORMATION = DIA_MURK_GOTEVERYTHING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have everything you asked for.";
}

func int DIA_MURK_GOTEVERYTHING_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 78781)) && ((NPC_HASITEMS(OTHER, 37026)) >= (1))) && ((NPC_HASITEMS(OTHER, 34000)) >= (3))) {
        if ((QA306_GOTOARAXOSMINE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_GOTEVERYTHING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_GotEverything_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_GotEverything_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 34000, 3);
    AI_FUNCTION(SELF, 78792);
    B_GIVEINVITEMS(OTHER, SELF, 37026, 1);
    AI_WAIT(SELF, 1066192077);
    AI_FUNCTION(SELF, 78793);
    AI_WAIT(SELF, 1066192077);
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_GotEverything_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_GotEverything_03_04");
    if ((LOG_GETSTATUS(MIS_SQ119)) == (LOG_RUNNING)) {
        AI_LOGENTRY(TOPIC_SQ119, LOG_SQ119_MURK_AFTERHELP);
    };
    B_GIVEPLAYERXP(XP_SQ119_MURKREWARD);
    if ((HERO_HACKCHANCE) != (100)) {
        if ((HERO_HACKCHANCE) < (95)) {
            B_UPGRADE_HERO_HACKCHANCE(5);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        };
    };
}

func void MURK_GOTEVERYTHING_FADESCREEN_IN() {
    FADESCREENTOBLACK(1);
}

func void MURK_GOTEVERYTHING_FADESCREEN_OUT() {
    QA306_MURKBROKENARMORSTATUS = 2;
    NPC_CHANGEARMOR(NONE_13703_MURK, 35563);
    NPC_REMOVEINVITEMS(NONE_13703_MURK, 35551, 1);
    MDL_REMOVEOVERLAYMDS(NONE_13703_MURK, "HumanS_Wounded.mds");
    FADESCREENFROMBLACK(1);
}

instance DIA_MURK_QA306_NOTWORKING(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_QA306_NOTWORKING_CONDITION;
    INFORMATION = DIA_MURK_QA306_NOTWORKING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're not mining?";
}

func int DIA_MURK_QA306_NOTWORKING_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_BLOODWYNCUTSCENESTATUS) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_QA306_NOTWORKING_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_QA306_NotWorking_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_NotWorking_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_NotWorking_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_NotWorking_03_04");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_NotWorking_03_05");
    NPC_EXCHANGEROUTINE(SELF, "QA306_CAMP");
    if ((NPC_KNOWSINFO(OTHER, 79193)) == (FALSE)) {
        AI_LOGENTRY(TOPIC_QA306, LOG_QA306_MURK_WANTSRIOT_V1);
    };
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_MURK_WANTSRIOT_V2);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_MURK_QA306_PLAN(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_QA306_PLAN_CONDITION;
    INFORMATION = DIA_MURK_QA306_PLAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I've looked through your plan.";
}

func int DIA_MURK_QA306_PLAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((QA306_LOAFSJUDGMENT_RESULT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_QA306_PLAN_INFO() {
    QA306_FIGHTWITHMURKSTATUS = 1;
    SELF.AIVAR[96] = 6;
    SELF.FLAGS = NPC_FLAG_IMPORTANT;
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_QA306_Plan_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_Plan_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_QA306_Plan_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_Plan_03_04");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_MURK_FIGHT);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 63257);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

instance DIA_MURK_QA306_TELLEVRYTHING(C_INFO) {
    NPC = 56329;
    NR = 1;
    CONDITION = DIA_MURK_QA306_TELLEVRYTHING_CONDITION;
    INFORMATION = DIA_MURK_QA306_TELLEVRYTHING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me what you know!";
}

func int DIA_MURK_QA306_TELLEVRYTHING_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78797))) && ((QA306_FIGHTWITHMURKSTATUS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_QA306_TELLEVRYTHING_INFO() {
    SELF.FLAGS = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_Murk_QA306_TellEvrything_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Murk_QA306_TellEvrything_03_02");
    AI_LOGENTRY(TOPIC_QA306, LOG_QA306_MURK_SUICIDE);
    CREATEINVITEMS(SELF, 36114, 1);
    AI_STOPLOOKAT(SELF);
    AI_USEITEM(SELF, 36114);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 63258);
}

instance DIA_MURK_PICKPOCKET(C_INFO) {
    NPC = 56329;
    NR = 900;
    CONDITION = DIA_MURK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MURK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_MURK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MURK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78803);
    INFO_ADDCHOICE(78803, DIALOG_BACK, 78807);
    INFO_ADDCHOICE(78803, DIALOG_PICKPOCKET, 78806);
}

func void DIA_MURK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78803);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78803);
}

func void DIA_MURK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78803);
}

