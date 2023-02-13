instance DIA_4021_CITYGUARD_EXIT(C_INFO) {
    NPC = 55684;
    NR = 999;
    CONDITION = DIA_4021_CITYGUARD_EXIT_CONDITION;
    INFORMATION = DIA_4021_CITYGUARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_4021_CITYGUARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_4021_CITYGUARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int CITYGUARD_FIRSTDIALOGUE;
const string CITYGUARD_CHECKPOINT = "PART2_BRIDGE_GUARD_02";
instance DIA_4021_CITYGUARD_FIRSTGATEVISIT(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_4021_CITYGUARD_FIRSTGATEVISIT_CONDITION;
    INFORMATION = DIA_4021_CITYGUARD_FIRSTGATEVISIT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_4021_CITYGUARD_FIRSTGATEVISIT_CONDITION() {
    if ((CITYENTERED) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    SELF.AIVAR[14] = FALSE;
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void CITYGUARD4021_KILLHERO() {
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
}

func void DIA_4021_CITYGUARD_OPENGATE() {
    AI_TURNAWAY(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_02_06");
    AI_FUNCTION(SELF, 66824);
    AI_TURNTONPC(SELF, OTHER);
}

func void EASTGATEOPENEDBYGUARD() {
    DIA_4021_CITYGUARD_OPENGATE();
    CITYENTERED = TRUE;
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_CANGOTOCITY);
    Q201_FINISHQUEST();
    AI_STOPPROCESSINFOS(SELF);
}

func void EASTGATETRIGGERFUNCTION() {
    if ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) {
        if ((Q312_GATESCLOSED) == (TRUE)) {
            Q312_GATESCLOSED = FALSE;
        };
    };
    WLD_SENDTRIGGER("CITYEASTGATEOPEN");
    WLD_SENDTRIGGER("WESTCITYGATE");
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_INFO() {
    var C_ITEM ITM;
    if ((CITYGUARD_FIRSTDIALOGUE) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_02_01");
        INFO_CLEARCHOICES(66819);
        INFO_ADDCHOICE(66819, "Actually, I'm just looking around.", 66833);
        INFO_ADDCHOICE(66819, "I think it's obvious, to the city.", 66828);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_02_02");
    INFO_CLEARCHOICES(66819);
    if (((GQ001_CANTRYENTERCITY) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) {
        if ((NPC_HASITEMS(OTHER, 37136)) > (0)) {
            INFO_ADDCHOICE(66819, "Here's my pass.", 66832);
        };
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (TRUE))) {
            if ((NPC_HASITEMS(OTHER, 37137)) > (0)) {
                INFO_ADDCHOICE(66819, "I have a letter here from the woodcutters' camp.", 66836);
            };
        };
    };
    INFO_ADDCHOICE(66819, "Not yet.", 66834);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, CITYGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

func void DIA_4021_CITYGUARD_STARTQ201() {
    GQ001_STARTENTERCITYQUEST();
    Q201_CITYPERMIT();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_TOCITY() {
    var C_ITEM ITM;
    CITYGUARD_FIRSTDIALOGUE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_FirstGateVisit_tocity_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_02_02");
    INFO_CLEARCHOICES(66819);
    INFO_ADDCHOICE(66819, "I don't have a pass.", 66830);
    INFO_ADDCHOICE(66819, "I think I must have left it somewhere.", 66831);
    if (((GQ001_CANTRYENTERCITY) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) {
        if ((NPC_HASITEMS(OTHER, 37136)) > (0)) {
            INFO_ADDCHOICE(66819, "Here's my pass.", 66832);
        };
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (TRUE))) {
            if ((NPC_HASITEMS(OTHER, 37137)) > (0)) {
                INFO_ADDCHOICE(66819, "I have a letter here from the woodcuters' camp that I need to deliver to the shipyard.", 66836);
            };
        };
    };
    DIA_4021_CITYGUARD_STARTQ201();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_TOCITY_NOPERMIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_FirstGateVisit_tocity_nopermit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_nopermit_02_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_TOCITY_NOPERMIT2() {
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_FirstGateVisit_tocity_nopermit2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_nopermit2_02_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_TOCITY_PERMIT() {
    B_GIVEINVITEMS(OTHER, SELF, 37136, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_02_02");
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_02_03");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_02_04");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_tocity_permit_02_05");
    EASTGATEOPENEDBYGUARD();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_NOTHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_FirstGateVisit_nothing_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_nothing_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_FirstGateVisit_nothing_02_03");
    DIA_4021_CITYGUARD_STARTQ201();
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4021_CITYGUARD_RETURNVISIT_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_ReturnVisit_no_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ReturnVisit_no_02_01");
    AI_STOPPROCESSINFOS(SELF);
    DIA_4021_CITYGUARD_STARTQ201();
}

func void DIA_4021_CITYGUARD_CUTTER_CHOICES() {
    INFO_CLEARCHOICES(66819);
    INFO_ADDCHOICE(66819, "You've got to be kidding me.", 66837);
    if (C_GOTANYKINDOFBEER(HERO)) {
        INFO_ADDCHOICE(66819, "I got something cold here for you and your buddy.", 66839);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q201_GATEGUARD_CUTTER_GOLD)) {
        INFO_ADDCHOICE(66819, "Maybe a few gold pieces will get the job done? (20 GP)", 66840);
    };
    INFO_CLEARCHOICES(66841);
    INFO_ADDCHOICE(66841, "You've got to be kidding me.", 66837);
    if (C_GOTANYKINDOFBEER(HERO)) {
        INFO_ADDCHOICE(66841, "I got something cold here for you and your buddy.", 66839);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q201_GATEGUARD_CUTTER_GOLD)) {
        INFO_ADDCHOICE(66841, "Maybe a few gold pieces will get the job done? (20 GP)", 66840);
    };
    INFO_CLEARCHOICES(66848);
    INFO_ADDCHOICE(66848, "You've got to be kidding me.", 66837);
    if (C_GOTANYKINDOFBEER(HERO)) {
        INFO_ADDCHOICE(66848, "I got something cold here for you and your buddy.", 66839);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q201_GATEGUARD_CUTTER_GOLD)) {
        INFO_ADDCHOICE(66848, "Maybe a few gold pieces will get the job done? (20 GP)", 66840);
    };
    INFO_CLEARCHOICES(66848);
    INFO_ADDCHOICE(66848, "You've got to be kidding me.", 66837);
    if (C_GOTANYKINDOFBEER(HERO)) {
        INFO_ADDCHOICE(66848, "I got something cold here for you and your buddy.", 66839);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (Q201_GATEGUARD_CUTTER_GOLD)) {
        INFO_ADDCHOICE(66848, "Maybe a few gold pieces will get the job done? (20 GP)", 66840);
    };
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_TOCITY_CUTTER() {
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_ToCity_Cutter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Cutter_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Cutter_02_03");
    B_GIVEINVITEMS(OTHER, SELF, 37137, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Cutter_02_04");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Cutter_02_05");
    DIA_4021_CITYGUARD_CUTTER_CHOICES();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_KIDDING() {
    B_GIVEINVITEMS(SELF, OTHER, 37137, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_ToCity_Kidding_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Kidding_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Kidding_02_03");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4021_CITYGUARD_COMEIN() {
    B_GIVEINVITEMS(SELF, OTHER, 37137, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_ComeIn_02_01");
    EASTGATEOPENEDBYGUARD();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_BEER() {
    B_GIVEANYBEER();
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_ToCity_Beer_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Beer_02_02");
    DIA_4021_CITYGUARD_COMEIN();
}

func void DIA_4021_CITYGUARD_FIRSTGATEVISIT_GOLD() {
    B_GIVEINVITEMS(OTHER, SELF, 34203, Q201_GATEGUARD_CUTTER_GOLD);
    AI_OUTPUT(OTHER, SELF, "DIA_4021_CityGuard_ToCity_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4021_CityGuard_ToCity_Gold_02_02");
    DIA_4021_CITYGUARD_COMEIN();
}

instance DIA_CITYGUARD_SECONDWARN(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_CITYGUARD_SECONDWARN_CONDITION;
    INFORMATION = DIA_CITYGUARD_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, CITYGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_SECONDWARN_INFO() {
    var C_ITEM ITM;
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_SecondWarn_03_01");
    INFO_CLEARCHOICES(66841);
    if (((GQ001_CANTRYENTERCITY) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) {
        if ((NPC_HASITEMS(OTHER, 37136)) > (0)) {
            INFO_ADDCHOICE(66841, "Here's my pass.", 66832);
        };
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (TRUE))) {
            if ((NPC_HASITEMS(OTHER, 37137)) > (0)) {
                INFO_ADDCHOICE(66841, "I have a letter here from the woodcuters' camp that I need to deliver to the shipyard.", 66836);
            };
        };
    };
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, CITYGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_CITYGUARD_LASTWARN(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_CITYGUARD_LASTWARN_CONDITION;
    INFORMATION = DIA_CITYGUARD_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, CITYGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_LASTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_LastWarn_03_01");
    CITYGUARD4021_KILLHERO();
}

instance DIA_CITYGUARD_CITYENTER(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_CITYGUARD_CITYENTER_CONDITION;
    INFORMATION = DIA_CITYGUARD_CITYENTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_CITYENTER_CONDITION() {
    if (((KAPITEL) >= (0)) && ((KAPITEL) <= (2))) {
        if ((NPC_ISINSTATE(SELF, 61599)) && ((CITYENTERED) == (FALSE))) {
            if (((GQ001_CANTRYENTERCITY) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_CITYENTER_INFO() {
    var C_ITEM ITM;
    INFO_CLEARCHOICES(66848);
    if ((NPC_HASITEMS(OTHER, 37136)) > (0)) {
        INFO_ADDCHOICE(66848, "Here's my pass.", 66832);
    };
    ITM = NPC_GETEQUIPPEDARMOR(OTHER);
    if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (TRUE))) {
        if ((NPC_HASITEMS(OTHER, 37137)) > (0)) {
            INFO_ADDCHOICE(66848, "I have a letter here from the woodcutters' camp.", 66836);
        };
    };
}

instance DIA_CITYGUARD_AFTERRACE(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_CITYGUARD_AFTERRACE_CONDITION;
    INFORMATION = DIA_CITYGUARD_AFTERRACE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_AFTERRACE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FMQ001)) == (LOG_RUNNING)) {
        if (((FMQ001_RACEDONE) == (1)) || ((FMQ001_RACEDONE) == (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_AFTERRACE_INFO() {
    MIL_4040_RECRUIT.AIVAR[15] = FALSE;
    MIL_4041_RECRUIT.AIVAR[15] = FALSE;
    MIL_4042_RECRUIT.AIVAR[15] = FALSE;
    MIL_4043_INSTRUCTOR.AIVAR[15] = FALSE;
    if ((FMQ001_RACEDONE) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_CityGuard_AfterRace_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_AfterRace_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_AfterRace_03_03");
        AI_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_RACE_LOST);
    };
    if ((FMQ001_RACEDONE) == (2)) {
        B_GIVEPLAYERXP(FMQ001_WONRACE);
        AI_OUTPUT(OTHER, SELF, "DIA_CityGuard_AfterRace_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_AfterRace_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_AfterRace_03_06");
        AI_LOGENTRY(TOPIC_FMQ001, LOG_FMQ001_RACE_WON);
    };
    OTHER.AIVAR[95] = FALSE;
    OTHER.AIVAR[94] = FALSE;
    B_STARTOTHERROUTINE(MIL_924_WINSTAN, "Gate");
    NPC_REFRESH(MIL_924_WINSTAN);
    B_STARTOTHERROUTINE(MIL_4043_INSTRUCTOR, TOT);
    NPC_REFRESH(MIL_4043_INSTRUCTOR);
    TELEPORTNPCTOWP(52958, MIL_4043_INSTRUCTOR.WP);
}

instance DIA_CITYGUARD_Q312_WAITASEC(C_INFO) {
    NPC = 55684;
    NR = 1;
    CONDITION = DIA_CITYGUARD_Q312_WAITASEC_CONDITION;
    INFORMATION = DIA_CITYGUARD_Q312_WAITASEC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_Q312_WAITASEC_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && ((Q312_GOTGATEGUARDMESSAGE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_Q312_WAITASEC_INFO() {
    Q312_GOTGATEGUARDMESSAGE = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_03_01");
    B_USEFAKESCROLL();
    AMBIENT_ASKWHOYOUARE();
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_03_02");
    INFO_CLEARCHOICES(66855);
    INFO_ADDCHOICE(66855, "What's going on here?", 66858);
}

func void DIA_CITYGUARD_Q312_WAITASEC_YES_WHAT() {
    QA306_WHATSGOINGONHERE();
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_What_03_03");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_What_03_04");
        AI_LOGENTRY(TOPIC_Q312, LOG_Q312_GATEGUARD_MIL);
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_Q312_WaitASec_What_03_05");
        AI_LOGENTRY(TOPIC_Q312, LOG_Q312_GATEGUARD_SLD);
    };
    DIA_4021_CITYGUARD_OPENGATE();
    INFO_CLEARCHOICES(66855);
    AI_STOPPROCESSINFOS(SELF);
}

