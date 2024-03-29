instance DIA_LIAM_EXIT(C_INFO) {
    NPC = 57028;
    NR = 999;
    CONDITION = DIA_LIAM_EXIT_CONDITION;
    INFORMATION = DIA_LIAM_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LIAM_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LIAM_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LIAM_FARM(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_FARM_CONDITION;
    INFORMATION = DIA_LIAM_FARM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about the farm.";
}

func int DIA_LIAM_FARM_CONDITION() {
    return TRUE;
}

func void DIA_LIAM_FARM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_Farm_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Farm_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Farm_03_03");
    if (((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q308)) < (1))) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (0))) && ((SQ225_FIGHTINVINEYARD) == (0))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Farm_03_04");
    };
}

instance DIA_LIAM_TELLMEABOUT(C_INFO) {
    NPC = 57028;
    NR = 90;
    CONDITION = DIA_LIAM_TELLMEABOUT_CONDITION;
    INFORMATION = DIA_LIAM_TELLMEABOUT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Tell me about...";
}

var int LIAM_TELLMEABOUT_HOLDWIG;
var int LIAM_TELLMEABOUT_ANDREAS;
func int DIA_LIAM_TELLMEABOUT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 80609)) {
        if (((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q308)) < (1))) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (0))) && ((SQ225_FIGHTINVINEYARD) == (0))) {
            if (((LIAM_TELLMEABOUT_HOLDWIG) == (FALSE)) || ((LIAM_TELLMEABOUT_ANDREAS) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_TELLMEABOUT_CHOICES() {
    INFO_CLEARCHOICES(80612);
    INFO_ADDCHOICE(80612, DIALOG_BACK, 80618);
    if ((LIAM_TELLMEABOUT_HOLDWIG) == (FALSE)) {
        INFO_ADDCHOICE(80612, "Holdwig.", 80620);
    };
    if ((LIAM_TELLMEABOUT_ANDREAS) == (FALSE)) {
        INFO_ADDCHOICE(80612, "Andreas.", 80619);
    };
}

func void DIA_LIAM_TELLMEABOUT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeAbout_15_01");
    DIA_LIAM_TELLMEABOUT_CHOICES();
}

func void DIA_LIAM_TELLMEABOUT_BACK() {
    INFO_CLEARCHOICES(80612);
}

func void DIA_LIAM_TELLMEABOUT_ANDREAS() {
    LIAM_TELLMEABOUT_ANDREAS = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeAbout_Andreas_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Andreas_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Andreas_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Andreas_03_04");
    DIA_LIAM_TELLMEABOUT_CHOICES();
}

func void DIA_LIAM_TELLMEABOUT_HOLDWIG() {
    LIAM_TELLMEABOUT_HOLDWIG = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeAbout_Holdwig_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Holdwig_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Holdwig_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeAbout_Holdwig_03_04");
    DIA_LIAM_TELLMEABOUT_CHOICES();
}

instance DIA_LIAM_AMBIENT(C_INFO) {
    NPC = 57028;
    NR = 950;
    CONDITION = DIA_LIAM_AMBIENT_CONDITION;
    INFORMATION = DIA_LIAM_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LIAM_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 80609)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int LIAM_AMBIENT_OPTION1;
var int LIAM_AMBIENT_OPTION2;
var int LIAM_AMBIENT_OPTION3;
func void DIA_LIAM_AMBIENT_INFO() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q308)) < (1))) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (0))) && ((SQ225_FIGHTINVINEYARD) == (0))) {
        NPC_INITAMBIENTS(SELF, 3);
    };
    NPC_INITAMBIENTS(SELF, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_Ambient_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        LIAM_AMBIENT_OPTION2 = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_05");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        LIAM_AMBIENT_OPTION3 = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_10");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        LIAM_AMBIENT_OPTION1 = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_LIAM_HOW(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_HOW_CONDITION;
    INFORMATION = DIA_LIAM_HOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How do you know so much about the farm?";
}

func int DIA_LIAM_HOW_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q308)) < (1))) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (0))) && ((SQ225_FIGHTINVINEYARD) == (0))) {
        if ((((LIAM_AMBIENT_OPTION1) == (TRUE)) && ((LIAM_AMBIENT_OPTION2) == (TRUE))) && ((LIAM_AMBIENT_OPTION3) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_HOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_How_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_How_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_How_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_How_03_04");
}

instance DIA_LIAM_TELLMEMORE(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_TELLMEMORE_CONDITION;
    INFORMATION = DIA_LIAM_TELLMEMORE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you tell me more about the brothers' conflict?";
}

var int LIAM_TELLMEMORE_HOWMUCH;
var int LIAM_TELLMEMORE_WHAT;
var int LIAM_TELLMEMORE_CHANCE;
var int LIAM_TELLMEMORE_DEATH;
func int DIA_LIAM_TELLMEMORE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q308)) < (1))) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (0))) && ((SQ225_FIGHTINVINEYARD) == (0))) {
        if ((NPC_KNOWSINFO(OTHER, 80627)) && ((SQ225_MARVINKNOWABOUTLIAM) == (1))) {
            if (((((LIAM_TELLMEMORE_DEATH) == (FALSE)) || ((LIAM_TELLMEMORE_CHANCE) == (FALSE))) || ((LIAM_TELLMEMORE_WHAT) == (FALSE))) || ((LIAM_TELLMEMORE_HOWMUCH) == (FALSE))) {
                if (((SQ225_GERHARD_WAITFORACTION) == (0)) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_TELLMEMORE_CHOICES() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(80630);
    INFO_ADDCHOICE(80630, DIALOG_BACK, 80638);
    if ((LIAM_TELLMEMORE_DEATH) == (FALSE)) {
        INFO_ADDCHOICE(80630, "Can you tell me about Valerio's death?", 80642);
    };
    if ((LIAM_TELLMEMORE_CHANCE) == (FALSE)) {
        INFO_ADDCHOICE(80630, "Any chance of the brothers reconciling?", 80641);
    };
    if ((LIAM_TELLMEMORE_WHAT) == (FALSE)) {
        INFO_ADDCHOICE(80630, "What was it that drove the brothers apart?", 80640);
    };
    if ((LIAM_TELLMEMORE_HOWMUCH) == (FALSE)) {
        INFO_ADDCHOICE(80630, "Do you know a lot about Valerio's sons?", 80639);
    };
}

func void DIA_LIAM_TELLMEMORE_INFO() {
    SQ225_MARVINKNOWABOUTLIAM = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeMore_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_03_02");
    DIA_LIAM_TELLMEMORE_CHOICES();
}

func void DIA_LIAM_TELLMEMORE_BACK() {
    INFO_CLEARCHOICES(80630);
}

func void DIA_LIAM_TELLMEMORE_HOWMUCH() {
    LIAM_TELLMEMORE_HOWMUCH = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeMore_HowMuch_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_HowMuch_03_02");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_HowMuch_03_03");
    DIA_LIAM_TELLMEMORE_CHOICES();
}

func void DIA_LIAM_TELLMEMORE_WHAT() {
    LIAM_TELLMEMORE_WHAT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeMore_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_What_03_05");
    DIA_LIAM_TELLMEMORE_CHOICES();
}

func void DIA_LIAM_TELLMEMORE_CHANCE() {
    LIAM_TELLMEMORE_CHANCE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeMore_Chance_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Chance_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Chance_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Chance_03_04");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Chance_03_05");
    DIA_LIAM_TELLMEMORE_CHOICES();
}

func void DIA_LIAM_TELLMEMORE_DEATH() {
    LIAM_TELLMEMORE_DEATH = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_TellMeMore_Death_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Death_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Death_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Death_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Death_03_05");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_TellMeMore_Death_03_06");
    DIA_LIAM_TELLMEMORE_CHOICES();
}

instance DIA_LIAM_SQ225_OPINION(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ225_OPINION_CONDITION;
    INFORMATION = DIA_LIAM_SQ225_OPINION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you think of Andreas and Holdwig's conflict?";
}

func int DIA_LIAM_SQ225_OPINION_CONDITION() {
    if (((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65143))) && ((SQ225_MARVINKNOWABOUTLIAM) == (0))) && ((NPC_KNOWSINFO(OTHER, 73879)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) && ((SQ225_FIGHTINVINEYARD_BLOCKFASTTRAVEL) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ225_OPINION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Opinion_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Opinion_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Opinion_03_03");
    AI_RESETFACEANI(SELF);
    AI_FUNCTION(SELF, 42059);
}

instance DIA_LIAM_SQ225_HELP(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ225_HELP_CONDITION;
    INFORMATION = DIA_LIAM_SQ225_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What if someone did the missing paperwork?";
}

func int DIA_LIAM_SQ225_HELP_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_MARVINKNOWABOUTLIAM) == (2))) && ((NPC_KNOWSINFO(OTHER, 73879)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) && ((SQ225_FIGHTINVINEYARD_BLOCKFASTTRAVEL) == (0))) {
        if (((LIAM_TELLMEMORE_HOWMUCH) == (TRUE)) && ((LIAM_TELLMEMORE_DEATH) == (TRUE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int LIAM_SQ225_TESTAMENTWAIT_DAY;
var int LIAM_SQ225_TESTAMENTWAIT;
func void DIA_LIAM_SQ225_HELP_INFO() {
    LIAM_SQ225_TESTAMENTWAIT = TRUE;
    LIAM_SQ225_TESTAMENTWAIT_DAY = WLD_GETDAY();
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_01");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_03");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_08");
    B_STANDUP();
    AI_PLAYANI(SELF, T_STAND_2_COUNTING);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_12");
    AI_PLAYANI(SELF, T_COUNTING_2_STAND);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_13");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_14");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_Help_03_15");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_Help_15_16");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_LIAM_TESTAMENT);
}

instance DIA_LIAM_SQ225_TESTAMENTREADY(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ225_TESTAMENTREADY_CONDITION;
    INFORMATION = DIA_LIAM_SQ225_TESTAMENTREADY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you prepared the template?";
}

func int DIA_LIAM_SQ225_TESTAMENTREADY_CONDITION() {
    if (((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((LIAM_SQ225_TESTAMENTWAIT) == (1))) && ((LIAM_SQ225_TESTAMENTWAIT_DAY) <= ((WLD_GETDAY()) - (1)))) && ((NPC_KNOWSINFO(OTHER, 73879)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) && ((SQ225_FIGHTINVINEYARD_BLOCKFASTTRAVEL) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ225_TESTAMENTREADY_INFO() {
    SQ225_VALERIOTESTAMENT = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_TestamentReady_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_TestamentReady_03_02");
    CREATEINVITEMS(SELF, 37090, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37090, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_TestamentReady_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_TestamentReady_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_TestamentReady_03_05");
    CREATEINVITEMS(SELF, 37087, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37087, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_TestamentReady_03_06");
    if (NPC_KNOWSINFO(OTHER, 76910)) {
        AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_LIAM_TESTAMENTREADY_VENZEL);
    };
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_LIAM_TESTAMENTREADY);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LIAM_SQ225_AFTERFIRECART(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ225_AFTERFIRECART_CONDITION;
    INFORMATION = DIA_LIAM_SQ225_AFTERFIRECART_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LIAM_SQ225_AFTERFIRECART_CONDITION() {
    if (((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 72211))) && ((SQ225_ANDERASWAY_FAILED) == (TRUE))) && ((NPC_KNOWSINFO(OTHER, 73879)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) && ((SQ225_FIGHTINVINEYARD_BLOCKFASTTRAVEL) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ225_AFTERFIRECART_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_AfterFireCart_15_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_AfterFireCart_15_04");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_AfterFireCart_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_AfterFireCart_03_09");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LIAM_SQ225_GOTTESTAMENT(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ225_GOTTESTAMENT_CONDITION;
    INFORMATION = DIA_LIAM_SQ225_GOTTESTAMENT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have the will.";
}

func int DIA_LIAM_SQ225_GOTTESTAMENT_CONDITION() {
    if ((((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_VALERIOTESTAMENT) == (1))) && ((NPC_KNOWSINFO(OTHER, 73879)) == (FALSE))) && ((NPC_KNOWSINFO(OTHER, 65171)) == (FALSE))) && ((SQ225_FIGHTINVINEYARD_BLOCKFASTTRAVEL) == (0))) {
        if (((NPC_HASITEMS(OTHER, 37096)) >= (1)) && ((NPC_HASITEMS(OTHER, 37087)) >= (1))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ225_GOTTESTAMENT_INFO() {
    SQ225_VALERIOTESTAMENT = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ225_GotTestament_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_GotTestament_03_02");
    NPC_REMOVEINVITEMS(SELF, 37087, 1);
    B_STANDUP();
    NPC_REMOVEINVITEMS(SELF, 37096, 1);
    B_USEFAKESCROLL();
    B_GIVEINVITEMS(OTHER, SELF, 37096, 1);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    B_GIVEINVITEMS(OTHER, SELF, 37087, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_GotTestament_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ225_GotTestament_03_04");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_LIAM_TESTAMENTDONE);
    B_GIVEPLAYERXP(XP_SQ225_HELPEDLIAM);
}

instance DIA_LIAM_SQ116_SEARCHHOLDWIG(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ116_SEARCHHOLDWIG_CONDITION;
    INFORMATION = DIA_LIAM_SQ116_SEARCHHOLDWIG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for Holdwig.";
}

func int DIA_LIAM_SQ116_SEARCHHOLDWIG_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_WHEREISHOLDWIG_LOGENTRY) == (FALSE))) && ((SQ116_TAKEKURTGOLD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ116_SEARCHHOLDWIG_INFO() {
    B_SAY(OTHER, SELF, "$SQ116_Marvin_SearchHoldwig");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ116_SearchHoldwig_03_02");
    SQ116_WHEREISHOLDWIG();
    AI_RESETFACEANI(SELF);
}

instance DIA_LIAM_SQ116_ASKHOLDWIG(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ116_ASKHOLDWIG_CONDITION;
    INFORMATION = DIA_LIAM_SQ116_ASKHOLDWIG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know anything about Holdwig's ailment?";
}

func int DIA_LIAM_SQ116_ASKHOLDWIG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 64891))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ116_ASKHOLDWIG_INFO() {
    B_SAY(OTHER, SELF, "$SQ116_Marvin_AskHoldwig");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ116_AskHoldwig_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ116_AskHoldwig_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ116_AskHoldwig_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_LIAM_SQ213(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ213_CONDITION;
    INFORMATION = DIA_LIAM_SQ213_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a matter for you.";
}

func int DIA_LIAM_SQ213_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 88165)) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) {
        if (((SQ213_VIKTORWAY) == (1)) || ((SQ213_BASTIANVINE) == (1))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ213_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_15_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_07");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_15_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_09");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_15_11");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_12");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_03_10");
    INFO_CLEARCHOICES(80666);
    INFO_ADDCHOICE(80666, "Should I know anything more about these snappers?", 80669);
}

func void DIA_LIAM_SQ213_SNAPPERS() {
    FF_APPLYONCEEXTGT(62555, 0, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_Snappers_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_Snappers_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_Snappers_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_Snappers_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_Snappers_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_Snappers_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213_Snappers_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213_Snappers_15_08");
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_LIAMSNAPPERS);
    INFO_CLEARCHOICES(80666);
}

instance DIA_LIAM_SNAPPERS(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SNAPPERS_CONDITION;
    INFORMATION = DIA_LIAM_SNAPPERS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "About these snappers...";
}

func int DIA_LIAM_SNAPPERS_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 80666)) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) && ((SQ213_LIAMSNAPPERPROBLEMDONE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SNAPPERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_Snappers_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Snappers_03_02");
    if ((SQ213_SNAPPERSAREDEAD()) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Liam_Snappers_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Snappers_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Liam_Snappers_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Liam_Snappers_03_06");
        SQ213_LIAMSNAPPERPROBLEMDONE = TRUE;
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_Snappers_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Snappers_03_08");
}

instance DIA_LIAM_CONTRACT(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_CONTRACT_CONDITION;
    INFORMATION = DIA_LIAM_CONTRACT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "We had a deal.";
}

func int DIA_LIAM_CONTRACT_CONDITION() {
    if (((SQ213_LIAMSNAPPERPROBLEMDONE) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_CONTRACT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_Contract_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Contract_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_Contract_03_03");
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_LIAMAGREED);
    SQ213_ORCHARDREADY = TRUE;
}

instance DIA_LIAM_SQ213VINE(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ213VINE_CONDITION;
    INFORMATION = DIA_LIAM_SQ213VINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need a special wine.";
}

func int DIA_LIAM_SQ213VINE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 80673)) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) {
        if (((SQ213_GOTVINE) != (2)) && ((SQ213_EVERYTHINGREADY) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ213VINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_03");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213Vine_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213Vine_03_13");
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_LIAMWINE);
    SQ213_VINECOLLECT = TRUE;
}

instance DIA_LIAM_SQ213AFTERWORK(C_INFO) {
    NPC = 57028;
    NR = 2;
    CONDITION = DIA_LIAM_SQ213AFTERWORK_CONDITION;
    INFORMATION = DIA_LIAM_SQ213AFTERWORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Work, work and work's done.";
}

func int DIA_LIAM_SQ213AFTERWORK_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 80676)) && ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING))) && ((SQ213_VINECOLLECT_DONE) == (1))) && ((SQ213_EVERYTHINGREADY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ213AFTERWORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ213AfterWork_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213AfterWork_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213AfterWork_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ213AfterWork_03_04");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_SQ213, LOG_SQ213_LIAMAFTERWORK);
    SQ213_GOTVINE = 1;
}

instance DIA_LIAM_QM401_CALM(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_QM401_CALM_CONDITION;
    INFORMATION = DIA_LIAM_QM401_CALM_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LIAM_QM401_CALM_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) && ((QM401_BEATUPBERTO) == (2))) && ((QM401_FIGHTWITHRENEGADESCHECK) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_QM401_CALM_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_QM401_Calm_03_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_QM401_Calm_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_LIAM_SQ126_START(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ126_START_CONDITION;
    INFORMATION = DIA_LIAM_SQ126_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you find me a job?";
}

func int DIA_LIAM_SQ126_START_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 80609)) && ((LOG_GETSTATUS(MIS_SQ225)) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ126_START_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_Start_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Start_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Start_03_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Start_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LIAM_SQ126_TAKEJOB(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ126_TAKEJOB_CONDITION;
    INFORMATION = DIA_LIAM_SQ126_TAKEJOB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll take care of it.";
}

func int DIA_LIAM_SQ126_TAKEJOB_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 80685)) && ((LOG_GETSTATUS(MIS_SQ225)) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ126_TAKEJOB_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_TakeJob_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_TakeJob_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_TakeJob_03_03");
    LOG_CREATETOPIC(TOPIC_SQ126, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ126), TOPIC_SQ126, LOG_RUNNING);
    if (((LOG_GETSTATUS(MIS_SQ125)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ125)) == (LOG_SUCCESS))) {
        AI_LOGENTRY(TOPIC_SQ126, LOG_SQ126_START_SQ125);
    };
    AI_LOGENTRY(TOPIC_SQ126, LOG_SQ126_START);
    WLD_SENDTRIGGER("SQ126_MOVER_WATER");
}

instance DIA_LIAM_SQ126_WAKEUP(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ126_WAKEUP_CONDITION;
    INFORMATION = DIA_LIAM_SQ126_WAKEUP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The matter settled, Feil went back to work.";
}

func int DIA_LIAM_SQ126_WAKEUP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ126)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80556))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ126_WAKEUP_INFO() {
    SQ126_SEARCHINGFORFIEL = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_WakeUp_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_WakeUp_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_WakeUp_03_03");
    AI_LOGENTRY(TOPIC_SQ126, LOG_SQ126_LIAM_FEILWAKEUP);
    AI_RESETFACEANI(SELF);
    SQ126_FEILFLEE();
}

instance DIA_LIAM_SQ126_FINISH_V1(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ126_FINISH_V1_CONDITION;
    INFORMATION = DIA_LIAM_SQ126_FINISH_V1_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Feil went back to work...";
}

func int DIA_LIAM_SQ126_FINISH_V1_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ126)) == (LOG_RUNNING)) && ((SQ126_FEIL_RESULTS) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ126_FINISH_V1_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_Finish_V1_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V1_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V1_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V1_03_04");
    AI_RESETFACEANI(SELF);
    CREATEINVITEMS(SELF, 34514, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34514, 1);
    SQ126_FEILAFTERQUEST = 1;
    SQ126_FEILAFTERQUEST_DAY = WLD_GETDAY();
    AI_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FINISH_V1);
    LOG_SETSTATUS(_@(MIS_SQ126), TOPIC_SQ126, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ126_FINISH_V1);
}

instance DIA_LIAM_SQ126_FINISH_V2(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_SQ126_FINISH_V2_CONDITION;
    INFORMATION = DIA_LIAM_SQ126_FINISH_V2_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You can't force Feil to work.";
}

func int DIA_LIAM_SQ126_FINISH_V2_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ126)) == (LOG_RUNNING)) && ((SQ126_FEIL_RESULTS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_SQ126_FINISH_V2_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_Finish_V2_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V2_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_SQ126_Finish_V2_15_03");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V2_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V2_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V2_03_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_SQ126_Finish_V2_03_07");
    CREATEINVITEMS(SELF, 34735, 1);
    B_GIVEINVITEMS(SELF, OTHER, 34735, 1);
    AI_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FINISH_V2);
    LOG_SETSTATUS(_@(MIS_SQ126), TOPIC_SQ126, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ126_FINISH_V2);
    SQ126_FEILAFTERQUEST = 1;
    SQ126_FEILAFTERQUEST_DAY = WLD_GETDAY();
    FF_APPLYONCEEXTGT(62191, 0, -(1));
    B_STARTOTHERROUTINE(BAU_13770_FEIL, TOT);
    NPC_REFRESH(BAU_13770_FEIL);
    TELEPORTNPCTOWP(57032, BAU_13770_FEIL.WP);
}

instance DIA_LIAM_FEILISDEAD(C_INFO) {
    NPC = 57028;
    NR = 1;
    CONDITION = DIA_LIAM_FEILISDEAD_CONDITION;
    INFORMATION = DIA_LIAM_FEILISDEAD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Feil is dead.";
}

func int DIA_LIAM_FEILISDEAD_CONDITION() {
    if ((SQ126_FAILEDQUEST) >= (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_FEILISDEAD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liam_FeilIsDead_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_FeilIsDead_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liam_FeilIsDead_03_03");
    AI_RESETFACEANI(SELF);
}

instance DIA_LIAM_PICKPOCKET(C_INFO) {
    NPC = 57028;
    NR = 900;
    CONDITION = DIA_LIAM_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LIAM_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_LIAM_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIAM_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(80703);
    INFO_ADDCHOICE(80703, DIALOG_BACK, 80707);
    INFO_ADDCHOICE(80703, DIALOG_PICKPOCKET, 80706);
}

func void DIA_LIAM_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 36361, 2);
        B_GIVEINVITEMS(SELF, OTHER, 36361, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(80703);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(80703);
}

func void DIA_LIAM_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(80703);
}

