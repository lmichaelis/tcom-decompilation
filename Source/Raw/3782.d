instance DIA_DOCAN_EXIT(C_INFO) {
    NPC = 0xcb52;
    NR = 999;
    CONDITION = DIA_DOCAN_EXIT_CONDITION;
    INFORMATION = DIA_DOCAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DOCAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DOCAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DOCAN_QM302_CROSSBOW(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_CROSSBOW_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_CROSSBOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm here to talk about the crossbows for the city guard.";
}

func int DIA_DOCAN_QM302_CROSSBOW_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x115ba))) && (NPC_KNOWSINFO(OTHER, 0x1144c))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_CROSSBOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Crossbow_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Crossbow_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Crossbow_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Crossbow_03_04");
}

instance DIA_DOCAN_QM302_HUNT(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_HUNT_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_HUNT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "We'll go hunting.";
}

func int DIA_DOCAN_QM302_HUNT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11411))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_HUNT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Hunt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Hunt_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Hunt_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM302_BEFORE_HUNT");
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_DOCAN_BEFOREHUNT);
}

instance DIA_DOCAN_QM302_READY(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_READY_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_READY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DOCAN_QM302_READY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((NPC_GETDISTTOWP(SELF, "PART3_QM302_DOCAN_WAIT")) < (750))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_READY_INFO() {
    B_HEALNPC_OTHER();
    B_HEALNPC_SELF();
    MDL_REMOVEOVERLAYMDS(SELF, "Humans_CrossbowIdle.MDS");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Ready_03_01");
    if ((NPC_HASITEMS(OTHER, 0x916a)) >= (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Ready_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Ready_03_03");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Ready_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Ready_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Ready_03_06");
    CREATEINVITEMS(SELF, 0x916a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x916a, 1);
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(OTHER);
    AI_UNEQUIPWEAPONS(OTHER);
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 0xf803);
    AI_WAITTILLEND(OTHER, SELF);
    AI_READYRANGEDWEAPON(OTHER);
    CREATEINVITEMS(SELF, 0x8650, 10);
    B_GIVEINVITEMS(SELF, OTHER, 0x8650, 10);
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_DOCAN_HUNT);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "QM302_HUNT");
    AI_FUNCTION(SELF, 0xf808);
    AI_FUNCTION(SELF, 0xf805);
    AI_FUNCTION(SELF, 0xf80e);
    AI_FUNCTION(SELF, 0xf806);
}

instance DIA_DOCAN_QM302_LETSSHOOT(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_LETSSHOOT_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_LETSSHOOT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DOCAN_QM302_LETSSHOOT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11417))) && ((NPC_GETDISTTOWP(SELF, "PART4_PATH_02")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_LETSSHOOT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_LetsShoot_03_01");
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "QM302_HUNT2");
}

instance DIA_DOCAN_QM302_AFTERHUNT(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_AFTERHUNT_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_AFTERHUNT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

var int DOCAN_QM302_AFTERHUNT = 0;
func int DIA_DOCAN_QM302_AFTERHUNT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1141a))) && ((NPC_GETDISTTOWP(SELF, "PART4_PATH_54")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_AFTERHUNT_INFO() {
    AI_FUNCTION(SELF, 0xf807);
    QM302_UNLOCKINVENTORY();
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_15_03");
    CREATEINVITEMS(OTHER, 0x8650, 1);
    if ((NPC_ISINFIGHTMODE(OTHER, FMODE_FAR)) == (FALSE)) {
        AI_READYRANGEDWEAPON(OTHER);
    };
    AI_PLAYANI(OTHER, "T_TRYTORELOAD");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_03_04");
    INFO_CLEARCHOICES(0x1141d);
    INFO_ADDCHOICE(0x1141d, "Are you kidding me?", 0x11422);
}

func void DIA_DOCAN_QM302_AFTERHUNT_KIDDING_YEAH_NEXT() {
    AI_TURNTONPC(SELF, MIL_11272_LEADER);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_03_06");
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_03_07");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_03_09");
    AI_RESETFACEANI(OTHER);
    NPC_EXCHANGEROUTINE(SELF, "QM302_RENEGADES");
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_DOCAN_LETSGO);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_DOCAN_QM302_AFTERHUNT_KIDDING() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_Kidding_15_01");
    AI_REMOVEWEAPON(OTHER);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_Kidding_03_02");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_PLAYANI(SELF, "T_SEARCH");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterHunt_Kidding_03_03");
    INFO_CLEARCHOICES(0x1141d);
    INFO_ADDCHOICE(0x1141d, "If this is your way of changing the subject...", 0x11423);
    INFO_ADDCHOICE(0x1141d, "I did hear something...", 0x11424);
    QM302_RESPAWNRENEGADES();
}

func void DIA_DOCAN_QM302_AFTERHUNT_KIDDING_TOPIC() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_Topic_15_01");
    DIA_DOCAN_QM302_AFTERHUNT_KIDDING_YEAH_NEXT();
}

func void DIA_DOCAN_QM302_AFTERHUNT_KIDDING_YEAH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterHunt_Yeah_15_01");
    DIA_DOCAN_QM302_AFTERHUNT_KIDDING_YEAH_NEXT();
}

instance DIA_DOCAN_QM302_AFTERFIGHT(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DOCAN_QM302_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && ((QM302_RENEGADESEVENT) >= (1))) {
        if (((((NPC_ISDEAD(MIL_11272_LEADER)) && (NPC_ISDEAD(MIL_6270_JERRAN))) && (NPC_ISDEAD(MIL_6271_RENEGADE))) && (NPC_ISDEAD(MIL_11275_RENEGADE))) && (NPC_ISDEAD(MIL_11276_RENEGADE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_AFTERFIGHT_INFO() {
    AI_FUNCTION(SELF, 0xf809);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterFight_03_01");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterFight_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterFight_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_AfterFight_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterFight_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_AfterFight_03_06");
    AI_RESETFACEANI(OTHER);
}

instance DIA_DOCAN_QM302_THINK(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_QM302_THINK_CONDITION;
    INFORMATION = DIA_DOCAN_QM302_THINK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll think about it. Maybe I actually was unlucky.";
}

func int DIA_DOCAN_QM302_THINK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11425))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_QM302_THINK_INFO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_QM302_Think_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_QM302_Think_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QM302, LOG_QM302_DOCAN_HUNTFINISH);
    QM302_CHANGEDOCANRTN();
}

instance DIA_DOCAN_CANYOUTRAIN(C_INFO) {
    NPC = 0xcb52;
    NR = 20;
    CONDITION = DIA_DOCAN_CANYOUTRAIN_CONDITION;
    INFORMATION = DIA_DOCAN_CANYOUTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could we train together?";
}

func int DIA_DOCAN_CANYOUTRAIN_CONDITION() {
    if ((((OTHER.GUILD) == (GIL_SLD)) && ((LOG_GETSTATUS(MIS_Q204)) == (LOG_SUCCESS))) && (NPC_KNOWSINFO(OTHER, 0x1144c))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_CANYOUTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Canyoutrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Canyoutrain_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Canyoutrain_03_03");
    LOG_CREATETOPIC(TOPIC_ARAXOSTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_ARAXOSTEACHER, LOG_ARAXOSTEACHER_DOCAN);
}

var int DOCAN_NOMORE = 0;
var int DOCAN_CURRENTBOWLEVEL = 0;
var int DOCAN_CURRENTDEXLEVEL = 0;
var string DOCAN_PRINTS = "";
instance DIA_DOCAN_TRAIN(C_INFO) {
    NPC = 0xcb52;
    NR = 20;
    CONDITION = DIA_DOCAN_TRAIN_CONDITION;
    INFORMATION = DIA_DOCAN_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I'd like to train.";
}

func int DIA_DOCAN_TRAIN_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1142b)) && ((DOCAN_NOMORE) == (FALSE))) && ((OTHER.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_TRAIN_CHOICES() {
    DOCAN_CURRENTBOWLEVEL = OTHER.AIVAR[86];
    DOCAN_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    DOCAN_GOLDCOST = 0;
    INFO_CLEARCHOICES(0x11432);
    INFO_ADDCHOICE(0x11432, DIALOG_BACK, 0x11438);
    INFO_ADDCHOICE(0x11432, B_BUILDLEARNSTRING2(PRINT_LEARNBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1), DOCAN_GOLDCOST), 0x1143a);
    INFO_ADDCHOICE(0x11432, B_BUILDLEARNSTRING2(PRINT_LEARNBOW5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1)) * (5), (DOCAN_GOLDCOST) * (5)), 0x1143c);
    INFO_ADDCHOICE(0x11432, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), DOCAN_GOLDCOST), 0x1143e);
    INFO_ADDCHOICE(0x11432, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (DOCAN_GOLDCOST) * (5)), 0x11440);
}

var int DIA_DOCAN_TRAIN_CHOICES.DOCAN_GOLDCOST = 0;
func void DIA_DOCAN_TRAIN_LETSGO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_03_02");
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Train_15_00");
    if (!(NPC_KNOWSINFO(OTHER, 0x11648))) {
        if (((OTHER.AIVAR[86]) >= (40)) && ((OTHER.AIVAR[82]) >= (50))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            DOCAN_PRINTS = PRINT_ARXPROMOTIONNEEDED;
        } else {
            DIA_DOCAN_TRAIN_LETSGO();
        } else {
            /* set_instance(0) */;
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0x11648)) {
        if (((OTHER.AIVAR[86]) >= (60)) && ((OTHER.AIVAR[82]) >= (80))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_03_01");
            DOCAN_NOMORE = TRUE;
        } else {
            DIA_DOCAN_TRAIN_LETSGO();
        };
    };
}

func void DIA_DOCAN_TRAIN_BACK() {
    INFO_CLEARCHOICES(0x11432);
}

func void DIA_DOCAN_TRAIN_BOW_1_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_BOW1_03_01");
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAIN_BOW_1() {
    if (!(NPC_KNOWSINFO(OTHER, 0x11648))) {
        if ((DOCAN_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            DIA_DOCAN_TRAIN_BOW_1_GOODJOB();
        } else if (((OTHER.AIVAR[86]) >= (40)) && ((DOCAN_CURRENTBOWLEVEL) == (OTHER.AIVAR[86]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            DOCAN_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(DOCAN_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_DOCAN_TRAIN_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0x11648)) {
        if ((DOCAN_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            DIA_DOCAN_TRAIN_BOW_1_GOODJOB();
        };
    };
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAIN_BOW_5_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_BOW5_03_01");
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAIN_BOW_5() {
    if (!(NPC_KNOWSINFO(OTHER, 0x11648))) {
        if ((DOCAN_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            DIA_DOCAN_TRAIN_BOW_5_GOODJOB();
        } else if (((OTHER.AIVAR[86]) >= (40)) && ((DOCAN_CURRENTBOWLEVEL) == (OTHER.AIVAR[86]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            DOCAN_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(DOCAN_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_DOCAN_TRAIN_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0x11648)) {
        if ((DOCAN_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            DIA_DOCAN_TRAIN_BOW_5_GOODJOB();
        };
    };
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAINDEX_1_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_STR1_03_01");
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAINDEX_1() {
    if (!(NPC_KNOWSINFO(OTHER, 0x11648))) {
        if ((DOCAN_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            DIA_DOCAN_TRAINDEX_1_GOODJOB();
        } else if (((OTHER.AIVAR[82]) >= (50)) && ((DOCAN_CURRENTDEXLEVEL) == (OTHER.AIVAR[82]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            DOCAN_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(DOCAN_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_DOCAN_TRAIN_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0x11648)) {
        if ((DOCAN_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            DIA_DOCAN_TRAINDEX_1_GOODJOB();
        };
    };
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAINDEX_5_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Train_STR5_03_01");
    DIA_DOCAN_TRAIN_CHOICES();
}

func void DIA_DOCAN_TRAINDEX_5() {
    if (!(NPC_KNOWSINFO(OTHER, 0x11648))) {
        if ((DOCAN_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            DIA_DOCAN_TRAINDEX_5_GOODJOB();
        } else if (((OTHER.AIVAR[82]) >= (50)) && ((DOCAN_CURRENTDEXLEVEL) == (OTHER.AIVAR[82]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            DOCAN_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(DOCAN_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_DOCAN_TRAIN_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0x11648)) {
        if ((DOCAN_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            DIA_DOCAN_TRAINDEX_5_GOODJOB();
        };
    };
    DIA_DOCAN_TRAIN_CHOICES();
}

instance DIA_DOCAN_HUNTING_BASE(C_INFO) {
    NPC = 0xcb52;
    NR = 940;
    CONDITION = DIA_DOCAN_HUNTING_BASE_CONDITION;
    INFORMATION = DIA_DOCAN_HUNTING_BASE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_HUNTING_BASE, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FUR), DOCAN_BASETROPHY);
}

func int DIA_DOCAN_HUNTING_BASE_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1142b)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (FALSE))) && ((OTHER.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_HUNTING_BASE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Hunting_Base_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DOCAN_BASETROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
            if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SNEAK)) == (0)) {
                PRINTSCREEN(PRINT_LEARNSNEAK, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
                AI_OUTPUT(SELF, OTHER, "DIA_Docan_Base_Sneak_03_01");
                B_TEACHTHIEFTALENT(SLD_1018_DOCAN, HERO, NPC_TALENT_SNEAK, 1);
                AI_OUTPUT(SELF, OTHER, "DIA_Docan_Base_Sneak_03_02");
            };
            NPC_REMOVEINVITEMS(SELF, 0x859b, DOCAN_BASETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Base_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DOCAN_BASETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Base_03_03");
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Base_03_04");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHY, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DOCAN_BASETROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Base_03_05");
    };
}

var int DOCAN_ALLHUNT = 0;
instance DIA_DOCAN_HUNTING_SPECIAL(C_INFO) {
    NPC = 0xcb52;
    NR = 1;
    CONDITION = DIA_DOCAN_HUNTING_SPECIAL_CONDITION;
    INFORMATION = DIA_DOCAN_HUNTING_SPECIAL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about hunting?";
}

func int DIA_DOCAN_HUNTING_SPECIAL_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x1142b)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE))) && ((DOCAN_ALLHUNT) == (FALSE))) && ((OTHER.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_HUNTING_SPECIAL_CHOICES() {
    INFO_CLEARCHOICES(0x11445);
    INFO_ADDCHOICE(0x11445, DIALOG_BACK, 0x11449);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (FALSE)) {
        INFO_ADDCHOICE(0x11445, B_BUILDLEARNSTRING2(PRINT_TEACHSHELLS, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SHELLS), DOCAN_SHELLSTROPHY), 0x1144a);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (FALSE)) {
        INFO_ADDCHOICE(0x11445, B_BUILDLEARNSTRING2(PRINT_TEACHMANDIBLES, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_MANDIBLES), DOCAN_MANDIBLESTROPHY), 0x1144b);
    };
}

func void DIA_DOCAN_HUNTING_SPECIAL_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeHunting");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_03_01");
    DIA_DOCAN_HUNTING_SPECIAL_CHOICES();
}

func void DIA_DOCAN_HUNTING_SPECIAL_BACK() {
    INFO_CLEARCHOICES(0x11445);
    if (((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE))) {
        DOCAN_ALLHUNT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_AllHunt_03_01");
    };
}

func void DIA_DOCAN_HUNTING_SPECIAL_SHELLS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Hunting_Special_Shells_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DOCAN_SHELLSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[17]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, DOCAN_SHELLSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_Shells_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DOCAN_SHELLSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_Shells_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYSHELLS, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DOCAN_SHELLSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_Shells_03_04");
    };
    DIA_DOCAN_HUNTING_SPECIAL_CHOICES();
}

func void DIA_DOCAN_HUNTING_SPECIAL_MANDIBLES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Hunting_Special_Mandibles_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DOCAN_MANDIBLESTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[8]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, DOCAN_MANDIBLESTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_Mandibles_03_02");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DOCAN_MANDIBLESTROPHY);
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYMANDIBLES, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DOCAN_MANDIBLESTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hunting_Special_Mandibles_03_03");
    };
    DIA_DOCAN_HUNTING_SPECIAL_CHOICES();
}

instance DIA_DOCAN_HELLO(C_INFO) {
    NPC = 0xcb52;
    NR = 2;
    CONDITION = DIA_DOCAN_HELLO_CONDITION;
    INFORMATION = DIA_DOCAN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing for Araxos?";
}

func int DIA_DOCAN_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_DOCAN_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Docan_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Docan_Hello_03_03");
}

instance DIA_DOCAN_AMBIENT(C_INFO) {
    NPC = 0xcb52;
    NR = 850;
    CONDITION = DIA_DOCAN_AMBIENT_CONDITION;
    INFORMATION = DIA_DOCAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_DOCAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1144c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((OTHER.GUILD) == (GIL_SLD)) {
        if ((KAPITEL) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Ambient_03_01");
        } else if (((KAPITEL) == (3)) || ((KAPITEL) == (4))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Ambient_03_02");
        } else if ((KAPITEL) == (5)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Docan_Ambient_03_03");
        };
    };
    if ((LOG_GETSTATUS(MIS_QM302)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_Ambient_03_04");
    };
    if ((LOG_GETSTATUS(MIS_QM302)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Docan_Ambient_03_05");
    };
}

instance DIA_DOCAN_PICKPOCKET(C_INFO) {
    NPC = 0xcb52;
    NR = 900;
    CONDITION = DIA_DOCAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DOCAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_DOCAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DOCAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11452);
    INFO_ADDCHOICE(0x11452, DIALOG_BACK, 0x11456);
    INFO_ADDCHOICE(0x11452, DIALOG_PICKPOCKET, 0x11455);
}

func void DIA_DOCAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8650, 4);
        B_GIVEINVITEMS(SELF, OTHER, 0x8650, 4);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11452);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11452);
}

func void DIA_DOCAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11452);
}

