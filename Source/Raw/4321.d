instance DIA_HARRY_EXIT(C_INFO) {
    NPC = 0xe13e;
    NR = 999;
    CONDITION = DIA_HARRY_EXIT_CONDITION;
    INFORMATION = DIA_HARRY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HARRY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HARRY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HARRY_GATEJORN(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_GATEJORN_CONDITION;
    INFORMATION = DIA_HARRY_GATEJORN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

var int HARRYGOODANSWERS = 0;
var int HARRYBADANSWERS = 0;
func int DIA_HARRY_GATEJORN_CONDITION() {
    if ((Q102_JORNCHOSEN) && ((HARRYGATETESTPASSED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_GATEJORN_INFO() {
    MUSIC_DISABLEOVERRIDE();
    NONE_1_JORN.AIVAR[15] = FALSE;
    NONE_6_TIMO.AIVAR[15] = FALSE;
    NONE_100008_ANA.AIVAR[15] = FALSE;
    NONE_100009_LEA.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_03_00");
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "We come from the city.", 0x15dc6);
    INFO_ADDCHOICE(0x15dc0, "We come from Londram.", 0x15dc9);
    INFO_ADDCHOICE(0x15dc0, "We are just simple wanderers.", 0x15dcc);
}

func void DIA_HARRY_SILBACH_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_03_00");
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "We are exhausted, wounded and hungry. We seek shelter.", 0x15dcf);
    INFO_ADDCHOICE(0x15dc0, "We're running away from the war.", 0x15dd0);
}

func void DIA_HARRY_GATEJORN_CITY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_City_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_City_03_00");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "We veered slightly off the path.", 0x15dc7);
    INFO_ADDCHOICE(0x15dc0, "We got lost in that storm.", 0x15dc8);
}

func void DIA_HARRY_GATEJORN_CITY_ROAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_City_Road_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_City_Road_03_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_City_Road_03_01");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_SILBACH_INFO();
}

func void DIA_HARRY_GATEJORN_CITY_STORM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_City_Storm_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_City_Storm_03_00");
    HARRYGOODANSWERS = (HARRYGOODANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_SILBACH_INFO();
}

func void DIA_HARRY_GATEJORN_LONDRAM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_Londram_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_03_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_03_01");
    HARRYGOODANSWERS = (HARRYGOODANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "We took off on a fishing boat.", 0x15dca);
    INFO_ADDCHOICE(0x15dc0, "A merchant frigate disembarked us on the west side of the island.", 0x15dcb);
}

func void DIA_HARRY_GATEJORN_LONDRAM_FISHERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_Londram_Fishers_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_Fishers_03_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_Londram_Fishers_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_Fishers_03_01");
    HARRYGOODANSWERS = (HARRYGOODANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_SILBACH_INFO();
}

func void DIA_HARRY_GATEJORN_LONDRAM_MERCHANTS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_Londram_Merchants_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_Merchants_03_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Londram_Merchants_03_01");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_SILBACH_INFO();
}

func void DIA_HARRY_GATEJORN_OUTLANDERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_GateJorn_Outlanders_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_GateJorn_Outlanders_03_00");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_SILBACH_INFO();
}

func void DIA_HARRY_INSUM_PUB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_pub_03_01");
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "Where exactly is the inn?", 0x15dd8);
    INFO_ADDCHOICE(0x15dc0, "Thanks for your help.", 0x15dd7);
}

func void DIA_HARRY_INSUM_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_03_01");
    if ((HARRYBADANSWERS) >= (2)) {
        HARRYBADANSWERS = 0;
        HARRYGOODANSWERS = 0;
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_03_03");
        INFO_CLEARCHOICES(0x15dc0);
        INFO_ADDCHOICE(0x15dc0, "We come from the city.", 0x15dc6);
        INFO_ADDCHOICE(0x15dc0, "We come from Londram.", 0x15dc9);
        INFO_ADDCHOICE(0x15dc0, "We are just simple wanderers.", 0x15dcc);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_03_05");
    HARRYGATETESTPASSED = TRUE;
    DIA_HARRY_INSUM_PUB();
}

func void DIA_HARRY_SILBACH_EXHAUSTED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_exhausted_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_exhausted_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_exhausted_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_exhausted_03_03");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_SILBACH_WAR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_war_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_war_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_war_03_02");
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_war_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_war_03_04");
    AI_REMOVEWEAPON(SELF);
    HARRYGOODANSWERS = (HARRYGOODANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_SILBACH_BROTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_brother_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_brother_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_brother_03_02");
    INFO_CLEARCHOICES(0x15dc0);
    INFO_ADDCHOICE(0x15dc0, "(Intimidate)", 0x15dd2);
    INFO_ADDCHOICE(0x15dc0, "We will repay you for your help.", 0x15dd3);
    INFO_ADDCHOICE(0x15dc0, "We were attacked by wild beasts. We have a wounded comrade.", 0x15dd4);
    INFO_ADDCHOICE(0x15dc0, "We're just passing through.", 0x15dd5);
}

func void DIA_HARRY_SILBACH_BULLY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_bully_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_bully_03_01");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_SILBACH_HELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_help_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_help_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_help_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_help_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_help_03_04");
    HARRYGOODANSWERS = (HARRYGOODANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_SILBACH_WOUNDEDCOMPANION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_woundedcompanion_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_woundedcompanion_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_woundedcompanion_03_02");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_SILBACH_PLACE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Silbach_place_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_place_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_place_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Silbach_place_03_03");
    HARRYBADANSWERS = (HARRYBADANSWERS) + (1);
    INFO_CLEARCHOICES(0x15dc0);
    DIA_HARRY_INSUM_INFO();
}

func void DIA_HARRY_Q103_START() {
    Q103_VILLAGEDISTANCELIMIT = TRUE;
    LOG_CREATETOPIC(TOPIC_Q103, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q103), TOPIC_Q103, LOG_RUNNING);
    if ((Q102_FABIOCHOSEN) == (TRUE)) {
        Q103_PREPARENPC_FABIOWAY();
    };
    Q103_PREPARENPC_JORNWAY();
}

func void DIA_HARRY_INSUM_THANKS() {
    SETHOLDTIME(TRUE);
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_insum_thanks_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_thanks_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_thanks_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_insum_thanks_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_thanks_03_04");
    DIA_HARRY_Q103_START();
    AI_LOGENTRY(TOPIC_Q103, LOG_Q103_HARRYLETINTOSILBACH);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_HARRY_INSUM_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_insum_where_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_where_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_insum_where_03_02");
    DIA_HARRY_INSUM_THANKS();
}

instance DIA_HARRY_Q102_FABIOCHOSEN(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_Q102_FABIOCHOSEN_CONDITION;
    INFORMATION = DIA_HARRY_Q102_FABIOCHOSEN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HARRY_Q102_FABIOCHOSEN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q102)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x164d6))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_Q102_FABIOCHOSEN_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_03_01");
    INFO_CLEARCHOICES(0x15dd9);
    INFO_ADDCHOICE(0x15dd9, "Yes, it's me. Has Jorn been here yet?", 0x15ddc);
}

func void DIA_HARRY_Q102_FABIOCHOSEN_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Q102_FabioChosen_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Yes_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Yes_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Q102_FabioChosen_Yes_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Yes_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Yes_03_06");
    INFO_CLEARCHOICES(0x15dd9);
    INFO_ADDCHOICE(0x15dd9, "Where can I find Jorn and this Viktor?", 0x15ddd);
}

func void DIA_HARRY_Q102_FABIOCHOSEN_YES_WHERE() {
    SETHOLDTIME(TRUE);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Q102_FabioChosen_Where_15_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Q102_FabioChosen_Where_03_04");
    AI_LOGENTRY(TOPIC_Q102, LOG_Q102_FINISH_FABIOWAY);
    LOG_SETSTATUS(_@(MIS_Q102), TOPIC_Q102, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q102_FINISH);
    DIA_HARRY_Q103_START();
    AI_LOGENTRY(TOPIC_Q103, LOG_Q103_START_FABIOWAY);
    INFO_CLEARCHOICES(0x15dd9);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HARRY_SQ118_NEEDHELP(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_SQ118_NEEDHELP_CONDITION;
    INFORMATION = DIA_HARRY_SQ118_NEEDHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Ezekiel's daughter stayed on shore.";
}

func int DIA_HARRY_SQ118_NEEDHELP_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ118)) == (LOG_RUNNING)) && ((SQ118_EZEKIEL_GUARDHELP) == (1))) && ((SQ118_GUARDSCOUNT) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_SQ118_NEEDHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_NeedHelp_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_NeedHelp_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_03_04");
    INFO_CLEARCHOICES(0x15dde);
    INFO_ADDCHOICE(0x15dde, "What do you want in return for your help? Money?", 0x15de3);
    INFO_ADDCHOICE(0x15dde, "Adanos would help his children in need.", 0x15de2);
    INFO_ADDCHOICE(0x15dde, "You are, after all, a sentry of this village.", 0x15de1);
}

func void DIA_HARRY_SQ118_NEEDHELP_GUARD() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_NeedHelp_Guard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_Guard_03_02");
}

func void DIA_HARRY_SQ118_NEEDHELP_ADANOS() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_NeedHelp_Adanos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_Adanos_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_Adanos_03_03");
}

func void DIA_HARRY_SQ118_NEEDHELP_GOLD() {
    INFO_CLEARCHOICES(0x15dde);
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_NeedHelp_Gold_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_Gold_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_NeedHelp_Gold_03_03");
    AI_LOGENTRY(TOPIC_SQ118, LOG_SQ118_HARRY_GOLD);
}

instance DIA_HARRY_SQ118_YOURGOLD(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_SQ118_YOURGOLD_CONDITION;
    INFORMATION = DIA_HARRY_SQ118_YOURGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "(Donate 25 GP in exchange for helping Ezekiel)";
}

func int DIA_HARRY_SQ118_YOURGOLD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ118)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x15dde))) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ118_HARRY_PAYMENT))) && ((SQ118_GUARDSCOUNT) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_SQ118_YOURGOLD_INFO() {
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ118_HARRY_PAYMENT);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_YourGold_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_YourGold_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_SQ118_YourGold_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_YourGold_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_SQ118_YourGold_03_05");
    AI_LOGENTRY(TOPIC_SQ118, LOG_SQ118_HARRY_READY);
    SQ118_COUNTGUARDS();
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ118_GUARD");
}

instance DIA_HARRY_WHEREISJORN(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_WHEREISJORN_CONDITION;
    INFORMATION = DIA_HARRY_WHEREISJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Has Jorn passed by here lately?";
}

func int DIA_HARRY_WHEREISJORN_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1575a)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) && (!(NPC_KNOWSINFO(OTHER, 0x1577f)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_WHEREISJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_03_02");
    if ((Q102_FABIOCHOSEN) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_15_03");
    };
    if ((Q102_JORNCHOSEN) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_15_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_03_06");
    INFO_CLEARCHOICES(0x15de7);
    INFO_ADDCHOICE(0x15de7, "Are you sure you haven't seen him?", 0x15dea);
    INFO_ADDCHOICE(0x15de7, "Have you heard anything about Kurt's break-in?", 0x15deb);
    INFO_ADDCHOICE(0x15de7, "In that case, I'll look for him somewhere else.", 0x15dec);
}

func void DIA_HARRY_WHEREISJORN_SEE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_See_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_See_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_See_03_03");
    AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_HARRYV1);
    INFO_CLEARCHOICES(0x15de7);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_HARRY_WHEREISJORN_KURT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_Kurt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_Kurt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_Kurt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_Kurt_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_WhereIsJorn_Kurt_03_05");
    INFO_CLEARCHOICES(0x15de7);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_HARRYV2);
}

func void DIA_HARRY_WHEREISJORN_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_WhereIsJorn_Bye_15_01");
    INFO_CLEARCHOICES(0x15de7);
    AI_STOPPROCESSINFOS(OTHER);
    AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_HARRYV1);
}

instance DIA_HARRY_BORING(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_BORING_CONDITION;
    INFORMATION = DIA_HARRY_BORING_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HARRY_BORING_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 0xf09f))) && (WLD_ISTIME(8, 0, 20, 0))) && ((SQ202_HARRYCHECK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_BORING_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Boring_03_01");
    INFO_CLEARCHOICES(0x15ded);
    INFO_ADDCHOICE(0x15ded, "What are you doing so far from the gate?", 0x15df0);
}

func void DIA_HARRY_BORING_GATE() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Boring_Gate_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Boring_Gate_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Boring_Gate_03_03");
    INFO_CLEARCHOICES(0x15ded);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_HARRY_BUSTED(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_BUSTED_CONDITION;
    INFORMATION = DIA_HARRY_BUSTED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HARRY_BUSTED_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ202)) == (LOG_RUNNING)) && ((SQ202_HARRYCHECK) == (TRUE))) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (1000)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_BUSTED_INFO() {
    AI_SETWALKMODE(SELF, NPC_RUN);
    AI_GOTONPC(SELF, HERO);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_01");
    if ((OTHER.ATTRIBUTE[4]) < (MIL_707_HARRY.ATTRIBUTE[4])) {
        SQ202_HARRYBUSTED = TRUE;
        MARVINJOINTNUMBERS = NPC_HASITEMS(OTHER, 0x8592);
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_02");
        B_GIVEINVITEMS(OTHER, SELF, 0x8592, MARVINJOINTNUMBERS);
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Harry_Busted_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_06");
        if (((SQ202_FARMERKNOWFREDRIK) != (2)) || ((SQ202_FARMERKNOWFREDRIK) != (3))) {
            B_STARTOTHERROUTINE(NONE_6252_FREDRIK, "ANGRY");
        };
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Busted_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_03_08");
    INFO_CLEARCHOICES(0x15df1);
    INFO_ADDCHOICE(0x15df1, "I'll tell Albyn you left your post.", 0x15df5);
}

var int DIA_HARRY_BUSTED_INFO.MARVINJOINTNUMBERS = 0;
func void DIA_HARRY_BUSTED_ALBYN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Busted_Albyn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_Albyn_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_Busted_Albyn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_Busted_Albyn_03_04");
    INFO_CLEARCHOICES(0x15df1);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_RESETFACEANI(SELF);
}

instance DIA_HARRY_KQ405_BUKHARD(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_KQ405_BUKHARD_CONDITION;
    INFORMATION = DIA_HARRY_KQ405_BUKHARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I hear you've been talking to a royal scout.";
}

func int DIA_HARRY_KQ405_BUKHARD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x156d4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_KQ405_BUKHARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_Bukhard_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Bukhard_03_02");
}

instance DIA_HARRY_KQ405_SEARCH(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_KQ405_SEARCH_CONDITION;
    INFORMATION = DIA_HARRY_KQ405_SEARCH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for him. Do you still remember what you talked about?";
}

func int DIA_HARRY_KQ405_SEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x15df6))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_KQ405_SEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_Search_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Search_03_02");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Search_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Search_03_04");
    INFO_CLEARCHOICES(0x15df9);
    INFO_ADDCHOICE(0x15df9, "Were they local hunters?", 0x15dfc);
}

func void DIA_HARRY_KQ405_SEARCH_HUNTERS() {
    AI_FUNCTION(SELF, 0xef3f);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_Search_Hunters_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Search_Hunters_03_02");
    AI_TURNTONPC(SELF, BDT_6288_MYRMIDON);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_Search_Hunters_03_03");
    INFO_CLEARCHOICES(0x15df9);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_HARRY_HUNTERS);
}

instance DIA_HARRY_KQ405_AFTERHUNTERS(C_INFO) {
    NPC = 0xe13e;
    NR = 1;
    CONDITION = DIA_HARRY_KQ405_AFTERHUNTERS_CONDITION;
    INFORMATION = DIA_HARRY_KQ405_AFTERHUNTERS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HARRY_KQ405_AFTERHUNTERS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ405)) == (LOG_RUNNING)) && ((KQ405_FIGHTWITHHUNTERSSTATUS) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_KQ405_AFTERHUNTERS_INFO() {
    INFO_CLEARCHOICES(0x15dfd);
    if ((KQ405_OLDFRIENDS) == (TRUE)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_03_05");
        INFO_ADDCHOICE(0x15dfd, "I knew these people.", 0x15e03);
    };
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_AfterHunters_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_AfterHunters_15_03");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_03_04");
    INFO_ADDCHOICE(0x15dfd, "Okay, I believe you.", 0x15e01);
    INFO_ADDCHOICE(0x15dfd, "(Draw your weapon)", 0x15e02);
}

var int HARRY_KQ405_SCAREDANIMATION = 0;
func void DIA_HARRY_KQ405_AFTERHUNTERS_BELIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_AfterHunters_Belive_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_Belive_03_02");
    if ((HARRY_KQ405_SCAREDANIMATION) == (TRUE)) {
        AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    };
    INFO_CLEARCHOICES(0x15dfd);
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_HARRY_AFTERHUNTERS_V1);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_HARRY_KQ405_AFTERHUNTERS_DRAW() {
    HARRY_KQ405_SCAREDANIMATION = TRUE;
    AI_DRAWWEAPON(OTHER);
    AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_Draw_03_01");
}

func void DIA_HARRY_KQ405_AFTERHUNTERS_KNEW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Harry_KQ405_AfterHunters_Knew_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_Knew_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Harry_KQ405_AfterHunters_Knew_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_KQ405, LOG_KQ405_HARRY_AFTERHUNTERS_V2);
    INFO_CLEARCHOICES(0x15dfd);
}

instance DIA_HARRY_AMBIENT(C_INFO) {
    NPC = 0xe13e;
    NR = 870;
    CONDITION = DIA_HARRY_AMBIENT_CONDITION;
    INFORMATION = DIA_HARRY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_HARRY_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q102)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$SQ311_MilitiaMiner_LeaveMeV2");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HARRY_PICKPOCKET(C_INFO) {
    NPC = 0xe13e;
    NR = 900;
    CONDITION = DIA_HARRY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HARRY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_HARRY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HARRY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15e07);
    INFO_ADDCHOICE(0x15e07, DIALOG_BACK, 0x15e0b);
    INFO_ADDCHOICE(0x15e07, DIALOG_PICKPOCKET, 0x15e0a);
}

func void DIA_HARRY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x84c4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84c4, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15e07);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15e07);
}

func void DIA_HARRY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15e07);
}

