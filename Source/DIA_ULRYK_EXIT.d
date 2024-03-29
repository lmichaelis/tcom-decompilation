instance DIA_ULRYK_EXIT(C_INFO) {
    NPC = 58350;
    NR = 999;
    CONDITION = DIA_ULRYK_EXIT_CONDITION;
    INFORMATION = DIA_ULRYK_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ULRYK_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ULRYK_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ULRYK_HELLO(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_HELLO_CONDITION;
    INFORMATION = DIA_ULRYK_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ULRYK_HELLO_CONDITION() {
    if ((LEAN_ALLOWUSTOGO) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_HELLO_INFO() {
    Q402_HEROISINMINE = TRUE;
    Q402_REMOVESPILLEDWINE();
    if (((Q402_ARETHEWAY) == (0)) || ((Q402_ARETHEWAY) == (1))) {
        FF_APPLYONCEEXTGT(63593, 0, -(1));
    };
    FF_APPLYONCEEXTGT(63597, 0, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_30_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_30_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_30_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_30_07");
    INFO_CLEARCHOICES(82539);
    INFO_ADDCHOICE(82539, "I need to see him!", 82542);
}

func void DIA_ULRYK_HELLO_MUSTMEETHIM() {
    INFO_CLEARCHOICES(82539);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_MustMeetHim_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_MustMeetHim_30_02");
    INFO_CLEARCHOICES(82539);
    INFO_ADDCHOICE(82539, "Any idea where he is now?", 82544);
    INFO_ADDCHOICE(82539, "Listen to me, I've been through too much...", 82543);
}

func void DIA_ULRYK_HELLO_IMAGINE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_Imagine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Imagine_30_02");
}

func void DIA_ULRYK_HELLO_WHERE() {
    INFO_CLEARCHOICES(82539);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_30_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_30_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_IsHeSafeIsHeAlright_30_07");
    INFO_CLEARCHOICES(82539);
    INFO_ADDCHOICE(82539, "Then what do I have to do this time?", 82545);
}

func void DIA_ULRYK_HELLO_Q403_START() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Hello_Q403_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Hello_Q403_Start_30_08");
    AI_STOPPROCESSINFOS(SELF);
    LOG_CREATETOPIC(TOPIC_Q403, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q403), TOPIC_Q403, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q403, LOG_Q403_START);
    Q403_PREPARENPC();
}

instance DIA_ULRYK_Q403_FINISH(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_Q403_FINISH_CONDITION;
    INFORMATION = DIA_ULRYK_Q403_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ULRYK_Q403_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q403)) == (LOG_RUNNING)) && ((Q403_CRAWLERSDONE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_Q403_FINISH_INFO() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_30_01");
    INFO_CLEARCHOICES(82546);
    INFO_ADDCHOICE(82546, "You thought I wouldn't survive?", 82552);
    if (NPC_KNOWSINFO(OTHER, 81987)) {
        INFO_ADDCHOICE(82546, "By the way, I hunted some orcs.", 82553);
    };
}

func void DIA_ULRYK_Q403_JONADDCHOICE() {
    INFO_CLEARCHOICES(82546);
    INFO_ADDCHOICE(82546, "So, can I finally talk with Jon?", 82554);
}

func void DIA_ULRYK_Q403_FINISH_PROGGRES() {
    var int ULRYK_Q403_FINISH_PROGGRES;
    ULRYK_Q403_FINISH_PROGGRES = (ULRYK_Q403_FINISH_PROGGRES) + (1);
    if ((NPC_KNOWSINFO(OTHER, 81987)) == (FALSE)) {
        if ((ULRYK_Q403_FINISH_PROGGRES) == (1)) {
            DIA_ULRYK_Q403_JONADDCHOICE();
        };
    };
    if ((ULRYK_Q403_FINISH_PROGGRES) == (2)) {
        DIA_ULRYK_Q403_JONADDCHOICE();
    };
}

func void DIA_ULRYK_Q403_FINISH_DEAD() {
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Dead_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Dead_30_02");
    DIA_ULRYK_Q403_FINISH_PROGGRES();
}

func void DIA_ULRYK_Q403_FINISH_ORCS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Orcs_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Orcs_30_02");
    DIA_ULRYK_Q403_FINISH_PROGGRES();
}

func void DIA_ULRYK_Q403_FINISH_ORCS_JON() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Jon_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Jon_30_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Jon_30_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Jon_30_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Jon_30_05");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(82546);
    INFO_ADDCHOICE(82546, "I see you have problems with crawlers here.", 82555);
}

func void DIA_ULRYK_Q403_FINISH_ORCS_JON_CRAWLERS() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Crawlers_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Crawlers_30_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Crawlers_30_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Crawlers_30_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Crawlers_30_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Crawlers_30_06");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(82546);
    INFO_ADDCHOICE(82546, "Jon is a crawler hunter?", 82556);
    INFO_ADDCHOICE(82546, "Can't I wait for him here?", 82557);
}

func void DIA_ULRYK_Q403_FINISH_ORCS_JON_CRAWLERS_HUNTER() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Hunter_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Hunter_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Hunter_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Hunter_30_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_ULRYK_Q403_FINISH_ORCS_JON_CRAWLERS_WAIT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Wait_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Wait_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Wait_30_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Wait_30_04");
    AI_RESETFACEANI(OTHER);
    INFO_ADDCHOICE(82546, "In that case, I'm going to the mines.", 82558);
}

func void DIA_ULRYK_Q403_FINISH_ORCS_JON_CRAWLERS_WAIT_GO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q403_Finish_Go_15_01");
    B_STANDUP();
    B_USEFAKESCROLL();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Go_30_02");
    CREATEINVITEMS(SELF, 37341, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37341, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Go_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q403_Finish_Go_30_04");
    INFO_CLEARCHOICES(82546);
    AI_RESETFACEANI(SELF);
    LOG_SETSTATUS(_@(MIS_Q403), TOPIC_Q403, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q403_FINISH);
    AI_LOGENTRY(TOPIC_Q403, LOG_Q403_FINISH);
    AI_FUNCTION(SELF, 63727);
    AI_FUNCTION(SELF, 63924);
}

instance DIA_ULRYK_ASK(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_ASK_CONDITION;
    INFORMATION = DIA_ULRYK_ASK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "There's something else I'd like to ask...";
}

var int ULRYK_ASK_MYRTANA;
var int ULRYK_ASK_MINE;
func int DIA_ULRYK_ASK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q403)) == (LOG_SUCCESS)) {
        if (((ULRYK_ASK_MYRTANA) == (FALSE)) || ((ULRYK_ASK_MINE) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_ASK_CHOICES() {
    INFO_CLEARCHOICES(82559);
    INFO_ADDCHOICE(82559, DIALOG_BACK, 82567);
    if ((ULRYK_ASK_MYRTANA) == (FALSE)) {
        INFO_ADDCHOICE(82559, "It doesn't bother you that the Myrtanians rule Archolos?", 82566);
    };
    if ((ULRYK_ASK_MINE) == (FALSE)) {
        INFO_ADDCHOICE(82559, "Do you have your own silver mine?", 82565);
    };
}

func void DIA_ULRYK_ASK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Ask_15_01");
    DIA_ULRYK_ASK_CHOICES();
}

func void DIA_ULRYK_ASK_MINE() {
    ULRYK_ASK_MINE = TRUE;
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Ask_Mine_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Mine_30_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Mine_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Mine_30_04");
    AI_RESETFACEANI(OTHER);
    DIA_ULRYK_ASK_CHOICES();
}

func void DIA_ULRYK_ASK_MYRTANA() {
    ULRYK_ASK_MYRTANA = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Ask_Myrtana_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Myrtana_30_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Myrtana_30_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Myrtana_30_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Myrtana_30_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ask_Myrtana_30_06");
    AI_RESETFACEANI(OTHER);
    DIA_ULRYK_ASK_CHOICES();
}

func void DIA_ULRYK_ASK_BACK() {
    INFO_CLEARCHOICES(82559);
}

instance DIA_ULRYK_Q404_GUARD(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_Q404_GUARD_CONDITION;
    INFORMATION = DIA_ULRYK_Q404_GUARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The guard won't open the gate...";
}

func int DIA_ULRYK_Q404_GUARD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 82160))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_Q404_GUARD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_Guard_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_Guard_30_02");
    AI_RESETFACEANI(SELF);
}

var int ULRYK_AMBIENT_JONISDEAD;
instance DIA_ULRYK_Q404_AFTERMINE(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_Q404_AFTERMINE_CONDITION;
    INFORMATION = DIA_ULRYK_Q404_AFTERMINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm back! Again, did you think I wouldn't survive?";
}

func int DIA_ULRYK_Q404_AFTERMINE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_Q405)) != (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_Q404_AFTERMINE_INFO() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_30_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_30_03");
    INFO_CLEARCHOICES(82572);
    INFO_ADDCHOICE(82572, "Jon is dead.", 82575);
}

func void DIA_ULRYK_Q404_AFTERMINE_JON() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Jon_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    ULRYK_AMBIENT_JONISDEAD = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Jon_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Jon_30_03");
    INFO_CLEARCHOICES(82572);
    INFO_ADDCHOICE(82572, "Jon tried to kill me...", 82578);
    INFO_ADDCHOICE(82572, "Jon and his unit died in the battle against the crawlers.", 82577);
}

func void DIA_ULRYK_Q404_AFTERMINE_REASONADDCHOICE() {
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(82572);
    INFO_ADDCHOICE(82572, "The reason for the crawler attack was reaching the queen's nest.", 82579);
}

func void DIA_ULRYK_Q404_AFTERMINE_JON_FIGHT() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Fight_30_02");
    DIA_ULRYK_Q404_AFTERMINE_REASONADDCHOICE();
}

func void DIA_ULRYK_Q404_AFTERMINE_JON_TRIED() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Tried_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Tried_30_02");
    DIA_ULRYK_Q404_AFTERMINE_REASONADDCHOICE();
}

func void DIA_ULRYK_Q404_AFTERMINE_JON_TRIED_REASON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Reason_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Reason_30_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Reason_30_03");
    INFO_CLEARCHOICES(82572);
    INFO_ADDCHOICE(82572, "Big, gross, smelly...", 82580);
}

func void DIA_ULRYK_Q404_AFTERMINE_JON_TRIED_REASON_DEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Dead_15_01");
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Dead_15_02");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Dead_30_03");
    INFO_CLEARCHOICES(82572);
    INFO_ADDCHOICE(82572, "Yes, mine should be safe by now.", 82581);
}

func void DIA_ULRYK_Q404_AFTERMINE_JON_TRIED_REASON_DEAD_FREE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q404_AfterMine_Free_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Free_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Free_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Free_30_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q404_AfterMine_Free_30_05");
    CREATEINVITEMS(SELF, 34203, Q404_ULRYKREWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, Q404_ULRYKREWARD);
    B_GIVEPLAYERXP(XP_Q404_ULRYKREWARD);
    Q404_GIVEREWARD_WEAPON();
    Q404_GIVEREWARD_POTION();
    INFO_CLEARCHOICES(82572);
}

instance DIA_ULRYK_SQ416_GOODJOB(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_SQ416_GOODJOB_CONDITION;
    INFORMATION = DIA_ULRYK_SQ416_GOODJOB_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ULRYK_SQ416_GOODJOB_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) && (NPC_ISINSTATE(SELF, 61599))) {
        if ((SQ416_RAMSEYPARTY) != (2)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_SQ416_GOODJOB_INFO() {
    var int SQ416_AMBIENT_ULRYK;
    if ((SQ416_AMBIENT_ULRYK) == (FALSE)) {
        SQ416_AMBIENT_ULRYK = TRUE;
        B_GIVEPLAYERXP(XP_SQ416_AMBIENT);
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_SQ416_GoodJob_30_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ULRYK_Q515_HELLO(C_INFO) {
    NPC = 58350;
    NR = 1;
    CONDITION = DIA_ULRYK_Q515_HELLO_CONDITION;
    INFORMATION = DIA_ULRYK_Q515_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ULRYK_Q515_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q515)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 79701))) {
        if (((NPC_GETDISTTOWP(KDW_203_RIORDIAN, "PART5_VOLFZACKE_RIORDIAN_ULRYK")) <= (300)) && ((NPC_GETDISTTOWP(NONE_15_ULRYK, "PART5_VOLFZACKE_ULRYK")) <= (300))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int ULRYK_Q515_WHAT;
var int ULRYK_Q515_NOWAY;
var int ULRYK_Q515_NOSWORD;
var int ULRYK_Q515_YES;
var int ULRYK_Q515_MYSWORD;
var int ULRYK_Q515_NOCHOICE;
func void DIA_ULRYK_Q515_HELLO_CHOICES() {
    INFO_CLEARCHOICES(82586);
    if ((ULRYK_Q515_NOWAY) == (TRUE)) {
        if ((ULRYK_Q515_MYSWORD) == (FALSE)) {
            INFO_ADDCHOICE(82586, "The Peacemaker stays with me.", 82599);
        };
        if ((ULRYK_Q515_NOCHOICE) == (FALSE)) {
            INFO_ADDCHOICE(82586, "I guess I have no choice. Here's the Peacemaker.", 82602);
        };
    };
    if ((ULRYK_Q515_YES) == (FALSE)) {
        INFO_ADDCHOICE(82586, "Here, the Peacemaker has belonged to your family for centuries.", 82601);
    };
    if ((ULRYK_Q515_NOSWORD) == (FALSE)) {
        INFO_ADDCHOICE(82586, "We have not been able to get a Peacemaker.", 82598);
    };
    if ((ULRYK_Q515_NOWAY) == (FALSE)) {
        INFO_ADDCHOICE(82586, "I'm not giving you the Peacemaker. Let us through.", 82597);
    };
    if ((ULRYK_Q515_WHAT) == (FALSE)) {
        if ((ULRYK_Q515_NOSWORD) == (FALSE)) {
            INFO_ADDCHOICE(82586, "What are you talking about?", 82596);
        };
    };
}

func void DIA_ULRYK_Q515_HELLO_INFO() {
    TRIA_INVITE(KDW_203_RIORDIAN);
    TRIA_START();
    AI_LOOKATNPC(OTHER, SELF);
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_01");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_02");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_03");
    };
    AI_FUNCTION(SELF, 82603);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_04");
    TRIA_WAIT();
    TRIA_NEXT(KDW_203_RIORDIAN);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_05");
    AI_TURNTONPC(SELF, KDW_203_RIORDIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_06");
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_TURNTONPC(SELF, KDW_203_RIORDIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_07");
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_30_08");
    DIA_ULRYK_Q515_HELLO_CHOICES();
}

func void DIA_ULRYK_Q515_HELLO_WHAT() {
    ULRYK_Q515_WHAT = TRUE;
    AI_FUNCTION(SELF, 82604);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_What_15_01");
    AI_FUNCTION(SELF, 82605);
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_What_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_What_30_03");
    if ((Q514_TELLRIORDIANFOUNDSWORD) == (2)) {
        TRIA_WAIT();
        TRIA_NEXT(KDW_203_RIORDIAN);
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_What_30_04");
    };
    DIA_ULRYK_Q515_HELLO_CHOICES();
}

func void DIA_ULRYK_Q515_HELLO_NOWAY() {
    ULRYK_Q515_NOWAY = TRUE;
    AI_FUNCTION(SELF, 82606);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoWay_15_01");
    if ((Q514_TELLRIORDIANFOUNDSWORD) == (2)) {
        TRIA_WAIT();
        TRIA_NEXT(KDW_203_RIORDIAN);
        AI_TURNTONPC(SELF, HERO);
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_02");
        AI_TURNTONPC(HERO, NONE_15_ULRYK);
        AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoWay_15_03");
        TRIA_WAIT();
        TRIA_NEXT(NONE_15_ULRYK);
        AI_TURNTONPC(HERO, SELF);
        AI_TURNTONPC(KDW_203_RIORDIAN, NONE_15_ULRYK);
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_05");
    };
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_06");
    AI_FUNCTION(SELF, 82607);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoWay_30_08");
    DIA_ULRYK_Q515_HELLO_CHOICES();
}

func void DIA_ULRYK_Q515_HELLO_NOSWORD() {
    ULRYK_Q515_NOSWORD = TRUE;
    AI_FUNCTION(SELF, 82608);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoSword_15_01");
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoSword_30_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoSword_30_03");
    DIA_ULRYK_Q515_HELLO_CHOICES();
}

func void DIA_ULRYK_Q515_HELLO_MYSWORD() {
    AI_FUNCTION(SELF, 82609);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_MySword_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_MySword_15_02");
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 82610);
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_MySword_30_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_MySword_30_04");
    AI_FUNCTION(SELF, 82614);
    TRIA_FINISH();
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ULRYK_Q515_HELLO_GIVESWORD() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_203_RIORDIAN);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK);
    AI_TURNTONPC(KDW_203_RIORDIAN, SELF);
    AI_TURNTONPC(SELF, KDW_203_RIORDIAN);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_03");
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_04");
    AI_STOPLOOKAT(SELF);
    AI_FUNCTION(SELF, 82612);
    if ((NPC_HASITEMS(OTHER, 39466)) == (0)) {
        CREATEINVITEMS(OTHER, 39466, 1);
    };
    if ((NPC_HASITEMS(SELF, 36087)) == (0)) {
        CREATEINVITEM(SELF, 36087);
        AI_USEITEMTOSTATE(SELF, 36087, 1);
        AI_WAIT(SELF, 1082130432);
        AI_USEITEMTOSTATE(SELF, 36087, -(1));
    };
    B_GIVEINVITEMS(OTHER, SELF, 39466, 1);
    AI_FUNCTION(SELF, 82613);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_05");
    if ((ULRYK_Q515_YES) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoChoice_15_07");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoChoice_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_13");
    AI_TURNAWAY(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_14");
    AI_TURNTONPC(SELF, DJG_10040_WOLFSON_Q515);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_15");
    AI_TURNTONPC(SELF, DJG_10041_WOLFSON_Q515);
    AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Q515_Hello_NoChoice_30_16");
    TRIA_FINISH();
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 82615);
}

func void DIA_ULRYK_Q515_HELLO_YES() {
    ULRYK_Q515_YES = TRUE;
    AI_FUNCTION(SELF, 82611);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_Yes_15_01");
    DIA_ULRYK_Q515_HELLO_GIVESWORD();
}

func void DIA_ULRYK_Q515_HELLO_NOCHOICE() {
    ULRYK_Q515_NOCHOICE = TRUE;
    AI_FUNCTION(SELF, 82611);
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Q515_Hello_NoChoice_15_01");
    DIA_ULRYK_Q515_HELLO_GIVESWORD();
}

func void ULRYK_Q515_CHANGECAMERA_01() {
    WLD_SENDTRIGGER("KM_ULRYK_02");
    WLD_SENDUNTRIGGER("KM_ULRYK_01");
}

func void ULRYK_Q515_CHANGECAMERA_02() {
    WLD_SENDTRIGGER("KM_ULRYK_03");
    WLD_SENDUNTRIGGER("KM_ULRYK_02");
}

func void ULRYK_Q515_CHANGECAMERA_03() {
    WLD_SENDTRIGGER("KM_ULRYK_04");
    WLD_SENDUNTRIGGER("KM_ULRYK_03");
}

func void ULRYK_Q515_CHANGECAMERA_04() {
    WLD_SENDTRIGGER("KM_ULRYK_05");
    WLD_SENDUNTRIGGER("KM_ULRYK_02");
    WLD_SENDUNTRIGGER("KM_ULRYK_04");
    WLD_SENDUNTRIGGER("KM_ULRYK_06");
    WLD_SENDUNTRIGGER("KM_ULRYK_07");
    WLD_SENDUNTRIGGER("KM_ULRYK_09");
}

func void ULRYK_Q515_CHANGECAMERA_05() {
    WLD_SENDTRIGGER("KM_ULRYK_06");
    WLD_SENDUNTRIGGER("KM_ULRYK_05");
}

func void ULRYK_Q515_CHANGECAMERA_06() {
    WLD_SENDTRIGGER("KM_ULRYK_07");
    WLD_SENDUNTRIGGER("KM_ULRYK_02");
    WLD_SENDUNTRIGGER("KM_ULRYK_04");
    WLD_SENDUNTRIGGER("KM_ULRYK_06");
    WLD_SENDUNTRIGGER("KM_ULRYK_09");
}

func void ULRYK_Q515_CHANGECAMERA_07() {
    WLD_SENDTRIGGER("KM_ULRYK_08");
    WLD_SENDUNTRIGGER("KM_ULRYK_02");
    WLD_SENDUNTRIGGER("KM_ULRYK_04");
    WLD_SENDUNTRIGGER("KM_ULRYK_06");
    WLD_SENDUNTRIGGER("KM_ULRYK_07");
    WLD_SENDUNTRIGGER("KM_ULRYK_09");
}

func void ULRYK_Q515_CHANGECAMERA_08() {
    WLD_SENDTRIGGER("KM_ULRYK_09");
    WLD_SENDUNTRIGGER("KM_ULRYK_08");
}

func void ULRYK_Q515_CHANGECAMERA_09() {
    WLD_SENDTRIGGER("KM_ULRYK_10");
    WLD_SENDUNTRIGGER("KM_ULRYK_02");
    WLD_SENDUNTRIGGER("KM_ULRYK_04");
    WLD_SENDUNTRIGGER("KM_ULRYK_06");
    WLD_SENDUNTRIGGER("KM_ULRYK_07");
    WLD_SENDUNTRIGGER("KM_ULRYK_09");
}

func void ULRYK_Q515_CHANGECAMERA_10() {
    WLD_SENDTRIGGER("KM_ULRYK_11");
    WLD_SENDUNTRIGGER("KM_ULRYK_10");
}

func void ULRYK_Q515_CHANGECAMERA_11() {
    WLD_SENDTRIGGER("KM_ULRYK_12");
    WLD_SENDUNTRIGGER("KM_ULRYK_11");
}

func void ULRYK_Q515_KILLMARVIN() {
    Q515_KILLMARVIN = 1;
}

func void ULRYK_Q515_CHANGECAMERA_END() {
    FF_APPLYONCEEXT(82616, 1000, 2);
}

func void ULRYK_Q515_CHANGECAMERA_APPLY_V2() {
    var int ULRYK_Q515_CHANGECAMERA_V2_COUNT;
    ULRYK_Q515_CHANGECAMERA_V2_COUNT = (ULRYK_Q515_CHANGECAMERA_V2_COUNT) + (1);
    if ((ULRYK_Q515_CHANGECAMERA_V2_COUNT) == (1)) {
        B_STARTOTHERROUTINE(NONE_15_ULRYK, TOT);
        NPC_REFRESH(NONE_15_ULRYK);
    };
    if ((ULRYK_Q515_CHANGECAMERA_V2_COUNT) == (2)) {
        FADESCREENTOBLACKF(3, 82618, 1000);
    };
}

func void ULRYK_Q515_CHANGECAMERA_END_FADESCREEN() {
    FF_APPLYONCEEXT(82619, 75, 4);
}

func void ULRYK_Q515_CHANGECAMERA_APPLY() {
    var int ULRYK_Q515_CHANGECAMERA_COUNT;
    ULRYK_Q515_CHANGECAMERA_COUNT = (ULRYK_Q515_CHANGECAMERA_COUNT) + (1);
    if ((ULRYK_Q515_CHANGECAMERA_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("KM_ULRYK_01");
        WLD_SENDUNTRIGGER("KM_ULRYK_02");
        WLD_SENDUNTRIGGER("KM_ULRYK_03");
        WLD_SENDUNTRIGGER("KM_ULRYK_04");
        WLD_SENDUNTRIGGER("KM_ULRYK_05");
        WLD_SENDUNTRIGGER("KM_ULRYK_06");
        WLD_SENDUNTRIGGER("KM_ULRYK_07");
        WLD_SENDUNTRIGGER("KM_ULRYK_08");
        WLD_SENDUNTRIGGER("KM_ULRYK_09");
        WLD_SENDUNTRIGGER("KM_ULRYK_10");
        WLD_SENDUNTRIGGER("KM_ULRYK_11");
        WLD_SENDUNTRIGGER("KM_ULRYK_12");
        DIACAM_ENABLE();
        B_Q515_CHANGERTNWOLFSSON();
        B_Q515_REMOVEWOLFSSON();
        HERO.AIVAR[4] = FALSE;
        FADESCREENFROMBLACK(1);
    };
}

instance DIA_ULRYK_AMBIENT(C_INFO) {
    NPC = 58350;
    NR = 998;
    CONDITION = DIA_ULRYK_AMBIENT_CONDITION;
    INFORMATION = DIA_ULRYK_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the situation?";
}

func int DIA_ULRYK_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 82539)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ulryk_Ambient_15_00");
    if ((LOG_GETSTATUS(MIS_Q403)) != (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_Q403)) == (LOG_SUCCESS)) && ((ULRYK_AMBIENT_JONISDEAD) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ambient_03_02");
    };
    if (((ULRYK_AMBIENT_JONISDEAD) == (TRUE)) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ambient_03_03");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ulryk_Ambient_03_04");
    };
}

instance DIA_ULRYK_PICKPOCKET(C_INFO) {
    NPC = 58350;
    NR = 900;
    CONDITION = DIA_ULRYK_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ULRYK_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_ULRYK_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ULRYK_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(82624);
    INFO_ADDCHOICE(82624, DIALOG_BACK, 82628);
    INFO_ADDCHOICE(82624, DIALOG_PICKPOCKET, 82627);
}

func void DIA_ULRYK_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 35327, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35327, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(82624);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(82624);
}

func void DIA_ULRYK_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(82624);
}

