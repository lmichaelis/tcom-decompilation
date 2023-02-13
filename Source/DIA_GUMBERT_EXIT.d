instance DIA_GUMBERT_EXIT(C_INFO) {
    NPC = 57053;
    NR = 999;
    CONDITION = DIA_GUMBERT_EXIT_CONDITION;
    INFORMATION = DIA_GUMBERT_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GUMBERT_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GUMBERT_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GUMBERT_HELLO(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_HELLO_CONDITION;
    INFORMATION = DIA_GUMBERT_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_GUMBERT_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_GUMBERT_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_HELLO_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_HELLO_03_03");
}

instance DIA_GUMBERT_BOSS(C_INFO) {
    NPC = 57053;
    NR = 10;
    CONDITION = DIA_GUMBERT_BOSS_CONDITION;
    INFORMATION = DIA_GUMBERT_BOSS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who's the boss here?";
}

func int DIA_GUMBERT_BOSS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 64952)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_BOSS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Boss_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Boss_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Boss_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Boss_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Boss_03_05");
    AI_STARTFACEANI(OTHER, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Boss_15_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Boss_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GUMBERT_VINEYARD(C_INFO) {
    NPC = 57053;
    NR = 900;
    CONDITION = DIA_GUMBERT_VINEYARD_CONDITION;
    INFORMATION = DIA_GUMBERT_VINEYARD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the situation in the vineyard?";
}

func int DIA_GUMBERT_VINEYARD_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 64952)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int GUMBERT_SQ225_BONUSREWARD;
var int GUMBERT_SQ225_OPINION;
func void DIA_GUMBERT_VINEYARD_GOODENOUGH() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Vineyard_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_04");
}

func void DIA_GUMBERT_VINEYARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Vineyard_15_01");
    if ((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) {
        if (((LOG_GETSTATUS(MIS_SQ116)) != (LOG_SUCCESS)) || (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_ANDERASWAY_COUNT) >= (1)))) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_05");
        } else {
            DIA_GUMBERT_VINEYARD_GOODENOUGH();
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) {
        if ((SQ225_FINISHWAY) == (1)) {
            DIA_GUMBERT_VINEYARD_GOODENOUGH();
        } else if ((SQ225_FINISHWAY) == (2)) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_06");
            AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_Vineyard_15_07");
            AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_08");
        } else if ((SQ225_FINISHWAY) == (3)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_09");
            if ((GUMBERT_SQ225_BONUSREWARD) == (FALSE)) {
                GUMBERT_SQ225_BONUSREWARD = TRUE;
                AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_Vineyard_03_10");
                CREATEINVITEMS(SELF, 33984, 1);
                B_GIVEINVITEMS(SELF, OTHER, 33984, 1);
                B_GIVEPLAYERXP(XP_SQ225_GUMBERTBONUSEXP);
            };
        };
    };
    if ((GUMBERT_SQ225_OPINION) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) {
            if ((NPC_KNOWSINFO(OTHER, 65143)) || (NPC_KNOWSINFO(OTHER, 72177))) {
                AI_FUNCTION(SELF, 42059);
                GUMBERT_SQ225_OPINION = TRUE;
            };
        };
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_GUMBERT_SQ116_SEARCHHOLDWIG(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_SEARCHHOLDWIG_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_SEARCHHOLDWIG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for Holdwig.";
}

func int DIA_GUMBERT_SQ116_SEARCHHOLDWIG_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_WHEREISHOLDWIG_LOGENTRY) == (FALSE))) && ((SQ116_TAKEKURTGOLD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_SEARCHHOLDWIG_INFO() {
    B_SAY(OTHER, SELF, "$SQ116_Marvin_SearchHoldwig");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_SearchHoldwig_03_02");
    SQ116_WHEREISHOLDWIG();
}

instance DIA_GUMBERT_SQ116_HOLDWIG(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_HOLDWIG_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_HOLDWIG_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ASKABOUTHOLDWIG;
}

var int GUMBERT_SQ116_HOLDWIG_STRANGE;
var int GUMBERT_SQ116_HOLDWIG_POISON;
var int GUMBERT_SQ116_HOLDWIG_KITCHEN;
func int DIA_GUMBERT_SQ116_HOLDWIG_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 64891)) && ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING))) {
        if ((((GUMBERT_SQ116_HOLDWIG_POISON) == (0)) || ((GUMBERT_SQ116_HOLDWIG_STRANGE) == (0))) || ((GUMBERT_SQ116_HOLDWIG_KITCHEN) == (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_HOLDWIG_CHOICES() {
    INFO_CLEARCHOICES(64967);
    INFO_ADDCHOICE(64967, DIALOG_BACK, 64975);
    if ((GUMBERT_SQ116_HOLDWIG_STRANGE) == (FALSE)) {
        INFO_ADDCHOICE(64967, "Have you seen anything suspicious in the area?", 64976);
    };
    if ((SQ116_GUMBERTWAY_BLOCK) == (FALSE)) {
        if ((GUMBERT_SQ116_HOLDWIG_POISON) == (FALSE)) {
            INFO_ADDCHOICE(64967, "As a cook, you are responsible for the food on the vineyard...", 64977);
        } else if ((GUMBERT_SQ116_HOLDWIG_KITCHEN) == (FALSE)) {
            INFO_ADDCHOICE(64967, "Let's check out the kitchen.", 64978);
        };
    };
}

func void DIA_GUMBERT_SQ116_HOLDWIG_INFO() {
    var int GUMBERT_SQ116_HOLDWIG_FIRSTDIALOGUE;
    if ((GUMBERT_SQ116_HOLDWIG_FIRSTDIALOGUE) == (FALSE)) {
        GUMBERT_SQ116_HOLDWIG_FIRSTDIALOGUE = TRUE;
        AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Holdwig_15_00");
        AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_04_00");
    };
    DIA_GUMBERT_SQ116_HOLDWIG_CHOICES();
}

func void DIA_GUMBERT_SQ116_HOLDWIG_BACK() {
    INFO_CLEARCHOICES(64967);
}

func void DIA_GUMBERT_SQ116_HOLDWIG_STRANGE() {
    GUMBERT_SQ116_HOLDWIG_STRANGE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Holdwig_Strange_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Strange_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Strange_03_03");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Strange_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Strange_03_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Strange_03_06");
    INFO_CLEARCHOICES(64967);
    INFO_ADDCHOICE(64967, "What happened to that boy?", 64979);
}

func void DIA_GUMBERT_SQ116_HOLDWIG_POISON() {
    GUMBERT_SQ116_HOLDWIG_POISON = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Holdwig_Poison_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Poison_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Poison_03_03");
    DIA_GUMBERT_SQ116_HOLDWIG_CHOICES();
}

func void DIA_GUMBERT_SQ116_HOLDWIG_KITCHEN() {
    GUMBERT_SQ116_HOLDWIG_KITCHEN = TRUE;
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Holdwig_Kitchen_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_KITCHEN");
    SQ116_GUMBERT_RTNCHECK = 2;
    INFO_CLEARCHOICES(64967);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GUMBERT_SQ116_HOLDWIG_KITCHEN_WHERE() {
    SQ116_GUMBERTINFORMATIONS_THERRY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Holdwig_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Holdwig_Where_03_03");
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_GUMBERT_HOMELESS);
    if ((SQ116_KNOWTERRYNAME) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_GUMBERT_HOMELESS_NAME);
    };
    DIA_GUMBERT_SQ116_HOLDWIG_CHOICES();
}

instance DIA_GUMBERT_SQ116_KITCHENSEARCH(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_KITCHENSEARCH_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_KITCHENSEARCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ116_KITCHENSEARCH_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((GUMBERT_SQ116_HOLDWIG_KITCHEN) == (TRUE))) && ((NPC_GETDISTTOWP(SELF, "PART9_VINEYARD_KITCHEN_01")) <= (350))) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_KITCHENSEARCH_INFO() {
    SELF.AIVAR[15] = FALSE;
    MOB_CHANGEFOCUSNAME("SQ116_CAULDRON", "MOBNAME_SQ116_CAULDRON");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_KitchenSearch_03_01");
    MOB_CHANGEFOCUSNAME("SQ116_SACK", "MOBNAME_SQ116_BOOKS");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_KITCHEN_OBSERVE");
    SQ116_GUMBERT_RTNCHECK = 3;
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_GUMBERT_SHOWKITCHEN);
}

instance DIA_GUMBERT_SQ116_PANTRY(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_PANTRY_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_PANTRY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What about the pantry?";
}

func int DIA_GUMBERT_SQ116_PANTRY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_KITCHEN_COUNT) == (2))) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_PANTRY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Pantry_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Pantry_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Pantry_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Pantry_03_04");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_GUMBERT_PLAN);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_PLAN");
    SQ116_GUMBERT_RTNCHECK = 1;
}

instance DIA_GUMBERT_SQ116_TIMETOSEARCH(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_TIMETOSEARCH_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_TIMETOSEARCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ116_TIMETOSEARCH_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 64983))) && (WLD_ISTIME(20, 0, 4, 0))) && ((NPC_GETDISTTOWP(SELF, "PART9_VINEYARD_LEAN_01")) <= (600))) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_TIMETOSEARCH_INFO() {
    SQ116_CHECKKITCHENWITHGUMBERT = TRUE;
    MOB_CHANGEFOCUSNAME("SQ116_CHEST", "MOBNAME_SQ116_CHEST");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TimeToSearch_03_01");
    MOB_CHANGEFOCUSNAME("SQ116_VINEBOTTLES", "MOBNAME_SQ116_VINES");
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_TimeToSearch_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TimeToSearch_03_03");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_SEARCH");
    SQ116_GUMBERT_RTNCHECK = 4;
}

instance DIA_GUMBERT_SQ116_SEARCH(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_SEARCH_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_SEARCH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ116_SEARCH_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 64986))) && ((SQ116_KITCHEN_COUNT) == (4))) && (NPC_ISINSTATE(SELF, 61599))) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void GUMBERT_SQ116_TESTVINE() {
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(SELF);
    AI_RESETFACEANI(SELF);
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 36098, 1);
    AI_USEITEM(SELF, 36098);
}

func void MARVIN_SQ116_TESTVINE() {
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_REMOVEWEAPON(OTHER);
    AI_RESETFACEANI(OTHER);
    AI_STOPLOOKAT(OTHER);
    CREATEINVITEMS(OTHER, 36098, 1);
    AI_USEITEM(OTHER, 36098);
}

func void DIA_GUMBERT_SQ116_SEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    CREATEINVITEMS(SELF, 36097, 1);
    AI_USEITEMTOSTATE(SELF, 36097, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_05");
    AI_USEITEMTOSTATE(SELF, 36097, -(1));
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_06");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_07");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_09");
    GUMBERT_SQ116_TESTVINE();
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_12");
    AI_RESETFACEANI(SELF);
    MARVIN_SQ116_TESTVINE();
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Search_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_15");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Search_03_17");
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_GUMBERT_DRNIKEVERYTHING);
    AI_FUNCTION(SELF, 62306);
    NPC_EXCHANGEROUTINE(SELF, "SQ116_DRINK");
    SQ116_GUMBERT_RTNCHECK = 5;
}

instance DIA_GUMBERT_SQ116_TRYTHISONE(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ116_TRYTHISONE_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_TRYTHISONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ116_TRYTHISONE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_TESTVINE_COUNT) == (3))) && (NPC_KNOWSINFO(OTHER, 64989))) && ((SQ116_GUMBERTWAY_BLOCK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_TRYTHISONE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_01");
    MARVIN_SQ116_TESTVINE();
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_TryThisOne_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_04");
    GUMBERT_SQ116_TESTVINE();
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_06");
    MARVIN_SQ116_TESTVINE();
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 64997);
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_TryThisOne_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_TryThisOne_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_TryThisOne_15_09");
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 64998);
    AI_PLAYANI(OTHER, "T_WOUNDEDB_START");
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(SELF);
}

func void GUMBERT_SQ116_APPLYDRUNKEN() {
    MDL_APPLYOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
}

func void GUMBERT_SQ116_FADE() {
    FADESCREENTOBLACKF(2, 64999, 1000);
}

func void GUMBERT_SQ116_FADESCREEN() {
    B_STARTOTHERROUTINE(BAU_2243_GUMBERT, START);
    B_STARTOTHERROUTINE(BAU_2242_DENNIS, "SQ116_TALK");
    B_PASSTIME(4);
    MDL_REMOVEOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
    AI_PLAYANI(HERO, "T_WOUNDEDB_START");
    AI_FUNCTION(HERO, 65000);
}

func void GUMBERT_SQ116_FADESCREEN_REMOVE() {
    AI_PLAYANI(HERO, "T_WOUNDEDB_REMOVE");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

instance DIA_GUMBERT_SQ116_SICK(C_INFO) {
    NPC = 57053;
    NR = 15;
    CONDITION = DIA_GUMBERT_SQ116_SICK_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ116_SICK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "No one gets sick anymore?";
}

func int DIA_GUMBERT_SQ116_SICK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_SUCCESS)) && (NPC_KNOWSINFO(OTHER, 64952))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ116_SICK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ116_Sick_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ116_Sick_03_02");
    B_GIVEPLAYERXP(XP_SQ116_GUMBERTBONUSEXP);
}

instance DIA_GUMBERT_SQ127_START(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ127_START_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you find me a job?";
}

func int DIA_GUMBERT_SQ127_START_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 64952)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Start_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Start_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Start_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Start_03_06");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_SQ127, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ127), TOPIC_SQ127, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ127, LOG_SQ127_START);
}

instance DIA_GUMBERT_SQ127_GRAPE(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ127_GRAPE_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_GRAPE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I brought the grapes.";
}

func int DIA_GUMBERT_SQ127_GRAPE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 36361)) >= (24))) && ((SQ116_CHECKKITCHENWITHGUMBERT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_GRAPE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Grape_15_01");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_03_02");
    NPC_REMOVEINVITEMS(SELF, 36361, 24);
    CREATEINVITEMS(SELF, 34203, SQ127_GUMBERTREWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ127_GUMBERTREWARD);
    CREATEINVITEMS(SELF, 33988, 4);
    B_GIVEINVITEMS(SELF, OTHER, 33988, 4);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_GIVEINVITEMS(OTHER, SELF, 36361, 24);
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Grape_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_03_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_03_05");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 36361, 1);
    AI_USEITEM(SELF, 36361);
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_03_06");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_03_07");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(65007);
    INFO_ADDCHOICE(65007, "I don't have time right now...", 65011);
    INFO_ADDCHOICE(65007, "My own wine? I'm in!", 65010);
}

func void DIA_GUMBERT_SQ127_GRAPE_SURE() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Grape_Sure_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_Sure_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_Sure_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Grape_Sure_03_04");
    AI_LOGENTRY(TOPIC_SQ127, LOG_SQ127_GUMBERT_APPELS);
    INFO_CLEARCHOICES(65007);
}

func void DIA_GUMBERT_SQ127_GRAPE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Grape_No_15_01");
    B_LOGENTRY(TOPIC_SQ127, LOG_SQ127_FINISH_V1);
    LOG_SETSTATUS(_@(MIS_SQ127), TOPIC_SQ127, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ127_FINISH_V1);
    INFO_CLEARCHOICES(65007);
    RESTOREROUTINE_GUMBERT();
}

instance DIA_GUMBERT_SQ127_APPELS(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ127_APPELS_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_APPELS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have those apples.";
}

func int DIA_GUMBERT_SQ127_APPELS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 33964)) >= (10))) && (NPC_KNOWSINFO(OTHER, 65007))) && ((SQ116_CHECKKITCHENWITHGUMBERT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_APPELS_INFO() {
    SQ127_WORKWITHGUMBERT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Appels_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Appels_03_02");
    NPC_REMOVEINVITEMS(SELF, 33964, 10);
    B_STANDUP();
    B_GIVEINVITEMS(OTHER, SELF, 33964, 10);
    AI_STOPLOOKAT(SELF);
    CREATEINVITEMS(SELF, 33964, 1);
    AI_USEITEM(SELF, 33964);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Appels_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Appels_03_04");
    if ((NPC_HASITEMS(OTHER, 34174)) == (0)) {
        CREATEINVITEMS(SELF, 34174, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34174, 1);
    };
    AI_LOGENTRY(TOPIC_SQ127, LOG_SQ127_GUMBERT_GOTAPPELS);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "SQ127_WORK");
    SQ127_GUMBERT_RTNCHECK = 1;
}

instance DIA_GUMBERT_SQ127_AFTERWORK(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ127_AFTERWORK_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_AFTERWORK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ127_AFTERWORK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((SQ127_WORKWITHGUMBERT) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_AFTERWORK_INFO() {
    B_STANDUP();
    MOB_CHANGEFOCUSNAME("SQ127_VINEBOTTLES", "MOBNAME_SQ127_VINEBOTTLES");
    CREATEINVITEMS(SELF, 37016, 8);
    B_GIVEINVITEMS(SELF, OTHER, 37016, 8);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_AfterWork_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_AfterWork_15_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_AfterWork_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_AfterWork_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_AfterWork_03_05");
    AI_LOGENTRY(TOPIC_SQ127, LOG_SQ127_GUMBERT_AFTERWORK);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ127_LIST");
    SQ127_GUMBERT_RTNCHECK = 2;
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GUMBERT_SQ127_FINISH(C_INFO) {
    NPC = 57053;
    NR = DIALOG_ANSWER_NR;
    CONDITION = DIA_GUMBERT_SQ127_FINISH_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ127_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) && ((SQ127_WORKWITHGUMBERT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_FINISH_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_03_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_03_03");
    INFO_CLEARCHOICES(65018);
    INFO_ADDCHOICE(65018, "Maybe it's better if you're the one to do it.", 65022);
    INFO_ADDCHOICE(65018, "Actually, I have a few ideas...", 65023);
}

func void DIA_GUMBERT_SQ127_FINISH_NEXT() {
    SQ127_WAITINGTIME = KAPITEL;
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_Next_03_01");
    AI_LOGENTRY(TOPIC_SQ127, LOG_SQ127_FINISH_V2);
    LOG_SETSTATUS(_@(MIS_SQ127), TOPIC_SQ127, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ127_FINISH_V2);
    INFO_CLEARCHOICES(65018);
    LOG_CREATETOPIC(TOPIC_OURVINE, LOG_NOTE);
    AI_LOGENTRY(TOPIC_OURVINE, LOG_OURVINE_START);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    RESTOREROUTINE_GUMBERT();
}

func void DIA_GUMBERT_SQ127_FINISH_NO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finish_No_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_No_03_02");
    DIA_GUMBERT_SQ127_FINISH_NEXT();
}

func void DIA_GUMBERT_SQ127_FINISH_YES() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finish_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finish_Yes_03_02");
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPLOOKAT(OTHER);
    CREATEINVITEMS(OTHER, 35375, 1);
    AI_EQUIPARMOR(OTHER, 35375);
    AI_PLAYANI(OTHER, "T_SCROLL_TAKE");
    AI_FUNCTION(OTHER, 65035);
    AI_WAIT(OTHER, 1045220557);
    INFO_CLEARCHOICES(65018);
    INFO_ADDCHOICE(65018, CHOICE_ANSWER_NAME_WINE, 65033);
}

func void FILLVINENAME(var string NAME) {
    ITMIS_SQ127_VINE_READY_HASPLAYERNAME = TRUE;
    ITMIS_SQ127_VINE_READY_PLAYERNAME = NAME;
    ITMIS_SQ127_VINE_READY.NAME = NAME;
    ITMIS_SQ127_VINE_READY.DESCRIPTION = NAME;
}

func void SETVINENAME(var string NAME) {
    var PERSISTENTSTRINGS DATA;
    var int HANDLE;
    HANDLE = GETPERSISTENTSTRINGSHANDLE();
    DATA = GET(HANDLE);
    DATA.VINENAME = NAME;
    FILLVINENAME(NAME);
}

func void GUMBERT_SQ127_SCROLLREAD_HEROUNWEAR_SCROLL() {
    NPC_REMOVEINVITEMS(HERO, 35375, 1);
}

func void GUMBERT_SQ127_SCROLLREAD_APPLYMDS() {
    MDL_APPLYOVERLAYMDS(HERO, "HumanS_Scroll.MDS");
}

func void GUMBERT_SQ127_SCROLLREAD_REMOVEMDS() {
    MDL_REMOVEOVERLAYMDS(HERO, "HumanS_Scroll.MDS");
}

instance DIA_GUMBERT_SQ127_VINEREADY(C_INFO) {
    NPC = 57053;
    NR = 90;
    CONDITION = DIA_GUMBERT_SQ127_VINEREADY_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_VINEREADY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Is the wine ready yet?";
}

func int DIA_GUMBERT_SQ127_VINEREADY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ127)) == (LOG_SUCCESS)) && (((KAPITEL) >= ((SQ127_WAITINGTIME) + (2))) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65040)) == (FALSE))) && ((SQ127_WORKWITHGUMBERT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_VINEREADY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_VineReady_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_VineReady_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GUMBERT_SQ127_FINALLY(C_INFO) {
    NPC = 57053;
    NR = 1;
    CONDITION = DIA_GUMBERT_SQ127_FINALLY_CONDITION;
    INFORMATION = DIA_GUMBERT_SQ127_FINALLY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GUMBERT_SQ127_FINALLY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ127)) == (LOG_SUCCESS)) && (((KAPITEL) >= ((SQ127_WAITINGTIME) + (2))) == (TRUE))) && ((SQ127_WORKWITHGUMBERT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_SQ127_FINALLY_INFO() {
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_03_01");
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_03_03");
    CREATEINVITEMS(SELF, 37019, 2);
    B_GIVEINVITEMS(SELF, OTHER, 37019, 1);
    AI_REMOVEWEAPON(OTHER);
    AI_RESETFACEANI(OTHER);
    AI_STOPLOOKAT(OTHER);
    AI_STOPLOOKAT(SELF);
    AI_WAITTILLEND(OTHER, SELF);
    AI_USEITEM(OTHER, 37019);
    AI_USEITEM(SELF, 37019);
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_03_04");
    INFO_CLEARCHOICES(65040);
    INFO_ADDCHOICE(65040, "How many bottles do you have to share?", 65043);
}

func void DIA_GUMBERT_SQ127_FINALLY_MANY() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finally_Many_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_Many_03_02");
    INFO_CLEARCHOICES(65040);
    if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
        INFO_ADDCHOICE(65040, "Could I get a wine rack like this at your place?", 65046);
    };
    INFO_ADDCHOICE(65040, "(Take the wine)", 65045);
}

func void DIA_GUMBERT_SQ127_FINALLY_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_Next_03_01");
    INFO_CLEARCHOICES(65040);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_GUMBERT_SQ127_FINALLY_MANY_TAKE() {
    CREATEINVITEMS(SELF, 37019, 5);
    B_GIVEINVITEMS(SELF, OTHER, 37019, 5);
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finally_Take_15_01");
    LOG_CREATETOPIC(TOPIC_OURVINE, LOG_NOTE);
    AI_LOGENTRY(TOPIC_OURVINE, LOG_OURVINE_GOTVINE);
    DIA_GUMBERT_SQ127_FINALLY_NEXT();
}

func void DIA_GUMBERT_SQ127_FINALLY_MANY_HOME() {
    SQ127_VINETOHOME = 1;
    SQ127_VINETOHOME_DAY = WLD_GETDAY();
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finally_Home_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_Home_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finally_Home_15_03");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gumbert_SQ127_Finally_Home_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Gumbert_SQ127_Finally_Home_15_05");
    LOG_CREATETOPIC(TOPIC_OURVINE, LOG_NOTE);
    AI_LOGENTRY(TOPIC_OURVINE, LOG_OURVINE_HOMEVINE);
    GUMBERT_SQ127_APPLYFUNCION();
    DIA_GUMBERT_SQ127_FINALLY_NEXT();
}

instance DIA_GUMBERT_TRADE(C_INFO) {
    NPC = 57053;
    NR = 800;
    CONDITION = DIA_GUMBERT_TRADE_CONDITION;
    INFORMATION = DIA_GUMBERT_TRADE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Show me your wares.";
    TRADE = TRUE;
}

func int DIA_GUMBERT_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 64952)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_TRADE_INFO() {
    var int GUMBERT_TRADE_CHECKINFO;
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
    if ((GUMBERT_TRADE_CHECKINFO) == (FALSE)) {
        GUMBERT_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_OTHERTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_OTHERTRADER, LOG_TRADER_VALERIO_GUMBERT);
    };
}

instance DIA_GUMBERT_PICKPOCKET(C_INFO) {
    NPC = 57053;
    NR = 900;
    CONDITION = DIA_GUMBERT_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GUMBERT_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_GUMBERT_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUMBERT_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(65051);
    INFO_ADDCHOICE(65051, DIALOG_BACK, 65055);
    INFO_ADDCHOICE(65051, DIALOG_PICKPOCKET, 65054);
}

func void DIA_GUMBERT_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 35986, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35986, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(65051);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(65051);
}

func void DIA_GUMBERT_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(65051);
}

