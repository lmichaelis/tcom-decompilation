instance DIA_SVEN_EXIT(C_INFO) {
    NPC = 55928;
    NR = 999;
    CONDITION = DIA_SVEN_EXIT_CONDITION;
    INFORMATION = DIA_SVEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SVEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SVEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SVEN_HELLO(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_HELLO_CONDITION;
    INFORMATION = DIA_SVEN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hi, I'm new here.";
}

func int DIA_SVEN_HELLO_CONDITION() {
    return TRUE;
}

var int SVEN_AFTERFIGHT;
var int SVEN_SQ123_CANTAKEQUEST;
func void DIA_SVEN_PROBLEM() {
    AI_RESETFACEANI(OTHER);
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_03_02");
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_03_03");
    INFO_CLEARCHOICES(77998);
    INFO_ADDCHOICE(77998, "I'm not looking for trouble.", 78008);
    INFO_ADDCHOICE(77998, "What did you say? (Provoke)", 78005);
}

func void DIA_SVEN_HELLO_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_HELLO_15_01");
    DIA_SVEN_PROBLEM();
}

func void DIA_SVEN_HELLO_ATTACK() {
    SVEN_AFTERFIGHT = 1;
    SELF.AIVAR[45] = AF_RUNNING;
    INFO_CLEARCHOICES(77998);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

func void DIA_SVEN_HELLO_WHAT() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_HELLO_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_HELLO_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_What_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    DIA_SVEN_HELLO_ATTACK();
}

func void DIA_SVEN_HELLO_NEEDHELP() {
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_Bye_03_04");
}

func void DIA_SVEN_HELLO_IWILLPAY() {
    SVEN_SQ123_CANTAKEQUEST = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_Bye_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_SVEN_HELLO_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_HELLO_Bye_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_Bye_03_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_HELLO_Bye_03_03");
    DIA_SVEN_HELLO_NEEDHELP();
    DIA_SVEN_HELLO_IWILLPAY();
    INFO_CLEARCHOICES(77998);
}

instance DIA_SVEN_AFTERFIGHT(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_SVEN_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SVEN_AFTERFIGHT_CONDITION() {
    if ((SVEN_AFTERFIGHT) == (1)) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_AFTERFIGHT_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Sven_AfterFight_03_01");
        DIA_SVEN_HELLO_NEEDHELP();
        DIA_SVEN_HELLO_IWILLPAY();
        INFO_CLEARCHOICES(78009);
    };
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_AfterFight_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_AfterFight_03_03");
    DIA_SVEN_HELLO_IWILLPAY();
    SVEN_AFTERFIGHT = 2;
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_SVEN_Q208_YANNICK(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_PART4_FISHERMAN_Q208_YANNICK_CONDITION;
    INFORMATION = DIA_SVEN_Q208_YANNICK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you know where I can find Yannick?";
}

func void DIA_SVEN_Q208_YANNICK_INFO() {
    DIA_PART4_FISHERMAN_Q208_YANNICK_INFO();
}

instance DIA_SVEN_SQ123_START(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_START_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the matter?";
}

func int DIA_SVEN_SQ123_START_CONDITION() {
    if ((SVEN_SQ123_CANTAKEQUEST) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_03_03");
    INFO_CLEARCHOICES(78014);
    INFO_ADDCHOICE(78014, "Are you going to cheat?", 78018);
    INFO_ADDCHOICE(78014, "Can't you cancel the bet?", 78017);
}

func void DIA_SVEN_SQ123_START_CANCEL() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_Cancel_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Cancel_03_02");
    AI_RESETFACEANI(SELF);
}

func void DIA_SVEN_SQ123_START_CHEAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_Cheat_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Cheat_03_02");
    INFO_ADDCHOICE(78014, "I don't have time for this.", 78021);
    INFO_ADDCHOICE(78014, "Okay, let me help you. What exactly do you want me to do?", 78020);
}

var int SVEN_SQ123_TAKEQUEST;
func void DIA_SVEN_SQ123_START_CHEAT_HELP() {
    SVEN_SQ123_TAKEQUEST = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_Help_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Help_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_Help_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Help_03_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Start_Help_03_06");
    CREATEINVITEMS(SELF, 34181, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34181, 1);
    INFO_CLEARCHOICES(78014);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_SVEN_SQ123_START_CHEAT_NOHELP() {
    SVEN_SQ123_TAKEQUEST = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Start_NoHelp_15_01");
    INFO_CLEARCHOICES(78014);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_SVEN_SQ123_IWANTQUEST(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_IWANTQUEST_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_IWANTQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Okay, let me help you. What exactly do you want me to do?";
}

func int DIA_SVEN_SQ123_IWANTQUEST_CONDITION() {
    if ((SVEN_SQ123_TAKEQUEST) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_IWANTQUEST_INFO() {
    DIA_SVEN_SQ123_START_CHEAT_HELP();
}

instance DIA_SVEN_SQ123_GOODIDEA(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_GOODIDEA_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_GOODIDEA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you sure this is a good idea? What if something happens to him?";
}

func int DIA_SVEN_SQ123_GOODIDEA_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78014)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_GOODIDEA_INFO() {
    SQ123_CANDESTROYHAROLDBOAT = TRUE;
    MOB_CHANGEFOCUSNAME("SQ123_BOATTODESTROY_HAROLD", "MOBNAME_SQ123_BOAT_HARLOD");
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_GoodIdea_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_GoodIdea_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_GoodIdea_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_SQ123, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ123), TOPIC_SQ123, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_START);
}

instance DIA_SVEN_BUSY(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_BUSY_CONDITION;
    INFORMATION = DIA_SVEN_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SVEN_BUSY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ123)) == (LOG_FAILED)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_BUSY_INFO() {
    DIA_IMBUSY_ANGRY();
}

instance DIA_SVEN_SQ123_READY(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_READY_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_READY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Everything's ready.";
}

func int DIA_SVEN_SQ123_READY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && ((SQ123_DESTROYEDBOAT) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_READY_INFO() {
    SQ123_FISHINGCONTEST = 1;
    SQ123_FISHINGCONTEST_DAY = WLD_GETDAY();
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Ready_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Ready_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Ready_03_03");
    AI_RESETFACEANI(SELF);
    if ((SQ123_DESTROYEDBOAT) == (2)) {
        AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_SVEN_JOBDONE_V1);
    };
    if ((SQ123_DESTROYEDBOAT) == (1)) {
        AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_SVEN_JOBDONE_V2);
    };
}

instance DIA_SVEN_SQ123_ANGRY(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_ANGRY_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_ANGRY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SVEN_SQ123_ANGRY_CONDITION() {
    if (((SQ123_FISHINGCONTEST) == (4)) && ((SQ123_DESTROYEDBOAT) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_ANGRY_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_ANGRY_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_SVEN_SQ123_AFTERCONTEST(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_AFTERCONTEST_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_AFTERCONTEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SVEN_SQ123_AFTERCONTEST_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && ((SQ123_FISHINGCONTEST) == (4))) && ((SQ123_DESTROYEDBOAT) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_AFTERCONTEST_INFO() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_AfterContest_03_01");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_AfterContest_03_02");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "SQ123_GUIDE");
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_SVEN_GOWITHME);
}

instance DIA_SVEN_SQ123_FINISH(C_INFO) {
    NPC = 55928;
    NR = 1;
    CONDITION = DIA_SVEN_SQ123_FINISH_CONDITION;
    INFORMATION = DIA_SVEN_SQ123_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SVEN_SQ123_FINISH_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ123)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78037))) && ((NPC_GETDISTTOWP(SELF, "PART4_FISHERMAN_PLUNDER_01")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_SQ123_FINISH_INFO() {
    SELF.FLAGS = 0;
    SQ123_KILLSVEN = 1;
    SQ123_KILLSVEN_DAY = WLD_GETDAY();
    SELF.AIVAR[15] = FALSE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Finish_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Finish_03_02");
    CREATEINVITEMS(SELF, 34739, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34739, 1);
    INFO_CLEARCHOICES(78040);
    INFO_ADDCHOICE(78040, "This will stay between us.", 78044);
    INFO_ADDCHOICE(78040, "It was your idea!", 78043);
}

func void DIA_SVEN_SQ123_FINISH_IDEA() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Finish_Idea_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Finish_Idea_03_02");
    AI_RESETFACEANI(OTHER);
}

func void DIA_SVEN_SQ123_FINISH_OKAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sven_SQ123_Finish_Okay_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sven_SQ123_Finish_Okay_03_02");
    INFO_CLEARCHOICES(78040);
    AI_RESETFACEANI(SELF);
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, START);
    LOG_SETSTATUS(_@(MIS_SQ123), TOPIC_SQ123, LOG_SUCCESS);
    AI_LOGENTRY(TOPIC_SQ123, LOG_SQ123_FINISH_V2);
    B_GIVEPLAYERXP(XP_SQ123_FINISH);
    AI_FUNCTION(SELF, 62114);
}

instance DIA_SVEN_PICKPOCKET(C_INFO) {
    NPC = 55928;
    NR = 900;
    CONDITION = DIA_SVEN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SVEN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_SVEN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SVEN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78045);
    INFO_ADDCHOICE(78045, DIALOG_BACK, 78049);
    INFO_ADDCHOICE(78045, DIALOG_PICKPOCKET, 78048);
}

func void DIA_SVEN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 34194, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34194, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78045);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78045);
}

func void DIA_SVEN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78045);
}

