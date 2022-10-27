instance DIA_KESSEL_EXIT_VOLFZACKE(C_INFO) {
    NPC = 0xe77b;
    NR = 999;
    CONDITION = DIA_KESSEL_EXIT_VOLFZACKE_CONDITION;
    INFORMATION = DIA_KESSEL_EXIT_VOLFZACKE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KESSEL_EXIT_VOLFZACKE_CONDITION() {
    return TRUE;
}

func void DIA_KESSEL_EXIT_VOLFZACKE_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KESSEL_Q514_HELLO_VOLFZACKE(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_HELLO_VOLFZACKE_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_HELLO_VOLFZACKE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_HELLO_VOLFZACKE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_HELLO_VOLFZACKE_INFO() {
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_NOBRIDGE");
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_BRIDGE");
    Q514_KESSELGUIDE_BRIDGE = 1;
    Q514_CHECKPLAYERGIFTS();
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Hello_Volfzacke_03_01");
    AI_FUNCTION(SELF, 0x1542c);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Hello_Volfzacke_03_02");
    AI_FUNCTION(SELF, 0x1542d);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Hello_Volfzacke_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "GUIDEBRIDGE_NOIQ");
}

func void KESSELVZ_STATUE_CAMERA_01() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("VOLFZACKE_STATUE_01");
}

func void KESSELVZ_STATUE_CAMERA_END() {
    WLD_SENDUNTRIGGER("VOLFZACKE_STATUE_01");
    DIACAM_ENABLE();
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN_VZ, "BEFOREBRIDGE_WAIT");
    NPC_REFRESH(KDW_203_RIORDIAN_VZ);
}

instance DIA_KESSEL_Q514_AFTERSKELETONS(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSKELETONS_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSKELETONS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_AFTERSKELETONS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_KESSELGUIDE_BRIDGE) == (3))) {
        if ((((((((NPC_ISDEAD(ZOMBIE_VOLFZACKE_STORYRISE_03)) && (NPC_ISDEAD(ZOMBIE_VOLFZACKE_STORYRISE_04))) && (NPC_ISDEAD(ZOMBIE_VOLFZACKE_STORYRISE_05))) && (NPC_ISDEAD(SKELETON_VZ_STORY_03))) && (NPC_ISDEAD(SKELETON_VZ_STORY_04))) && (NPC_ISDEAD(SKELETON_VZ_STORY_05))) && (NPC_ISDEAD(SKELETON_VZ_STORY_06))) && (NPC_ISDEAD(SKELETON_VZ_STORY_07))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERSKELETONS_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSkeletons_03_01");
    INFO_CLEARCHOICES(0x1542e);
    INFO_ADDCHOICE(0x1542e, "We should call the others and start transporting our goods.", 0x15432);
    INFO_ADDCHOICE(0x1542e, "You think these are all skeletons?", 0x15431);
}

func void DIA_KESSEL_Q514_AFTERSKELETONS_THINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSkeletons_Think_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSkeletons_Think_03_02");
}

func void DIA_KESSEL_Q514_AFTERSKELETONS_BRIDGE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSkeletons_Bridge_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSkeletons_Bridge_03_02");
    INFO_CLEARCHOICES(0x1542e);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x15433);
    Q514_SPAWNFRIENDS();
    Q514_PREPARECAMP_BEFOREBRIDGE();
}

func void KESSEL_STARTBRIDGECUTSCENE() {
    CUTSCENE_START(0x16a00);
}

instance DIA_KESSEL_Q514_AFTERBRIDGE(C_INFO) {
    NPC = 0xe77b;
    NR = 2;
    CONDITION = DIA_KESSEL_Q514_AFTERBRIDGE_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERBRIDGE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_AFTERBRIDGE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_VOLFZACKEBRIDGE_CUTSCENE) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERBRIDGE_INFO() {
    NPC_REMOVEINVITEMS(HERO, 0x8cf4, NPC_HASITEMS(HERO, 0x8cf4));
    Q514_VOLFZACKEBRIDGE_CUTSCENE = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterBridge_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterBridge_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterBridge_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterBridge_03_04");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_AFTERBRIDGE);
}

instance DIA_KESSEL_Q514_OPENGATE(C_INFO) {
    NPC = 0xe77b;
    NR = 2;
    CONDITION = DIA_KESSEL_Q514_OPENGATE_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_OPENGATE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_OPENGATE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_FIRSTGATEOPENED) == (TRUE))) && ((Q514_CAMPISREADY) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_OPENGATE_INFO() {
    B_GIVEPLAYERXP((XP_Q514_FINISHEVENT) / (3));
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_OpenGate_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_OpenGate_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_OpenGate_03_03");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_FURTHER);
}

instance DIA_KESSEL_Q514_CAMP(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_CAMP_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_CAMP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_CAMP_CONDITION() {
    if (((Q514_CAMPISREADY) == (1)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_CAMP_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Camp_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Camp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Camp_03_03");
    INFO_CLEARCHOICES(0x1543a);
    INFO_ADDCHOICE(0x1543a, "I'll get back to you soon, I'd like to look around a bit more.", 0x15440);
    INFO_ADDCHOICE(0x1543a, "Let's go.", 0x1543f);
}

var int KESSELVZ_CAMPOPTION = 0;
func void DIA_KESSEL_Q514_CAMP_END() {
    INFO_CLEARCHOICES(0x1543a);
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_CAMPREADY);
    if ((KESSELVZ_CAMPOPTION) == (1)) {
        NPC_EXCHANGEROUTINE(SELF, "GUIDECAMP");
        AI_STOPPROCESSINFOS(SELF);
    };
    NPC_EXCHANGEROUTINE(SELF, "GOCAMP");
    AI_STOPPROCESSINFOS(OTHER);
}

func void DIA_KESSEL_Q514_CAMP_LETSGO() {
    KESSELVZ_CAMPOPTION = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Camp_LetsGo_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    DIA_KESSEL_Q514_CAMP_END();
}

func void DIA_KESSEL_Q514_CAMP_NO() {
    KESSELVZ_CAMPOPTION = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Camp_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Camp_No_03_02");
    DIA_KESSEL_Q514_CAMP_END();
}

instance DIA_KESSEL_Q514_CAMPREADY(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_CAMPREADY_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_CAMPREADY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_CAMPREADY_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1543a)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((NPC_GETDISTTOWP(SELF, "VOLFZACK_13")) <= (400))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_CAMPREADY_INFO() {
    B_GIVEPLAYERXP((XP_Q514_FINISHEVENT) / (2));
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_03_03");
    INFO_CLEARCHOICES(0x15441);
    INFO_ADDCHOICE(0x15441, "Any advice?", 0x15446);
    INFO_ADDCHOICE(0x15441, "What should I do now?", 0x15445);
    INFO_ADDCHOICE(0x15441, "What about the way back?", 0x15444);
    NPC_EXCHANGEROUTINE(SELF, "CAMP");
}

func void DIA_KESSEL_Q514_CAMPREADY_WAYOUT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_CampReady_WayOut_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_WayOut_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_WayOut_03_03");
}

func void DIA_KESSEL_Q514_CAMPREADY_WHATDO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_CampReady_WhatDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_WhatDo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_WhatDo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_WhatDo_03_04");
}

func void DIA_KESSEL_Q514_CAMPREADY_ADVICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_CampReady_Advice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_CampReady_Advice_03_02");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSELINFO);
}

instance DIA_KESSEL_Q514_GARGOYLE(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_GARGOYLE_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_GARGOYLE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_GARGOYLE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (1))) {
        if ((((NPC_ISDEAD(GARGOYLE_CAMP_01)) && (NPC_ISDEAD(GARGOYLE_CAMP_02))) && (NPC_ISDEAD(GARGOYLE_CAMP_03))) && (NPC_ISDEAD(GARGOYLE_CAMP_04))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_GARGOYLE_INFO() {
    Q514_CHANGEDOOR();
    B_GIVEPLAYERXP(XP_Q514_FINISHEVENT);
    AI_FUNCTION(SELF, 0xef4d);
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Gargoyle_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Gargoyle_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_03_05");
    INFO_CLEARCHOICES(0x15447);
    INFO_ADDCHOICE(0x15447, "How much loss have we suffered?", 0x1544d);
    INFO_ADDCHOICE(0x15447, "What do we do now?", 0x1544c);
}

var int KESSELVZ_GARGOYLECOUNT = 0;
func void DIA_KESSEL_Q514_GARGOYLE_END() {
    KESSELVZ_GARGOYLECOUNT = (KESSELVZ_GARGOYLECOUNT) + (1);
    if ((KESSELVZ_GARGOYLECOUNT) == (2)) {
        Q514_CATACOMBS_GARGOYLE_FIRSTMEETING = 2;
        Q514_CATACOMBS_GRAVEROOM_BLOCKPLAYER = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_End_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_End_03_02");
        CREATEINVITEMS(SELF, 0x864b, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x864b, 2);
        CREATEINVITEMS(SELF, 0x8647, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x8647, 2);
        INFO_CLEARCHOICES(0x15447);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_GARGOYLE);
    };
}

func void DIA_KESSEL_Q514_GARGOYLE_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Gargoyle_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_What_03_03");
    DIA_KESSEL_Q514_GARGOYLE_END();
}

func void DIA_KESSEL_Q514_GARGOYLE_LOST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Gargoyle_Lost_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_Lost_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Gargoyle_Lost_03_03");
    DIA_KESSEL_Q514_GARGOYLE_END();
}

instance DIA_KESSEL_Q514_TREASURY(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_TREASURY_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_TREASURY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_TREASURY_CONDITION() {
    if (((Q514_CATACOMBS_FINISH) == (1)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) {
        if ((((NPC_GETDISTTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_TREASURY_KESSEL_CUTSCENE_01")) <= (300)) && ((NPC_GETDISTTOWP(NONE_11037_MARKUS_VZ, "VOLFZACK_TREASURY_MARKUS_CUTSCENE_01")) <= (300))) && ((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_TREASURY_DACK_CUTSCENE_01")) <= (300))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_TREASURY_INFO() {
    TRIA_INVITE(NONE_11037_MARKUS_VZ);
    TRIA_INVITE(MIL_63710_DUSTER_VZ);
    TRIA_START();
    AI_LOOKATNPC(SELF, OTHER);
    AI_LOOKATNPC(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_03_01");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_03_03");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_TREASURY_START);
    INFO_CLEARCHOICES(0x1544e);
    INFO_ADDCHOICE(0x1544e, "Why did you bring Markus and Duster here?", 0x15453);
    INFO_ADDCHOICE(0x1544e, "How's the camp situation?", 0x15452);
    INFO_ADDCHOICE(0x1544e, "There's no more time to waste, let's go.", 0x15454);
}

func void DIA_KESSEL_Q514_TREASURY_END() {
    TRIA_WAIT();
    TRIA_NEXT(NONE_11037_MARKUS_VZ);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_MorePpl_03_05");
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x1395f);
    AI_STOPPROCESSINFOS(SELF);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_FUNCTION(SELF, 0x15456);
}

func void DIA_KESSEL_Q514_TREASURY_CAMP() {
    AI_FUNCTION(SELF, 0x15455);
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Treasury_Camp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_Camp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_Camp_03_03");
}

func void DIA_KESSEL_Q514_TREASURY_MOREPPL() {
    AI_FUNCTION(SELF, 0x15455);
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Treasury_MorePpl_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Treasury_MorePpl_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_MorePpl_03_03");
    TRIA_WAIT();
    TRIA_NEXT(NONE_11037_MARKUS_VZ);
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_MorePpl_03_04");
    DIA_KESSEL_Q514_TREASURY_END();
}

func void DIA_KESSEL_Q514_TREASURY_LETSGO() {
    AI_FUNCTION(SELF, 0x15455);
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Treasury_LetsGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_LetsGo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Treasury_LetsGo_03_03");
    DIA_KESSEL_Q514_TREASURY_END();
}

func void KESSEL_VZ_Q514TREASURY_ENABLECAMERA() {
    DIACAM_ENABLE();
}

func void KESSELVZ_CHANGERTNMARKUSDACK() {
    Q514_TREASURY_EVENT = 1;
    WLD_SENDUNTRIGGER("VZ_TREASURY_CAMERA_03");
    B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "TREASURYWAIT");
    NPC_REFRESH(NONE_202_KESSEL_VZ);
    B_STARTOTHERROUTINE(NONE_11037_MARKUS_VZ, "TREASURYWAIT");
    NPC_REFRESH(NONE_11037_MARKUS_VZ);
    B_STARTOTHERROUTINE(MIL_63710_DUSTER_VZ, "TREASURYWAIT");
    NPC_REFRESH(MIL_63710_DUSTER_VZ);
}

instance DIA_KESSEL_Q514_SWORD(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_SWORD_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_SWORD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_SWORD_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((Q514_TREASURY_FINISH) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_SWORD_END() {
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    INFO_CLEARCHOICES(0x15457);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x1545e);
}

func void DIA_KESSEL_Q514_SWORD_INFO() {
    B_GIVEPLAYERXP(XP_Q514_FINISHEVENT);
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Sword_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_03_05");
    INFO_CLEARCHOICES(0x15457);
    INFO_ADDCHOICE(0x15457, "Be careful who knows how this artifact works.", 0x1545b);
    INFO_ADDCHOICE(0x15457, "Maybe I should try it?", 0x1545d);
}

func void DIA_KESSEL_Q514_SWORD_WATCHOUT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Sword_WatchOut_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_WatchOut_03_02");
    DIA_KESSEL_Q514_SWORD_END();
}

func void DIA_KESSEL_Q514_SWORD_YES() {
    AI_PLAYANI(OTHER, T_YES);
    DIA_KESSEL_Q514_SWORD_END();
}

func void DIA_KESSEL_Q514_SWORD_ME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_Sword_Me_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_Me_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_Sword_Me_03_03");
    DIA_KESSEL_Q514_SWORD_END();
}

func void DIA_KESSEL_Q514_SWORD_CUTSCENE() {
    Q514_SWORD_CUTSCENE = 1;
}

instance DIA_KESSEL_Q514_AFTERSWORD(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSWORD_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSWORD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_AFTERSWORD_CONDITION() {
    if ((((Q514_SWORD_CUTSCENE) == (3)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int KESSELVZ_AFTERSWORD_GIVEUP = 0;
var int KESSELVZ_AFTERSWORD_GOOD = 0;
var int KESSELVZ_AFTERSWORD_VOLKER = 0;
var int KESSELVZ_AFTERSWORD_LEAVE = 0;
var int KESSELVZ_AFTERSWORD_WAITASEC = 0;
func void DIA_KESSEL_Q514_AFTERSWORD_CHOICES() {
    INFO_CLEARCHOICES(0x1545f);
    if ((KESSELVZ_AFTERSWORD_LEAVE) == (FALSE)) {
        if ((KESSELVZ_AFTERSWORD_GIVEUP) == (TRUE)) {
            if (((KESSELVZ_AFTERSWORD_GOOD) == (TRUE)) || ((KESSELVZ_AFTERSWORD_VOLKER) == (TRUE))) {
                INFO_ADDCHOICE(0x1545f, "Let's get the Peacemaker and get out of here. (LEAVE THE CHAPEL)", 0x1546c);
            };
        };
    };
    if ((KESSELVZ_AFTERSWORD_WAITASEC) == (FALSE)) {
        if ((KESSELVZ_AFTERSWORD_GIVEUP) == (TRUE)) {
            INFO_ADDCHOICE(0x1545f, "I'll be right back.", 0x15470);
        };
    };
    if ((KESSELVZ_AFTERSWORD_VOLKER) == (FALSE)) {
        INFO_ADDCHOICE(0x1545f, "You promised me revenge on the Volker, have you forgotten?", 0x1546a);
    };
    if ((KESSELVZ_AFTERSWORD_GOOD) == (FALSE)) {
        INFO_ADDCHOICE(0x1545f, "You wanted to do something good for everyone.", 0x15469);
    };
    if ((KESSELVZ_AFTERSWORD_GIVEUP) == (FALSE)) {
        INFO_ADDCHOICE(0x1545f, "You want to give up now? We found the Peacemaker.", 0x15468);
    };
}

func void DIA_KESSEL_Q514_AFTERSWORD_INFO() {
    NONE_202_KESSEL_VZ.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_03_06");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD);
    DIA_KESSEL_Q514_AFTERSWORD_CHOICES();
}

func void DIA_KESSEL_Q514_AFTERSWORD_GIVEUP() {
    KESSELVZ_AFTERSWORD_GIVEUP = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_GiveUp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_GiveUp_03_02");
    INFO_CLEARCHOICES(0x1545f);
    INFO_ADDCHOICE(0x1545f, "Why don't I try to wield the Peacemaker?", 0x1546b);
    INFO_CLEARCHOICES(0x15471);
    INFO_ADDCHOICE(0x15471, "Why don't I try to wield the Peacemaker?", 0x1546b);
}

func void DIA_KESSEL_Q514_AFTERSWORD_GOOD() {
    KESSELVZ_AFTERSWORD_GOOD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_Good_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Good_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Good_03_03");
    if ((KESSELVZ_AFTERSWORD_WAITASEC) == (FALSE)) {
        DIA_KESSEL_Q514_AFTERSWORD_CHOICES();
    };
}

func void DIA_KESSEL_Q514_AFTERSWORD_VOLKER() {
    KESSELVZ_AFTERSWORD_VOLKER = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_Volker_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Volker_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Volker_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Volker_03_04");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_NOGOOD);
    if ((KESSELVZ_AFTERSWORD_WAITASEC) == (FALSE)) {
        DIA_KESSEL_Q514_AFTERSWORD_CHOICES();
    };
}

func void DIA_KESSEL_Q514_AFTERSWORD_GIVEUP_TRY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_Try_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Try_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Try_03_03");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_TRYSWORD);
    if ((KESSELVZ_AFTERSWORD_WAITASEC) == (FALSE)) {
        DIA_KESSEL_Q514_AFTERSWORD_CHOICES();
    };
}

func void DIA_KESSEL_Q514_AFTERSWORD_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_Leave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Leave_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Leave_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Leave_03_04");
    INFO_CLEARCHOICES(0x1545f);
    INFO_ADDCHOICE(0x1545f, "If that is your wish.", 0x1546e);
    INFO_ADDCHOICE(0x1545f, "I'm not leaving you here.", 0x1546f);
    INFO_CLEARCHOICES(0x1547a);
    INFO_ADDCHOICE(0x1547a, "If that is your wish.", 0x1546e);
    INFO_ADDCHOICE(0x1547a, "I'm not leaving you here.", 0x1546f);
}

func void DIA_KESSEL_Q514_AFTERSWORD_END() {
    Q514_SWORD_CUTSCENE = 4;
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Goodbye_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_Goodbye_03_02");
    INFO_CLEARCHOICES(0x1545f);
    INFO_CLEARCHOICES(0x1547a);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_GOODBYE);
    if (((NPC_HASITEMS(OTHER, 0x9a2a)) >= (1)) && ((NPC_HASITEMS(OTHER, 0x92f7)) >= (1))) {
        Q514_SWORD_LEAVE_LOGENTRY = 2;
        AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_GOTEVERYTHING_V2);
    };
    Q514_SWORD_LEAVE_LOGENTRY = 1;
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_GOTEVERYTHING_V1);
    NPC_EXCHANGEROUTINE(MIL_63710_DUSTER_VZ, "SWORDSEARCH");
}

func void DIA_KESSEL_Q514_AFTERSWORD_LEAVE_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_Yes_15_01");
    DIA_KESSEL_Q514_AFTERSWORD_END();
}

func void DIA_KESSEL_Q514_AFTERSWORD_LEAVE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_No_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_No_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_No_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_No_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_No_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_No_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_No_03_07");
    CREATEINVITEMS(SELF, 0x8969, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8969, 1);
    DIA_KESSEL_Q514_AFTERSWORD_END();
}

func void DIA_KESSEL_Q514_AFTERSWORD_WAITASEC() {
    KESSELVZ_AFTERSWORD_WAITASEC = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Kessel_Q514_AfterSword_WaitASec_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_AfterSword_WaitASec_03_02");
    INFO_CLEARCHOICES(0x1545f);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(MIL_63710_DUSTER_VZ, "SWORDSEARCH");
}

instance DIA_KESSEL_Q514_AFTERSWORDGIVEUP(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSWORDGIVEUP_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSWORDGIVEUP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You want to give up now? We found the Peacemaker.";
}

func int DIA_KESSEL_Q514_AFTERSWORDGIVEUP_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_SWORD_CUTSCENE) == (3))) && (NPC_KNOWSINFO(OTHER, 0x1545f))) && ((KESSELVZ_AFTERSWORD_GIVEUP) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERSWORDGIVEUP_INFO() {
    DIA_KESSEL_Q514_AFTERSWORD_GIVEUP();
}

instance DIA_KESSEL_Q514_AFTERSWORDGOOD(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSWORDGOOD_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSWORDGOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You wanted to do something good for everyone.";
}

func int DIA_KESSEL_Q514_AFTERSWORDGOOD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_SWORD_CUTSCENE) == (3))) && (NPC_KNOWSINFO(OTHER, 0x1545f))) && ((KESSELVZ_AFTERSWORD_GOOD) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERSWORDGOOD_INFO() {
    DIA_KESSEL_Q514_AFTERSWORD_GOOD();
}

instance DIA_KESSEL_Q514_AFTERSWORDVOLKER(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSWORDVOLKER_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSWORDVOLKER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You promised me revenge on the Volker, have you forgotten?";
}

func int DIA_KESSEL_Q514_AFTERSWORDVOLKER_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_SWORD_CUTSCENE) == (3))) && (NPC_KNOWSINFO(OTHER, 0x1545f))) && ((KESSELVZ_AFTERSWORD_VOLKER) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERSWORDVOLKER_INFO() {
    DIA_KESSEL_Q514_AFTERSWORD_VOLKER();
}

instance DIA_KESSEL_Q514_AFTERSWORDLEAVE(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_AFTERSWORDLEAVE_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_AFTERSWORDLEAVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's get the Peacemaker and get out of here. (LEAVE THE CHAPEL)";
}

func int DIA_KESSEL_Q514_AFTERSWORDLEAVE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_SWORD_CUTSCENE) == (3))) && (NPC_KNOWSINFO(OTHER, 0x1545f))) && ((KESSELVZ_AFTERSWORD_LEAVE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_AFTERSWORDLEAVE_INFO() {
    DIA_KESSEL_Q514_AFTERSWORD_LEAVE();
}

instance DIA_KESSEL_Q514_TRYSWORD(C_INFO) {
    NPC = 0xe77b;
    NR = 1;
    CONDITION = DIA_KESSEL_Q514_TRYSWORD_CONDITION;
    INFORMATION = DIA_KESSEL_Q514_TRYSWORD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KESSEL_Q514_TRYSWORD_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1545f))) && ((Q514_SWORD_FAILEDTOEQUIP) == (1))) && ((Q514_SWORD_CUTSCENE) == (3))) && ((KESSELVZ_AFTERSWORD_GIVEUP) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_Q514_TRYSWORD_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_TrySword_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_Q514_TrySword_03_02");
}

instance DIA_KESSEL_VZ_AMBIENT(C_INFO) {
    NPC = 0xe77b;
    NR = 800;
    CONDITION = DIA_KESSEL_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_KESSEL_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How do you stand being in this cursed place?";
}

func int DIA_KESSEL_VZ_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15434)) && ((Q514_CATACOMBS_FINISH) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale1");
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kessel_VZ_Ambient_03_03");
    };
    if ((Q514_CAMPISREADY) == (1)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Kessel_VZ_Ambient_03_02");
    };
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_VZ_Ambient_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_KESSEL_VZ_CANYOUTEACH(C_INFO) {
    NPC = 0xe77b;
    NR = 775;
    CONDITION = DIA_KESSEL_VZ_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_KESSEL_VZ_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you teach me something?";
}

func int DIA_KESSEL_VZ_CANYOUTEACH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15434)) && ((Q514_CATACOMBS_FINISH) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_VZ_CANYOUTEACH_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMe");
    AI_OUTPUT(SELF, OTHER, "DIA_Kessel_VZ_CanYouTeach_03_01");
    if ((SQ504_JOINEDWATERCIRCLE) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kessel_VZ_CanYouTeach_03_02");
        NPC_CHANGEATTRIBUTE(OTHER, ATR_HITPOINTS_MAX, 10);
        NPC_CHANGEATTRIBUTE(OTHER, ATR_STRENGTH, 3);
        NPC_CHANGEATTRIBUTE(OTHER, ATR_DEXTERITY, 3);
        CONCATTEXT = CONCATSTRINGS(PRINT_LEARNHITPOINTS_MAX, INTTOSTRING(10));
        PRINTSCREEN(CONCATTEXT, -(1), 53, FONT_SCREEN, 3);
        CONCATTEXT2 = CONCATSTRINGS(PRINT_LEARNDEX, INTTOSTRING(3));
        PRINTSCREEN(CONCATTEXT2, -(1), 48, FONT_SCREEN, 3);
        CONCATTEXT3 = CONCATSTRINGS(PRINT_LEARNSTR, INTTOSTRING(3));
        PRINTSCREEN(CONCATTEXT3, -(1), 42, FONT_SCREEN, 3);
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_VOLFZACKETEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_VOLFZACKETEACHER, LOG_VOLFZACKETEACHER_KESSEL);
}

var string DIA_KESSEL_VZ_CANYOUTEACH_INFO.CONCATTEXT = "";
var string DIA_KESSEL_VZ_CANYOUTEACH_INFO.CONCATTEXT2 = "";
var string DIA_KESSEL_VZ_CANYOUTEACH_INFO.CONCATTEXT3 = "";
var int KESSELVZ_CANTTEACH = 0;
var int KESSEL_CURRENTSTRLEVEL = 0;
var int KESSEL_CURRENTDEXLEVEL = 0;
var int KESSEL_CURRENT1HLEVEL = 0;
var int KESSEL_CURRENT2HLEVEL = 0;
var int KESSEL_CURRENTBLEVEL = 0;
var int KESSEL_CURRENTCBLEVEL = 0;
instance DIA_KESSEL_TEACH(C_INFO) {
    NPC = 0xe77b;
    NR = 998;
    CONDITION = DIA_KESSEL_TEACH_CONDITION;
    INFORMATION = DIA_KESSEL_TEACH_INFO;
    PERMANENT = 1;
    DESCRIPTION = "Teach me.";
}

func int DIA_KESSEL_TEACH_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x15483)) && (!(NPC_KNOWSINFO(OTHER, 0x1544e)))) && ((KESSELVZ_CANTTEACH) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KESSEL_TEACH_CHOICES() {
    KESSEL_GOLDCOST = 0;
    KESSEL_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    KESSEL_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    KESSEL_CURRENT1HLEVEL = OTHER.AIVAR[84];
    KESSEL_CURRENT2HLEVEL = OTHER.AIVAR[85];
    KESSEL_CURRENTBLEVEL = OTHER.AIVAR[86];
    KESSEL_CURRENTCBLEVEL = OTHER.AIVAR[87];
    INFO_CLEARCHOICES(0x15490);
    INFO_ADDCHOICE(0x15490, DIALOG_BACK, 0x15495);
    if ((OTHER.AIVAR[81]) < (120)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), KESSEL_GOLDCOST), 0x15496);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (KESSEL_GOLDCOST) * (5)), 0x15497);
    };
    if ((OTHER.AIVAR[82]) < (120)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), KESSEL_GOLDCOST), 0x15498);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (KESSEL_GOLDCOST) * (5)), 0x15499);
    };
    if ((OTHER.AIVAR[84]) < (75)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), KESSEL_GOLDCOST), 0x1549a);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1)) * (5), (KESSEL_GOLDCOST) * (5)), 0x1549b);
    };
    if ((OTHER.AIVAR[85]) < (60)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), KESSEL_GOLDCOST), 0x1549c);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1)) * (5), (KESSEL_GOLDCOST) * (5)), 0x1549d);
    };
    if ((OTHER.AIVAR[86]) < (60)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1), KESSEL_GOLDCOST), 0x1549e);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNBOW5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 5), (KESSEL_GOLDCOST) * (5)), 0x1549f);
    };
    if ((OTHER.AIVAR[87]) < (75)) {
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 1), KESSEL_GOLDCOST), 0x154a0);
        INFO_ADDCHOICE(0x15490, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 5), (KESSEL_GOLDCOST) * (5)), 0x154a1);
    };
}

var int DIA_KESSEL_TEACH_CHOICES.KESSEL_GOLDCOST = 0;
func void DIA_KESSEL_TEACH_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_TeachMe");
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_BACK() {
    if (((((((OTHER.AIVAR[81]) >= (120)) && ((OTHER.AIVAR[82]) >= (120))) && ((OTHER.AIVAR[84]) >= (75))) && ((OTHER.AIVAR[85]) >= (60))) && ((OTHER.AIVAR[86]) >= (60))) && ((OTHER.AIVAR[87]) >= (75))) {
        B_SAY(SELF, OTHER, "$NoLearnYoureBetter");
        KESSELVZ_CANTTEACH = TRUE;
    };
    INFO_CLEARCHOICES(0x15490);
}

func void DIA_KESSEL_TEACH_STR1() {
    if ((KESSEL_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 120);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_STR5() {
    if ((KESSEL_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 120);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_DEX1() {
    if ((KESSEL_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 120);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_DEX5() {
    if ((KESSEL_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 120);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_1H_1() {
    if ((KESSEL_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 75);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_1H_5() {
    if ((KESSEL_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 75);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_2H_1() {
    if ((KESSEL_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 60);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_2H_5() {
    if ((KESSEL_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 60);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_BOW1() {
    if ((KESSEL_CURRENTBLEVEL) < (OTHER.AIVAR[86])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 1, 60);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_BOW5() {
    if ((KESSEL_CURRENTBLEVEL) < (OTHER.AIVAR[86])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 5, 60);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_CROSSBOW1() {
    if ((KESSEL_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 1, 75);
    DIA_KESSEL_TEACH_CHOICES();
}

func void DIA_KESSEL_TEACH_CROSSBOW5() {
    if ((KESSEL_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
        B_SAY(SELF, OTHER, "$YouLearnedSomething");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 5, 75);
    DIA_KESSEL_TEACH_CHOICES();
}
