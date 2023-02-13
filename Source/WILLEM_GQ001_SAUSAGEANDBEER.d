var int WILLEM_GQ001_SAUSAGEANDBEER;
var int WILLEM_GQ001_CANHELPHIM;
var int WILLEM_SQ210_TAKEQUEST;
var int WILLEM_HODISDEAD;
instance DIA_WILLEM_EXIT(C_INFO) {
    NPC = 56212;
    NR = 999;
    CONDITION = DIA_WILLEM_EXIT_CONDITION;
    INFORMATION = DIA_WILLEM_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WILLEM_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WILLEM_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_EXIT_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_EXIT_03_02");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WILLEM_AMBIENT(C_INFO) {
    NPC = 56212;
    NR = 990;
    CONDITION = DIA_WILLEM_AMBIENT_CONDITION;
    INFORMATION = DIA_WILLEM_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_WILLEM_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78376)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 2);
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_04");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Ambient_13_06");
    };
}

instance DIA_WILLEM_HEYTHERE(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_HEYTHERE_CONDITION;
    INFORMATION = DIA_WILLEM_HEYTHERE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WILLEM_HEYTHERE_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_HEYTHERE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_HeyThere_03_01");
    INFO_CLEARCHOICES(78376);
    INFO_ADDCHOICE(78376, "Why do the people of this island have so much hospitality?", 78379);
    INFO_ADDCHOICE(78376, "I'm going to invade this farm!", 78380);
}

func void DIA_WILLEM_HEYTHERE_NOTNICE() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NotNice_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NotNice_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NotNice_03_03");
    AI_REMOVEWEAPON(SELF);
    INFO_CLEARCHOICES(78376);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_WILLEM_HEYTHERE_ATTACK() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Attack_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Attack_03_02");
    B_STANDUP();
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Attack_03_03");
}

instance DIA_WILLEM_WHO(C_INFO) {
    NPC = 56212;
    NR = 5;
    CONDITION = DIA_WILLEM_WHO_CONDITION;
    INFORMATION = DIA_WILLEM_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_WILLEM_WHO_CONDITION() {
    if ((KAPITEL) < (5)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Who_03_03");
}

instance DIA_WILLEM_NEEDHELP(C_INFO) {
    NPC = 56212;
    NR = 6;
    CONDITION = DIA_WILLEM_NEEDHELP_CONDITION;
    INFORMATION = DIA_WILLEM_NEEDHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you need an extra pair of hands to do the work?";
}

func int DIA_WILLEM_NEEDHELP_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78381)) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_NEEDHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NeedHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_05");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_03_08");
    };
    INFO_CLEARCHOICES(78384);
    INFO_ADDCHOICE(78384, "I'll help you clean up the shore.", 78388);
    INFO_ADDCHOICE(78384, "I'm not interested in collecting fish.", 78389);
}

func void DIA_WILLEM_NEEDHELP_TAKEQUEST() {
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_Yes_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_Yes_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NeedHelp_Yes_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_Yes_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_Yes_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NeedHelp_Yes_15_08");
    LOG_CREATETOPIC(TOPIC_SQ210, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ210), TOPIC_SQ210, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ210, LOG_SQ210_START);
    INFO_CLEARCHOICES(78384);
    INFO_CLEARCHOICES(78390);
}

func void DIA_WILLEM_NEEDHELP_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NeedHelp_Yes_15_01");
    DIA_WILLEM_NEEDHELP_TAKEQUEST();
}

func void DIA_WILLEM_NEEDHELP_NO() {
    WILLEM_SQ210_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_NeedHelp_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_NeedHelp_No_03_02");
    INFO_CLEARCHOICES(78384);
}

instance DIA_WILLEM_SEATAKEQUEST(C_INFO) {
    NPC = 56212;
    NR = 5;
    CONDITION = DIA_WILLEM_SEATAKEQUEST_CONDITION;
    INFORMATION = DIA_WILLEM_SEATAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind. I'll help you clean up the shore.";
}

func int DIA_WILLEM_SEATAKEQUEST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 78384)) && ((WILLEM_SQ210_TAKEQUEST) == (TRUE))) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_SEATAKEQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SeaTakeQuest_15_01");
    DIA_WILLEM_NEEDHELP_TAKEQUEST();
}

instance DIA_WILLEM_SQ210_FISHES(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_SQ210_FISHES_CONDITION;
    INFORMATION = DIA_WILLEM_SQ210_FISHES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "These are all the fish I was able to collect.";
}

func int DIA_WILLEM_SQ210_FISHES_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ210)) == (LOG_RUNNING)) && ((NPC_HASITEMS(OTHER, 33972)) >= (25))) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_SQ210_FISHES_INFO() {
    var int MARVIN_GIVEFISHES;
    var int MARVIN_CURRENTFISHES;
    MARVIN_CURRENTFISHES = NPC_HASITEMS(OTHER, 33972);
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ210_Fishes_15_01");
    if ((NPC_HASITEMS(OTHER, 33972)) == (25)) {
        MARVIN_GIVEFISHES = 25;
        B_GIVEINVITEMS(OTHER, SELF, 33972, 25);
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_04");
    if ((NPC_HASITEMS(OTHER, 33972)) >= (40)) {
        MARVIN_GIVEFISHES = 40;
    };
    MARVIN_GIVEFISHES = MARVIN_CURRENTFISHES;
    B_GIVEINVITEMS(OTHER, SELF, 33972, MARVIN_CURRENTFISHES);
    B_STANDUP();
    if ((NPC_HASITEMS(SELF, 36091)) == (0)) {
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 36091);
        AI_USEITEMTOSTATE(SELF, 36091, 1);
        AI_WAIT(SELF, 1073741824);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_05");
    AI_USEITEMTOSTATE(SELF, 36091, -(1));
    AI_LOOKATNPC(SELF, OTHER);
    if ((WILLEM_HODISDEAD) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ210_Fishes_03_08");
    AI_LOGENTRY(TOPIC_SQ210, LOG_SQ210_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ210), TOPIC_SQ210, LOG_SUCCESS);
    B_GIVEPLAYERXP((XP_SQ210_FISHES) * (MARVIN_GIVEFISHES));
    CREATEINVITEMS(SELF, 34203, (MARVIN_GIVEFISHES) * (SQ210_WILLEM_REWARD));
    if ((SQ210_FASTTRAVEL) == (FALSE)) {
        SQ210_FASTTRAVEL = TRUE;
        WLD_SENDTRIGGER("KM_FASTTRAVEL_BOAT_PART6");
        WLD_INSERTNPC(56169, "PART6_FASTTRAVEL_FISHERMAN");
    };
    B_GIVEINVITEMS(SELF, OTHER, 34203, (MARVIN_GIVEFISHES) * (SQ210_WILLEM_REWARD));
}

instance DIA_WILLEM_VRAZKA(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_VRAZKA_CONDITION;
    INFORMATION = DIA_WILLEM_VRAZKA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found a woman's body on the shore.";
}

func int DIA_WILLEM_VRAZKA_CONDITION() {
    if ((MARVIN_FOUNDVRAZKA) == (1)) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_VRAZKA_INFO() {
    MARVIN_FOUNDVRAZKA = 2;
    MARVIN_FOUNDVRAZKA_DAY = WLD_GETDAY();
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Vrazka_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Vrazka_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Vrazka_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Vrazka_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Vrazka_03_05");
    B_GIVEPLAYERXP(XP_SQ210_FOUNDVRAZKA);
}

instance DIA_WILLEM_BERMAR(C_INFO) {
    NPC = 56212;
    NR = 7;
    CONDITION = DIA_WILLEM_BERMAR_CONDITION;
    INFORMATION = DIA_WILLEM_BERMAR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What can you tell me about Bermar?";
}

func int DIA_WILLEM_BERMAR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78381)) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_BERMAR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Bermar_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Bermar_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Bermar_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Bermar_03_04");
}

instance DIA_WILLEM_SQ228_START(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_SQ228_START_CONDITION;
    INFORMATION = DIA_WILLEM_SQ228_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you have some work for me on the side?";
}

func int DIA_WILLEM_SQ228_START_CONDITION() {
    if (((KAPITEL) >= (2)) && ((LOG_GETSTATUS(MIS_SQ210)) == (LOG_SUCCESS))) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int WILLEM_SQ228_TAKEQUEST;
func void DIA_WILLEM_SQ228_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Start_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_03");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Start_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Start_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_03_10");
    INFO_CLEARCHOICES(78404);
    INFO_ADDCHOICE(78404, "I was thinking of something more serious. Maybe on another occasion...", 78409);
    INFO_ADDCHOICE(78404, "All right, I'll deal with those rats.", 78408);
}

func void DIA_WILLEM_SQ228_START_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Start_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_Yes_03_02");
    AI_RESETFACEANI(SELF);
    CREATEINVITEMS(SELF, 37108, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37108, 1);
    LOG_CREATETOPIC(TOPIC_SQ228, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ228), TOPIC_SQ228, LOG_RUNNING);
    if ((LOG_GETSTATUS(MIS_QM203)) != (LOG_SUCCESS)) {
        AI_LOGENTRY(TOPIC_SQ228, LOG_SQ228_START);
    };
    if ((LOG_GETSTATUS(MIS_QM203)) == (LOG_SUCCESS)) {
        AI_LOGENTRY(TOPIC_SQ228, LOG_SQ228_START_QM203);
    };
    INFO_CLEARCHOICES(78404);
}

func void DIA_WILLEM_SQ228_START_NO() {
    WILLEM_SQ228_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Start_No_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 0, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Start_No_03_02");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(78404);
}

instance DIA_WILLEM_SQ228_TAKEQUEST(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_SQ228_TAKEQUEST_CONDITION;
    INFORMATION = DIA_WILLEM_SQ228_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right, I'll deal with those rats.";
}

func int DIA_WILLEM_SQ228_TAKEQUEST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 78404)) && ((WILLEM_SQ228_TAKEQUEST) == (TRUE))) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_SQ228_TAKEQUEST_INFO() {
    DIA_WILLEM_SQ228_START_YES();
}

instance DIA_WILLEM_SQ228_FINISH(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_SQ228_FINISH_CONDITION;
    INFORMATION = DIA_WILLEM_SQ228_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WILLEM_SQ228_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ228)) == (LOG_RUNNING)) && ((SQ228_RATNESTDESTROYEDCOUNT) >= (5))) {
        if ((KAPITEL) < (5)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_SQ228_FINISH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Finish_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Finish_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_SQ228_Finish_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_SQ228_Finish_03_04");
    AI_LOGENTRY(TOPIC_SQ228, LOG_SQ228_FINISH);
    LOG_SETSTATUS(_@(MIS_SQ228), TOPIC_SQ228, LOG_SUCCESS);
    CREATEINVITEMS(SELF, 38213, 1);
    B_GIVEINVITEMS(SELF, OTHER, 38213, 1);
    B_GIVEPLAYERXP(XP_SQ228_FINISH);
}

instance DIA_WILLEM_Q208_PABLO(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_Q208_PABLO_CONDITION;
    INFORMATION = DIA_WILLEM_Q208_PABLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your help. Pablo sent me.";
}

func int DIA_WILLEM_Q208_PABLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q206)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_Q208_PABLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_Pablo_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_03_05");
    INFO_CLEARCHOICES(78416);
    INFO_ADDCHOICE(78416, "Where to find this Hod?", 78420);
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)) {
        INFO_ADDCHOICE(78416, "Missing replacement, huh? I see that's a common problem for sentries.", 78419);
    };
}

func void DIA_WILLEM_Q208_PABLO_MISSING() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_Pablo_Missing_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_Missing_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_Missing_03_03");
}

func void DIA_WILLEM_Q208_PABLO_WHERE() {
    Q208_HODLOGENTRIES = 1;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_Pablo_Where_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_Pablo_Where_03_04");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_WILLEM_HOD);
    INFO_CLEARCHOICES(78416);
}

instance DIA_WILLEM_Q208_FOUNDHOD(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_Q208_FOUNDHOD_CONDITION;
    INFORMATION = DIA_WILLEM_Q208_FOUNDHOD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm here about Hod. I have bad news.";
}

func int DIA_WILLEM_Q208_FOUNDHOD_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 78416)) && ((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING))) && ((Q208_FOUNDHOD) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_Q208_FOUNDHOD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_15_01");
    WILLEM_HODISDEAD = TRUE;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_15_03");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_07");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_03_10");
    INFO_CLEARCHOICES(78421);
    if ((BENGARFARM_ORCENCOUNTER) == (2)) {
        INFO_ADDCHOICE(78421, "I saw an orc in the cave!", 78424);
    };
    INFO_ADDCHOICE(78421, "I'm just saying what I saw.", 78425);
}

func void DIA_WILLEM_Q208_FOUNDHOD_ORC() {
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_Orc_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Orc_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_Orc_15_03");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Orc_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Orc_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_Orc_15_06");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Orc_03_07");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_WILLEM_FOUNDHOD_ORC);
    INFO_CLEARCHOICES(78421);
}

func void DIA_WILLEM_Q208_FOUNDHOD_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_FoundHod_Nothing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Nothing_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_FoundHod_Nothing_03_03");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_WILLEM_FOUNDHOD);
    INFO_CLEARCHOICES(78421);
}

instance DIA_WILLEM_Q208_TELLME(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_Q208_TELLME_CONDITION;
    INFORMATION = DIA_WILLEM_Q208_TELLME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can we now talk about this situation with Pablo?";
}

func int DIA_WILLEM_Q208_TELLME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q208)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 78421))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_Q208_TELLME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_15_03");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_03_04");
    INFO_CLEARCHOICES(78426);
    INFO_ADDCHOICE(78426, "It's none of your business.", 78431);
    INFO_ADDCHOICE(78426, "He may have been transporting my brother's kidnapper.", 78430);
}

func void DIA_WILLEM_Q208_TELLME_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Next_03_03");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_WILLEM_YANNICK);
    INFO_CLEARCHOICES(78426);
    INFO_ADDCHOICE(78426, "Thanks for the help, I'm off to continue my search.", 78433);
    INFO_ADDCHOICE(78426, "You know anything about the big guy Yannick took off with?", 78432);
}

func void DIA_WILLEM_Q208_TELLME_BROTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_Brother_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Brother_03_02");
    DIA_WILLEM_Q208_TELLME_NEXT();
}

func void DIA_WILLEM_Q208_TELLME_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_No_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_No_03_02");
    DIA_WILLEM_Q208_TELLME_NEXT();
}

func void DIA_WILLEM_Q208_TELLME_NO_NEXT_BEN() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_Ben_15_01");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Ben_03_02");
    AI_RESETFACEANI(SELF);
}

func void DIA_WILLEM_Q208_TELLME_NO_NEXT_THANKS() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Q208_TellMe_Thanks_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Thanks_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Thanks_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Thanks_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Q208_TellMe_Thanks_03_05");
    AI_LOGENTRY(TOPIC_Q208, LOG_Q208_WILLEM_PASSWORD);
    INFO_CLEARCHOICES(78426);
    Q208_PREPAREYANNICK();
}

instance DIA_WILLEM_KQ407_WHATHAPPEND(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_KQ407_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_WILLEM_KQ407_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Will you tell me what happened?";
}

func int DIA_WILLEM_KQ407_WHATHAPPEND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ407)) == (LOG_RUNNING)) && ((KQ407_FARMERSATMEDIC) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_KQ407_WHATHAPPEND_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_KQ407_WhatHappend_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_KQ407_WhatHappend_03_08");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_KQ407_WhatHappend_15_09");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    if ((LOG_GETSTATUS(MIS_SQ210)) == (LOG_RUNNING)) {
        LOG_SETSTATUS(_@(MIS_SQ210), TOPIC_SQ210, LOG_FAILED);
        AI_LOGENTRY(TOPIC_SQ210, LOG_SQ210_FAILED);
    };
    if ((LOG_GETSTATUS(MIS_SQ228)) == (LOG_RUNNING)) {
        LOG_SETSTATUS(_@(MIS_SQ228), TOPIC_SQ228, LOG_FAILED);
        AI_LOGENTRY(TOPIC_SQ228, LOG_SQ228_FAILED);
    };
}

var int WILLEM_CANTEACH;
instance DIA_WILLEM_CANYOUTEACH(C_INFO) {
    NPC = 56212;
    NR = 3;
    CONDITION = DIA_WILLEM_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_WILLEM_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something?";
}

func int DIA_WILLEM_CANYOUTEACH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 78381)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_CanYouTeach_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_CanYouTeach_03_01");
    LOG_CREATETOPIC(TOPIC_TEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_TEACHER, LOG_TEACHER_WILLEM);
    WILLEM_CANTEACH = TRUE;
}

var int WILLEM_NOMORE;
var string WILLEM_PRINTS;
var int WILLEM_CURRENT1HLEVEL;
var int WILLEM_CURRENTDEXLEVEL;
instance DIA_WILLEM_TEACH(C_INFO) {
    NPC = 56212;
    NR = 1;
    CONDITION = DIA_WILLEM_TEACH_CONDITION;
    INFORMATION = DIA_WILLEM_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Teach me.";
}

func int DIA_WILLEM_TEACH_CONDITION() {
    if ((((WILLEM_CANTEACH) == (TRUE)) && ((WILLEM_NOMORE) == (FALSE))) && ((KAPITEL) <= (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_TEACH_CHOICES() {
    var int WILLEM_GOLDCOST;
    WILLEM_GOLDCOST = 15;
    WILLEM_CURRENT1HLEVEL = OTHER.AIVAR[84];
    WILLEM_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    INFO_CLEARCHOICES(78445);
    INFO_ADDCHOICE(78445, DIALOG_BACK, 78450);
    INFO_ADDCHOICE(78445, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), WILLEM_GOLDCOST), 78451);
    INFO_ADDCHOICE(78445, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 5), (WILLEM_GOLDCOST) * (5)), 78452);
    INFO_ADDCHOICE(78445, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), WILLEM_GOLDCOST), 78453);
    INFO_ADDCHOICE(78445, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (WILLEM_GOLDCOST) * (5)), 78454);
    if (((OTHER.AIVAR[84]) >= (40)) && ((OTHER.AIVAR[82]) >= (60))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_NoMore_03_01");
        WILLEM_NOMORE = TRUE;
    };
}

func void DIA_WILLEM_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Teach_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Teach_03_01");
    DIA_WILLEM_TEACH_CHOICES();
}

func void DIA_WILLEM_TEACH_BACK() {
    INFO_CLEARCHOICES(78445);
}

func void DIA_WILLEM_TEACH_1H1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WILLEM_PAYMENT1)) {
        if ((WILLEM_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, WILLEM_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 34203, WILLEM_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 40);
        DIA_WILLEM_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (WILLEM_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Teach_1H1_03_01");
        WILLEM_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(WILLEM_PAYMENT1));
        PRINTSCREEN(WILLEM_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_WILLEM_TEACH_CHOICES();
    };
}

func void DIA_WILLEM_TEACH_1H5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WILLEM_PAYMENT5)) {
        if ((WILLEM_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, WILLEM_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
            NPC_REMOVEINVITEMS(SELF, 34203, WILLEM_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 40);
        DIA_WILLEM_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (WILLEM_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Teach_1H5_03_01");
        WILLEM_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(WILLEM_PAYMENT5));
        PRINTSCREEN(WILLEM_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_WILLEM_TEACH_CHOICES();
    };
}

func void DIA_WILLEM_TEACHDEX1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WILLEM_PAYMENT1)) {
        if ((WILLEM_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, WILLEM_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 34203, WILLEM_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 60);
        DIA_WILLEM_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (WILLEM_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_TeachDEX_03_01");
        WILLEM_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(WILLEM_PAYMENT1));
        PRINTSCREEN(WILLEM_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_WILLEM_TEACH_CHOICES();
    };
}

func void DIA_WILLEM_TEACHDEX5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WILLEM_PAYMENT5)) {
        if ((WILLEM_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, WILLEM_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 34203, WILLEM_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 60);
        DIA_WILLEM_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (WILLEM_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Willem_Teach_03_05");
        WILLEM_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(WILLEM_PAYMENT5));
        PRINTSCREEN(WILLEM_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_WILLEM_TEACH_CHOICES();
    };
}

instance DIA_WILLEM_MILL(C_INFO) {
    NPC = 56212;
    NR = 90;
    CONDITION = DIA_WILLEM_MILL_CONDITION;
    INFORMATION = DIA_WILLEM_MILL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Your mill looks just like the burnt one on the road to the city.";
}

func int DIA_WILLEM_MILL_CONDITION() {
    if ((((BERMARFARM_SAWMILL) == (TRUE)) && ((KAPITEL) < (5))) && (NPC_KNOWSINFO(OTHER, 78381))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_MILL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Willem_Mill_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Mill_03_02");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Mill_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Mill_03_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Willem_Mill_03_05");
    AI_RESETFACEANI(SELF);
}

instance DIA_WILLEM_PICKPOCKET(C_INFO) {
    NPC = 56212;
    NR = 900;
    CONDITION = DIA_WILLEM_PICKPOCKET_CONDITION;
    INFORMATION = DIA_WILLEM_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_WILLEM_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WILLEM_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(78458);
    INFO_ADDCHOICE(78458, DIALOG_BACK, 78462);
    INFO_ADDCHOICE(78458, DIALOG_PICKPOCKET, 78461);
}

func void DIA_WILLEM_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(78458);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(78458);
}

func void DIA_WILLEM_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(78458);
}

