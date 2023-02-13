instance DIA_SUNDER_EXIT(C_INFO) {
    NPC = 57718;
    NR = 999;
    CONDITION = DIA_SUNDER_EXIT_CONDITION;
    INFORMATION = DIA_SUNDER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SUNDER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SUNDER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SUNDER_AMBIENT(C_INFO) {
    NPC = 57718;
    NR = 998;
    CONDITION = DIA_SUNDER_AMBIENT_CONDITION;
    INFORMATION = DIA_SUNDER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_SUNDER_AMBIENT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    return TRUE;
}

func void DIA_SUNDER_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_Ambient_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient_14_01");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SUNDER_FAQ001_HELLO(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_FAQ001_HELLO_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_HELLO_INFO;
    DESCRIPTION = "You're Sunder?";
}

func int DIA_SUNDER_FAQ001_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Hello_15_00");
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Hello_14_01");
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_DRUNK);
    AI_STOPPROCESSINFOS(SELF);
}

var int SUNDERBEER;
instance DIA_SUNDER_FAQ001_GIVEBEER(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_FAQ001_GIVEBEER_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_GIVEBEER_INFO;
    IMPORTANT = TRUE;
    PERMANENT = TRUE;
}

func int DIA_SUNDER_FAQ001_GIVEBEER_CONDITION() {
    if ((((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 71420))) && ((SUNDERBEER) == (FALSE))) && ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_GIVEBEER_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_14_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_14_01");
    INFO_CLEARCHOICES(71424);
    INFO_ADDCHOICE(71424, "I'm still working on it.", 71427);
    if (NPC_HASITEMS(OTHER, 37179)) {
        INFO_ADDCHOICE(71424, "That should get you back on your feet.", 71428);
    };
}

func void DIA_SUNDER_FAQ001_GIVEBEER_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_No_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_No_14_01");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SUNDER_FAQ001_GIVEBEER_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Yes_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 37179, 1);
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    CREATEINVITEM(SELF, 36040);
    AI_USEITEMTOSTATE(SELF, 36040, 1);
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Yes_03_03");
    INFO_CLEARCHOICES(71424);
    INFO_ADDCHOICE(71424, "Dishwater in a pint glass.", 71430);
    INFO_ADDCHOICE(71424, "Vengard Light.", 71431);
}

func void DIA_SUNDER_FAQ001_GIVEBEER_FINALCHOICES() {
    FAQ001_MARVINFOUNDSUNDER = TRUE;
    FAQ001_PREPARECORPSES();
    AI_STOPLOOKAT(SELF);
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_USEITEMTOSTATE(SELF, 36040, -(1));
    SUNDERBEER = TRUE;
    AI_LOOKATNPC(SELF, OTHER);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(71424);
    INFO_ADDCHOICE(71424, "Dima is waiting to hear from you.", 71434);
    INFO_ADDCHOICE(71424, "What do you do?", 71433);
    INFO_ADDCHOICE(71424, "Why were you so drunk last night?", 71432);
}

func void DIA_SUNDER_FAQ001_GIVEBEER_YES_SHIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_Shit_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Shit_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Shit_03_03");
    DIA_SUNDER_FAQ001_GIVEBEER_FINALCHOICES();
}

func void DIA_SUNDER_FAQ001_GIVEBEER_YES_BEER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_Beer_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Beer_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_Beer_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Beer_03_04");
    DIA_SUNDER_FAQ001_GIVEBEER_FINALCHOICES();
}

func void DIA_SUNDER_FAQ001_GIVEBEER_WHYDRUNK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_15_00");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_14_04");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_15_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_14_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_WhyDrunk_15_07");
    AI_RESETFACEANI(OTHER);
}

func void DIA_SUNDER_FAQ001_GIVEBEER_JOB() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_Job_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Job_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_Job_14_02");
}

func void DIA_SUNDER_FAQ001_GIVEBEER_DIMAWAITS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_15_00");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_GiveBeer_DimaWaits_14_06");
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_FOUND);
}

instance DIA_SUNDER_FAQ001_LOOK(C_INFO) {
    NPC = 57718;
    NR = 5;
    CONDITION = DIA_SUNDER_FAQ001_LOOK_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_LOOK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you happen to know what this man looks like?";
}

func int DIA_SUNDER_FAQ001_LOOK_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) && ((SUNDERBEER) == (TRUE))) && ((FAQ001_KNOWHOWMESSENGERLOOK) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_LOOK_HOWHELOOKS() {
    FAQ001_KNOWHOWMESSENGERLOOK = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Look_14_01");
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_VISUAL);
}

func void DIA_SUNDER_FAQ001_LOOK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Look_15_00");
    DIA_SUNDER_FAQ001_LOOK_HOWHELOOKS();
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Look_14_02");
}

instance DIA_SUNDER_FAQ001_SEARCH(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_FAQ001_SEARCH_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_SEARCH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why don't we look for him together?";
}

func int DIA_SUNDER_FAQ001_SEARCH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) && ((SUNDERBEER) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_SEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_15_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_14_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_14_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_14_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_14_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_14_09");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(71439);
    INFO_ADDCHOICE(71439, "I'm not gonna lie to Dima.", 71443);
    INFO_ADDCHOICE(71439, "Fine. Lead the way.", 71442);
}

func void DIA_SUNDER_FAQ001_SEARCH_GO() {
    FAQ001_SUNDERGUIDEUS = TRUE;
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_Go_15_00");
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_ACCEPT);
    INFO_CLEARCHOICES(71439);
    AI_STOPPROCESSINFOS(HERO);
    FAQ001_SUNDER_RTNCHECK = 2;
    NPC_EXCHANGEROUTINE(SELF, "FAQ001_GUIDE");
}

func void DIA_SUNDER_FAQ001_SEARCH_NOWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_NoWay_15_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Search_NoWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Search_NoWay_14_02");
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_REFUSE);
    INFO_CLEARCHOICES(71439);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_SUNDER_FAQ001_PLACE(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_FAQ001_PLACE_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_PLACE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SUNDER_FAQ001_PLACE_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "PART12_PATH_40")) <= (750)) && ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_PLACE_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Place_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Place_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Place_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Place_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Place_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Place_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Place_15_07");
    if ((FAQ001_KNOWHOWMESSENGERLOOK) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Place_03_08");
        DIA_SUNDER_FAQ001_LOOK_HOWHELOOKS();
    };
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_PLACE);
    AI_STOPPROCESSINFOS(SELF);
    FAQ001_SUNDER_RTNCHECK = 3;
    NPC_EXCHANGEROUTINE(SELF, "FAQ001_WAIT");
}

instance DIA_SUNDER_FAQ001_FOUNDBODY(C_INFO) {
    NPC = 57718;
    NR = 2;
    CONDITION = DIA_SUNDER_FAQ001_FOUNDBODY_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_FOUNDBODY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here? Why did you run away from the woods?";
}

func int DIA_SUNDER_FAQ001_FOUNDBODY_CONDITION() {
    if (((FAQ001_MARVINFOUNDDEADMEESENGER) == (2)) && ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_FOUNDBODY_REALLY() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Really_15_02");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Really_15_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Really_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Really_15_09");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Really_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_Really_03_12");
    INFO_CLEARCHOICES(71447);
    NPC_EXCHANGEROUTINE(SLD_5002_SUNDER, START);
    NPC_EXCHANGEROUTINE(MIL_709_KIPPER, START);
    AI_LOGENTRY(TOPIC_FAQ001, LOG_FAQ001_SUNDER_FOUNDBODY);
}

func void DIA_SUNDER_FAQ001_FOUNDBODY_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_03_04");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_FoundBody_03_05");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(71447);
    INFO_ADDCHOICE(71447, "The same thing could have happened to you as the man you were waiting for.", 71451);
    INFO_ADDCHOICE(71447, "It doesn't matter. I think I found the man you're looking for.", 71452);
}

func void DIA_SUNDER_FAQ001_FOUNDBODY_DEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Dead_15_01");
    DIA_SUNDER_FAQ001_FOUNDBODY_REALLY();
}

func void DIA_SUNDER_FAQ001_FOUNDBODY_FOUND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_FoundBody_Found_15_01");
    DIA_SUNDER_FAQ001_FOUNDBODY_REALLY();
}

instance DIA_SUNDER_FAQ001_SURPRISED(C_INFO) {
    NPC = 57718;
    NR = 3;
    CONDITION = DIA_SUNDER_FAQ001_SURPRISED_CONDITION;
    INFORMATION = DIA_SUNDER_FAQ001_SURPRISED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Aren't you surprised at the state I found him in?";
}

func int DIA_SUNDER_FAQ001_SURPRISED_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71447)) && ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_FAQ001_SURPRISED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_FAQ001_Surprised_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Surprised_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Surprised_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_FAQ001_Surprised_03_04");
}

instance DIA_SUNDER_HUNTERS(C_INFO) {
    NPC = 57718;
    NR = 4;
    CONDITION = DIA_SUNDER_HUNTERS_CONDITION;
    INFORMATION = DIA_SUNDER_HUNTERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hunter Unit?";
}

func int DIA_SUNDER_HUNTERS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 71453)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_HUNTERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_Hunters_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Hunters_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Hunters_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Hunters_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Hunters_03_05");
    AI_RESETFACEANI(SELF);
}

instance DIA_SUNDER_QA401_LETSGO(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_QA401_LETSGO_CONDITION;
    INFORMATION = DIA_SUNDER_QA401_LETSGO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's go check out the cave.";
}

func int DIA_SUNDER_QA401_LETSGO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 70188))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_QA401_LETSGO_INFO() {
    SELF.AIVAR[15] = TRUE;
    WLD_SENDTRIGGER("QA401_MEATBUG_STONE");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_LetsGo_15_01");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_LetsGo_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_LetsGo_15_03");
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    QA401_SUNDER_RTNCHECK = 2;
    NPC_EXCHANGEROUTINE(SELF, "QA401_BEACH_GUIDE");
}

instance DIA_SUNDER_QA401_RIGHTPLACE(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_QA401_RIGHTPLACE_CONDITION;
    INFORMATION = DIA_SUNDER_QA401_RIGHTPLACE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SUNDER_QA401_RIGHTPLACE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 71459))) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_QA401_RIGHTPLACE_INFO() {
    SELF.AIVAR[15] = FALSE;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_03_01");
    INFO_CLEARCHOICES(71462);
    INFO_ADDCHOICE(71462, "Here?", 71465);
}

func void DIA_SUNDER_QA401_RIGHTPLACE_HERE() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_RightPlace_Here_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_Here_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_Here_03_03");
    INFO_CLEARCHOICES(71462);
    INFO_ADDCHOICE(71462, DIALOG_GIVEMESCROLL, 71468);
    INFO_ADDCHOICE(71462, "What do I have to remember?", 71467);
    INFO_ADDCHOICE(71462, "So you're not even sure if the tunnels connect?", 71466);
}

func void DIA_SUNDER_QA401_RIGHTPLACE_HERE_SURE() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_RightPlace_Sure_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_Sure_03_02");
    AI_RESETFACEANI(OTHER);
}

func void DIA_SUNDER_QA401_RIGHTPLACE_HERE_REMEMBER() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_RightPlace_Remember_15_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_Remember_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_QA401_RightPlace_Remember_03_03");
}

func void DIA_SUNDER_QA401_RIGHTPLACE_HERE_GIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_QA401_RightPlace_Give_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    CREATEINVITEMS(SELF, 38188, 1);
    B_GIVEINVITEMS(SELF, OTHER, 38188, 1);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(71462);
    AI_STOPPROCESSINFOS(SELF);
    QA401_SUNDER_RTNCHECK = 3;
    NPC_EXCHANGEROUTINE(SELF, "QA401_BEACH_WAIT2");
    AI_LOGENTRY(TOPIC_QA401, LOG_QA401_SUNDER_PLAN);
}

instance DIA_SUNDER_CANYOUTEACH(C_INFO) {
    NPC = 57718;
    NR = 3;
    CONDITION = DIA_SUNDER_CANYOUTEACH_CONDITION;
    INFORMATION = DIA_SUNDER_CANYOUTEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you train me?";
}

func int DIA_SUNDER_CANYOUTEACH_CONDITION() {
    if ((OTHER.GUILD) == (GIL_SLD)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_CANYOUTEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_CanYouTeach_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_CanYouTeach_03_01");
    if ((MARVIN_ARAXOSSPECIALIZATION) >= (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_CanYouTeach_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_CanYouTeach_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_CanYouTeach_03_02");
    LOG_CREATETOPIC(TOPIC_ARAXOSTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_ARAXOSTEACHER, LOG_ARAXOSTEACHER_SUNDER);
}

var int SUNDER_NOMORE;
var int SUNDER_CURRENT1HLEVEL;
var int SUNDER_CURRENT2HLEVEL;
var int SUNDER_CURRENTSTRLEVEL;
var string SUNDER_PRINTS;
const int SUNDER_RLEVEL = 50;
instance DIA_SUNDER_TEACH(C_INFO) {
    NPC = 57718;
    NR = 1;
    CONDITION = DIA_SUNDER_TEACH_CONDITION;
    INFORMATION = DIA_SUNDER_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to train.";
}

func int DIA_SUNDER_TEACH_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 71469)) && ((SUNDER_NOMORE) == (FALSE))) && ((OTHER.GUILD) == (GIL_SLD))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_TEACH_CHOICES() {
    var int SUNDER_GOLDCOST;
    SUNDER_CURRENT1HLEVEL = OTHER.AIVAR[84];
    SUNDER_CURRENT2HLEVEL = OTHER.AIVAR[85];
    SUNDER_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    SUNDER_GOLDCOST = 0;
    INFO_CLEARCHOICES(71478);
    INFO_ADDCHOICE(71478, DIALOG_BACK, 71485);
    INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), SUNDER_GOLDCOST), 71487);
    INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 5), (SUNDER_GOLDCOST) * (5)), 71489);
    INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), SUNDER_GOLDCOST), 71493);
    INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (SUNDER_GOLDCOST) * (5)), 71495);
    if ((MARVIN_ARAXOSSPECIALIZATION) >= (1)) {
        INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), SUNDER_GOLDCOST), 71490);
        INFO_ADDCHOICE(71478, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 5), (SUNDER_GOLDCOST) * (5)), 71491);
    };
}

func void DIA_SUNDER_TRAIN_LETSGO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_03_01");
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACH_NOMORE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_NoMore_03_01");
    SUNDER_NOMORE = TRUE;
}

func void DIA_SUNDER_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_Teach_15_00");
    if (!(NPC_KNOWSINFO(OTHER, 71240))) {
        if (((OTHER.AIVAR[84]) >= (40)) && ((OTHER.AIVAR[81]) >= (50))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
        } else {
            DIA_SUNDER_TRAIN_LETSGO();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 71240)) {
        if ((((MARVIN_ARAXOSSPECIALIZATION) < (1)) && ((OTHER.AIVAR[84]) >= (60))) && ((OTHER.AIVAR[81]) >= (80))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
        } else if (((((MARVIN_ARAXOSSPECIALIZATION) >= (1)) && ((OTHER.AIVAR[85]) >= (80))) && ((OTHER.AIVAR[84]) >= (60))) && ((OTHER.AIVAR[81]) >= (80))) {
            DIA_SUNDER_TEACH_NOMORE();
        } else {
            DIA_SUNDER_TRAIN_LETSGO();
        };
    };
}

func void DIA_SUNDER_TEACH_BACK() {
    INFO_CLEARCHOICES(71478);
}

func void DIA_SUNDER_TRAIN_1H_1_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_1H1_03_01");
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACH_1H1() {
    if (!(NPC_KNOWSINFO(OTHER, 71240))) {
        if ((SUNDER_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            DIA_SUNDER_TRAIN_1H_1_GOODJOB();
        } else if (((OTHER.AIVAR[84]) >= (40)) && ((SUNDER_CURRENT1HLEVEL) == (OTHER.AIVAR[84]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(SUNDER_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_SUNDER_TEACH_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 71240)) {
        if ((SUNDER_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            DIA_SUNDER_TRAIN_1H_1_GOODJOB();
        };
    };
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TRAIN_1H_5_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_1H5_03_03");
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACH_1H5() {
    if (!(NPC_KNOWSINFO(OTHER, 71240))) {
        if ((SUNDER_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            DIA_SUNDER_TRAIN_1H_5_GOODJOB();
        } else if (((OTHER.AIVAR[84]) >= (40)) && ((SUNDER_CURRENT2HLEVEL) == (OTHER.AIVAR[84]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(SUNDER_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_SUNDER_TEACH_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 71240)) {
        if ((SUNDER_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            DIA_SUNDER_TRAIN_1H_5_GOODJOB();
        };
    };
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACH_2H1() {
    if ((OTHER.AIVAR[85]) < (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_2H1_03_00");
        SUNDER_PRINTS = CONCATSTRINGS(PRINT_MINSKILL, INTTOSTRING(SUNDER_RLEVEL));
    };
    if ((SUNDER_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_2H1_03_01");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 80);
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACH_2H5() {
    if ((OTHER.AIVAR[85]) < (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_2H5_03_02");
        SUNDER_PRINTS = CONCATSTRINGS(PRINT_MINSKILL, INTTOSTRING(SUNDER_RLEVEL));
    };
    if ((SUNDER_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Teach_2H5_03_03");
    };
    B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 80);
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TRAIN_TEACH_STR1_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_TeachSTR1_03_01");
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACHSTR1() {
    if (!(NPC_KNOWSINFO(OTHER, 71240))) {
        if ((SUNDER_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            DIA_SUNDER_TRAIN_TEACH_STR1_GOODJOB();
        } else if (((OTHER.AIVAR[81]) >= (50)) && ((SUNDER_CURRENTSTRLEVEL) == (OTHER.AIVAR[81]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(SUNDER_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_SUNDER_TEACH_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 71240)) {
        if ((SUNDER_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            DIA_SUNDER_TRAIN_TEACH_STR1_GOODJOB();
        };
    };
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TRAIN_TEACH_STR5_GOODJOB() {
    AI_OUTPUT(SELF, OTHER, "DIA_Sunder_TeachSTR5_03_01");
    DIA_SUNDER_TEACH_CHOICES();
}

func void DIA_SUNDER_TEACHSTR5() {
    if (!(NPC_KNOWSINFO(OTHER, 71240))) {
        if ((SUNDER_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            DIA_SUNDER_TRAIN_TEACH_STR5_GOODJOB();
        } else if (((OTHER.AIVAR[81]) >= (50)) && ((SUNDER_CURRENTSTRLEVEL) == (OTHER.AIVAR[81]))) {
            B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
            SUNDER_PRINTS = PRINT_ARXPROMOTIONNEEDED;
            PRINTSCREEN(SUNDER_PRINTS, -(1), YPOS_LEVELUP, FONT_SCREEN, 2);
            DIA_SUNDER_TEACH_CHOICES();
        };
    };
    if (NPC_KNOWSINFO(OTHER, 71240)) {
        if ((SUNDER_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            DIA_SUNDER_TRAIN_TEACH_STR5_GOODJOB();
        };
    };
    DIA_SUNDER_TEACH_CHOICES();
}

instance DIA_SUNDER_AMBIENT2(C_INFO) {
    NPC = 57718;
    NR = 998;
    CONDITION = DIA_SUNDER_AMBIENT2_CONDITION;
    INFORMATION = DIA_SUNDER_AMBIENT2_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_SUNDER_AMBIENT2_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_FAQ001)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_AMBIENT2_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Sunder_Ambient2_15_00");
    if ((OTHER.GUILD) != (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient2_14_01");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        if ((MARVIN_ARAXOSSPECIALIZATION) == (0)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient2_14_02");
        } else if ((MARVIN_ARAXOSSPECIALIZATION) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient2_14_03");
        } else if ((MARVIN_ARAXOSSPECIALIZATION) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient2_14_04");
        } else if (((MARVIN_ARAXOSSPECIALIZATION) == (3)) || ((MARVIN_ARAXOSSPECIALIZATION) == (4))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Sunder_Ambient2_14_05");
        };
    };
}

instance DIA_SUNDER_PICKPOCKET(C_INFO) {
    NPC = 57718;
    NR = 900;
    CONDITION = DIA_SUNDER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SUNDER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_SUNDER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SUNDER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(71499);
    INFO_ADDCHOICE(71499, DIALOG_BACK, 71503);
    INFO_ADDCHOICE(71499, DIALOG_PICKPOCKET, 71502);
}

func void DIA_SUNDER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 36370, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36370, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(71499);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(71499);
}

func void DIA_SUNDER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(71499);
}

