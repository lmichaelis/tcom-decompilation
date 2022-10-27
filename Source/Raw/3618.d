instance DIA_DENNIS_EXIT(C_INFO) {
    NPC = 0xded0;
    NR = 999;
    CONDITION = DIA_DENNIS_EXIT_CONDITION;
    INFORMATION = DIA_DENNIS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DENNIS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DENNIS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DENNIS_FIRSTWARN(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_FIRSTWARN_CONDITION;
    INFORMATION = DIA_DENNIS_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string DENIS_CHECKPOINT = "PART9_DENNIS";
func int DIA_DENNIS_FIRSTWARN_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, "PART9_DENNIS")) <= (800)) {
        if (((DENIS_ALLOWUSGO) == (TRUE)) || ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_SUCCESS))) {
            SELF.AIVAR[14] = TRUE;
        } else {
            SELF.AIVAR[14] = FALSE;
        } else if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (500)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DENNIS_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_DENNIS_FIRSTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_FIRSTWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, DENIS_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_DENNIS_SECONDWARN(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SECONDWARN_CONDITION;
    INFORMATION = DIA_DENNIS_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_DENNIS_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, DENIS_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SECONDWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, DENIS_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_DENNIS_FINALWARN(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_FINALWARN_CONDITION;
    INFORMATION = DIA_DENNIS_FINALWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_DENNIS_FINALWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, DENIS_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_FINALWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_FINALWARN_03_01");
    DENNIS_KILLHERO();
}

instance DIA_DENNIS_SQ116_LOOKINGFORHOLDWIG(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_LOOKINGFORHOLDWIG_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_LOOKINGFORHOLDWIG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for Holdwig.";
}

func int DIA_DENNIS_SQ116_LOOKINGFORHOLDWIG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_TAKEKURTGOLD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_LOOKINGFORHOLDWIG_INFO() {
    if ((SQ116_WHEREISHOLDWIG_LOGENTRY) == (FALSE)) {
        SQ116_WHEREISHOLDWIG_LOGENTRY = TRUE;
    };
    B_SAY(OTHER, SELF, "$SQ116_Marvin_SearchHoldwig");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_LookingForHoldwig_02_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_LookingForHoldwig_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_LookingForHoldwig_02_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_LookingForHoldwig_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_LookingForHoldwig_02_03");
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_DENNIS_HOLDWIG);
}

instance DIA_DENNIS_SQ116_IFWONTWAKEUP(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_IFWONTWAKEUP_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_IFWONTWAKEUP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What if Holdwig doesn't wake up?";
}

func int DIA_DENNIS_SQ116_IFWONTWAKEUP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0xfd75)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_IFWONTWAKEUP_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_IfWontWakeUp_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_IfWontWakeUp_02_01");
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_IfWontWakeUp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_IfWontWakeUp_02_02");
    AI_REMOVEWEAPON(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_DENNIS_SQ116_CANHELP(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_CANHELP_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_CANHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is there anything I can do to help?";
}

func int DIA_DENNIS_SQ116_CANHELP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0xfd78)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_CANHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_CanHelp_15_00");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_CanHelp_15_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_04");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_CanHelp_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_08");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_CanHelp_02_09");
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_DENNIS_SPY);
}

instance DIA_DENNIS_SQ116_TALKWITHHOLDWIG(C_INFO) {
    NPC = 0xded0;
    NR = 90;
    CONDITION = DIA_DENNIS_SQ116_TALKWITHHOLDWIG_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_TALKWITHHOLDWIG_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can I talk to Holdwig?";
}

func int DIA_DENNIS_SQ116_TALKWITHHOLDWIG_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0xfd75)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_TALKWITHHOLDWIG_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TalkWithHoldwig_15_00");
    if ((SQ116_CANTALKWITHHOLDWIG) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TalkWithHoldwig_02_01");
        AI_STOPPROCESSINFOS(SELF);
        SQ116_DENNIS_ALLOWUSTOGO();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TalkWithHoldwig_02_02");
}

instance DIA_DENNIS_SQ116_WHOPOISONED(C_INFO) {
    NPC = 0xded0;
    NR = 85;
    CONDITION = DIA_DENNIS_SQ116_WHOPOISONED_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_WHOPOISONED_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Who could have tried to poison Holdwig?";
}

var int DENIS_SQ116_WHOPOISONED = 0;
func int DIA_DENNIS_SQ116_WHOPOISONED_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0xfd7b)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) && ((DENIS_SQ116_WHOPOISONED) < (2))) && ((SQ116_BLOCKTERRYWAY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_WHOPOISONED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_WhoPoisoned_15_00");
    if ((SQ116_CANTALKWITHHOLDWIG) == (1)) {
        if ((DENIS_SQ116_WHOPOISONED) == (1)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_WhoCouldTryPoison_15_05");
        };
        AI_PLAYANI(SELF, T_SEARCH);
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_WhoCouldTryPoison_02_06");
        DENIS_SQ116_WHOPOISONED = 2;
    };
    DENIS_SQ116_WHOPOISONED = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_WhoPoisoned_02_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_WhoPoisoned_02_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_WhoPoisoned_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_WhoPoisoned_02_03");
}

instance DIA_DENNIS_SQ116_INVESTIGATIONSTATUS(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Apparently there was a stranger hanging around the vineyard...";
}

func int DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_CONDITION() {
    if (((((SQ116_GUMBERTINFORMATIONS_THERRY) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) && ((NPC_KNOWSINFO(OTHER, 0xfe61)) == (FALSE))) && ((SQ116_BLOCKTERRYWAY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_FOLLOW() {
    INFO_CLEARCHOICES(0xfd85);
    INFO_ADDCHOICE(0xfd85, "(Fast travel with Dennis)", 0xfd88);
    INFO_ADDCHOICE(0xfd85, "(Run after Dennis)", 0xfd89);
}

func void DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_CHOICE_FADE() {
    SQ116_FASTTRAVELWITHDENNIS = TRUE;
    SQ116_TERRYCUTSCENEENABLE = TRUE;
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_GUIDE");
    SELF.AIVAR[15] = TRUE;
    AI_FUNCTION(SELF, 0xf363);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_DENNIS_MAD);
    AI_FUNCTION(SELF, 0xf366);
}

func void DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_CHOICE_FOLLOW() {
    SQ116_TERRYCUTSCENEENABLE = TRUE;
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_GUIDE");
    SELF.AIVAR[15] = TRUE;
    AI_FUNCTION(SELF, 0xf363);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_DENNIS_MAD);
}

func void DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_InvestigationStatus_15_01");
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_InvestigationStatus_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_InvestigationStatus_02_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_InvestigationStatus_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_InvestigationStatus_02_05");
    if ((SQ116_KNOWTERRYNAME) == (FALSE)) {
        DIA_DENNIS_SQ116_FOLLOW();
    };
    INFO_CLEARCHOICES(0xfd85);
    INFO_ADDCHOICE(0xfd85, "(Run after Dennis)", 0xfd87);
    INFO_ADDCHOICE(0xfd85, "Relax, I know this man!", 0xfd8b);
}

func void DIA_DENNIS_SQ116_INVESTIGATIONSTATUS_STOP() {
    B_GIVEPLAYERXP(XP_SQ116_KNOWTHERRYNAME);
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_InvestigationStatus_Stop_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_InvestigationStatus_Stop_02_02");
}

instance DIA_DENNIS_SQ116_TERRYSISDOWN(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_TERRYSISDOWN_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_TERRYSISDOWN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DENNIS_SQ116_TERRYSISDOWN_CONDITION() {
    if ((((NPC_ISINSTATE(BAU_2244_TERRY, 0xf0a3)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) && ((SQ116_TERRYEVENT) == (1))) && ((SQ116_BLOCKTERRYWAY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_GUMBERTCUTSCENE_TELEPORT() {
    NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_CUTSCENE_TERRYDEAD");
    SQ116_GUMBERT_RTNCHECK = 6;
    NPC_EXCHANGEROUTINE(BAU_2242_DENNIS, "SQ116_CUTSCENE_TERRYDEAD");
    B_PASSTIME(1);
    CUTSCENE_START(0x16878);
}

func void DIA_DENNIS_SQ116_GUMBERTCUTSCENE_FADESCREEN() {
    FADESCREENTOBLACKF(3, 0xfd8e, 1000);
    NPC_EXCHANGEROUTINE(BAU_2243_GUMBERT, "SQ116_CUTSCENE_GUMBERT_WAIT");
    SQ116_GUMBERT_RTNCHECK = 7;
    NPC_EXCHANGEROUTINE(BAU_2244_TERRY, "SQ116_CUTSCENE_TERRYDEAD");
    NPC_EXCHANGEROUTINE(BAU_2242_DENNIS, "SQ116_CUTSCENE_RUNFORGUMBERT");
}

func void DIA_DENNIS_SQ116_TERRYSISDOWN_KILL() {
    BAU_2244_TERRY.FLAGS = 0;
    INFO_CLEARCHOICES(0xfd8c);
    AI_FINISHINGMOVE(SELF, BAU_2244_TERRY);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_01");
    AI_REMOVEWEAPON(SELF);
    AI_REMOVEWEAPON(OTHER);
    AI_GOTONPC(SELF, BAU_2244_TERRY);
    B_TURNTONPC(SELF, BAU_2244_TERRY);
    AI_PLAYANI(SELF, T_PLUNDER);
    AI_TURNTONPC(OTHER, SELF);
    AI_TURNTONPC(SELF, OTHER);
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TerrysIsDown_Kill_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TerrysIsDown_Kill_15_05");
    AI_PLAYANI(OTHER, R_SCRATCHHEAD);
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TerrysIsDown_Kill_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_Kill_02_08");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xfd8f);
}

func void DIA_DENNIS_SQ116_TERRYSISDOWN_TALK() {
    INFO_CLEARCHOICES(0xfd8c);
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TerryMeeting_Wait_15_00");
    AI_REMOVEWEAPON(OTHER);
    AI_REMOVEWEAPON(SELF);
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerryMeeting_Wait_02_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_TerryMeeting_Wait_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerryMeeting_Wait_02_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xfd92);
    BAU_2244_TERRY.AIVAR[15] = TRUE;
}

func void DENNIS_SQ116_TERRYSTANDUP() {
    SQ116_TERRYTRIALOG = 1;
    BAU_2244_TERRY.AIVAR[96] = 2;
    NPC_SETATTITUDE(BAU_2244_TERRY, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(BAU_2244_TERRY, ATT_NEUTRAL);
    BAU_2244_TERRY.AIVAR[1] = CRIME_NONE;
    BAU_2244_TERRY.AIVAR[0] = FIGHT_LOST;
}

func int DIA_DENNIS_SQ116_TERRYSISDOWN_INFO() {
    NPC_EXCHANGEROUTINE(SELF, "SQ116_CUTSCENE");
    SQ116_HEALEVERYONE();
    BAU_2242_DENNIS.AIVAR[15] = FALSE;
    BAU_2242_DENNIS.FLAGS = NPC_FLAG_IMPORTANT;
    BAU_2244_TERRY.FLAGS = 0;
    AI_STOPLOOKAT(SELF);
    AI_TURNTONPC(SELF, BAU_2244_TERRY);
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_TerrysIsDown_02_00");
    INFO_CLEARCHOICES(0xfd8c);
    INFO_ADDCHOICE(0xfd8c, "(Stop Dennis)", 0xfd91);
    INFO_ADDCHOICE(0xfd8c, "(Do nothing)", 0xfd90);
    return 0 /* !broken stack! */;
}

instance DIA_DENNIS_SQ116_AFTERFIGHT(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DENNIS_SQ116_AFTERFIGHT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_TERRYEVENT) == (2))) && ((SQ116_BLOCKTERRYWAY) == (FALSE))) {
        if ((SQ116_CLEANDENNISATTITUDE) == (1)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_AFTERFIGHT_INFO() {
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_TerryMeeting_LetsTalk_AfterFight_02_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_TerryMeeting_LetsTalk_AfterFight_15_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_CUTSCENE_GUMBERT");
    AI_FUNCTION(SELF, 0xf35e);
}

instance DIA_DENNIS_SQ116_VINE(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_SQ116_VINE_CONDITION;
    INFORMATION = DIA_DENNIS_SQ116_VINE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DENNIS_SQ116_VINE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0xfddd))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_SQ116_VINE_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_03_02");
    AI_WAITTILLEND(OTHER, SELF);
    AI_DRAWWEAPON(SELF);
    AI_WAIT(OTHER, 0x3e4ccccd);
    AI_PLAYANI(OTHER, T_JUMPB);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_03_03");
    INFO_CLEARCHOICES(0xfd97);
    INFO_ADDCHOICE(0xfd97, "Easy! Wait!", 0xfd9b);
}

func void DENNIS_SQ116_TESTVINE() {
    AI_REMOVEWEAPON(SELF);
    AI_RESETFACEANI(SELF);
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 0x8d02, 1);
    AI_USEITEM(SELF, 0x8d02);
}

func void DIA_DENNIS_SQ116_VINE_WAIT() {
    DENIS_ALLOWUSGO = TRUE;
    SQ116_BLOCKTERRYWAY = TRUE;
    SQ116_CHECKKITCHENWITHGUMBERT = FALSE;
    SQ116_CANTALKWITHHOLDWIG = 1;
    SQ116_DENNIS_ALLOWUSTOGO();
    AI_STARTFACEANI(OTHER, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_04");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_07");
    DENNIS_SQ116_TESTVINE();
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_10");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_13");
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_SQ116_Vine_Wait_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_SQ116_Vine_Wait_03_15");
    INFO_CLEARCHOICES(0xfd97);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_DENNIS_VINE);
}

instance DIA_DENNIS_YOUGOOD(C_INFO) {
    NPC = 0xded0;
    NR = 1;
    CONDITION = DIA_DENNIS_YOUGOOD_CONDITION;
    INFORMATION = DIA_DENNIS_YOUGOOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're doing pretty good. Could you teach me something?";
}

func int DIA_DENNIS_YOUGOOD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_SUCCESS)) && ((SQ225_FINISHWAY) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_YOUGOOD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_YouGood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_YouGood_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_YouGood_03_03");
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_DENNIS);
}

var int DENNIS_CURRENT2HLEVEL = 0;
var int DENNIS_CURRENTSTRLEVEL = 0;
var int DENNIS_NOMORE = 0;
var string DENNIS_PRINTS = "";
instance DIA_DENNIS_TRAIN(C_INFO) {
    NPC = 0xded0;
    NR = 7;
    CONDITION = DIA_DENNIS_TRAIN_CONDITION;
    INFORMATION = DIA_DENNIS_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Teach me.";
}

func int DIA_DENNIS_TRAIN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0xfd9c)) && ((SQ225_FINISHWAY) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_TRAIN_CHOICES() {
    DENNIS_GOLDCOST = 15;
    DENNIS_CURRENT2HLEVEL = OTHER.AIVAR[85];
    DENNIS_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    INFO_CLEARCHOICES(0xfda3);
    INFO_ADDCHOICE(0xfda3, DIALOG_BACK, 0xfda8);
    INFO_ADDCHOICE(0xfda3, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), DENNIS_GOLDCOST), 0xfda9);
    INFO_ADDCHOICE(0xfda3, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 5), (DENNIS_GOLDCOST) * (5)), 0xfdaa);
    INFO_ADDCHOICE(0xfda3, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), DENNIS_GOLDCOST), 0xfdab);
    INFO_ADDCHOICE(0xfda3, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (DENNIS_GOLDCOST) * (5)), 0xfdac);
}

var int DIA_DENNIS_TRAIN_CHOICES.DENNIS_GOLDCOST = 0;
func void DIA_DENNIS_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dennis_Train_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_03_01");
    DIA_DENNIS_TRAIN_CHOICES();
}

func void DIA_DENNIS_TRAIN_BACK() {
    if ((((OTHER.AIVAR[85]) < (40)) && ((OTHER.AIVAR[85]) >= (15))) || (((OTHER.AIVAR[81]) < (60)) && ((OTHER.AIVAR[81]) >= (25)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_Back_03_00");
    };
    if (((OTHER.AIVAR[85]) >= (40)) && ((OTHER.AIVAR[81]) >= (60))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_Back_03_01");
        DENNIS_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(0xfda3);
}

func void DIA_DENNIS_TRAIN_2H_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DENNIS_PAYMENT1)) {
        if ((DENNIS_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DENNIS_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 0x859b, DENNIS_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 40);
        DIA_DENNIS_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DENNIS_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_2H1_03_01");
        DENNIS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DENNIS_PAYMENT1));
        PRINTSCREEN(DENNIS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DENNIS_TRAIN_CHOICES();
    };
}

func void DIA_DENNIS_TRAIN_2H_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DENNIS_PAYMENT5)) {
        if ((DENNIS_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DENNIS_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 0x859b, DENNIS_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 40);
        DIA_DENNIS_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DENNIS_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_2H5_03_01");
        DENNIS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DENNIS_PAYMENT5));
        PRINTSCREEN(DENNIS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DENNIS_TRAIN_CHOICES();
    };
}

func void DIA_DENNIS_TRAINSTR_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DENNIS_PAYMENT1)) {
        if ((DENNIS_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DENNIS_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 0x859b, DENNIS_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 60);
        DIA_DENNIS_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DENNIS_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_STR1_03_00");
        DENNIS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DENNIS_PAYMENT1));
        PRINTSCREEN(DENNIS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DENNIS_TRAIN_CHOICES();
    };
}

func void DIA_DENNIS_TRAINSTR_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DENNIS_PAYMENT5)) {
        if ((DENNIS_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DENNIS_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 0x859b, DENNIS_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 60);
        DIA_DENNIS_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DENNIS_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Train_STR5_03_00");
        DENNIS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DENNIS_PAYMENT5));
        PRINTSCREEN(DENNIS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DENNIS_TRAIN_CHOICES();
    };
}

instance DIA_DENNIS_AMBIENT(C_INFO) {
    NPC = 0xded0;
    NR = 998;
    CONDITION = DIA_DENNIS_AMBIENT_CONDITION;
    INFORMATION = DIA_DENNIS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_DENNIS_AMBIENT_CONDITION() {
    if ((SQ225_FINISHWAY) == (0)) {
        if (((SQ225_FIGHTINVINEYARD_HOLDWIG) >= (1)) || ((SQ225_FIGHTINVINEYARD) >= (1))) {
            return FALSE;
        };
        if (NPC_KNOWSINFO(OTHER, 0xfd75)) {
            return TRUE;
        };
    };
    if (NPC_KNOWSINFO(OTHER, 0xfd75)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((SQ116_CANTALKWITHHOLDWIG) != (1)) && ((SQ225_FINISHWAY) < (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Ambient_03_01");
    };
    if (((SQ116_CANTALKWITHHOLDWIG) == (1)) && ((SQ225_FINISHWAY) < (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Ambient_03_02");
    };
    if ((SQ225_FINISHWAY) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Ambient_03_03");
    };
    if ((SQ225_FINISHWAY) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Ambient_03_04");
    };
    if ((SQ225_FINISHWAY) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dennis_Ambient_03_05");
    };
}

instance DIA_DENNIS_PICKPOCKET(C_INFO) {
    NPC = 0xded0;
    NR = 900;
    CONDITION = DIA_DENNIS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DENNIS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_DENNIS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DENNIS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0xfdb0);
    INFO_ADDCHOICE(0xfdb0, DIALOG_BACK, 0xfdb4);
    INFO_ADDCHOICE(0xfdb0, DIALOG_PICKPOCKET, 0xfdb3);
}

func void DIA_DENNIS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x84c4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84c4, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0xfdb0);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0xfdb0);
}

func void DIA_DENNIS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0xfdb0);
}

