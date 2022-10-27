instance DIA_4022_CITYGUARD_EXIT(C_INFO) {
    NPC = 0xd9a1;
    NR = 999;
    CONDITION = DIA_4022_CITYGUARD_EXIT_CONDITION;
    INFORMATION = DIA_4022_CITYGUARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_4022_CITYGUARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_4022_CITYGUARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_4022_CITYGUARD_FIRSTBRIBEATTEMPT(C_INFO) {
    NPC = 0xd9a1;
    NR = 1;
    CONDITION = DIA_4022_CITYGUARD_FIRSTBRIBEATTEMPT_CONDITION;
    INFORMATION = DIA_4022_CITYGUARD_FIRSTBRIBEATTEMPT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hey.";
}

func int DIA_4022_CITYGUARD_FIRSTBRIBEATTEMPT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_4022_CITYGUARD_FIRSTBRIBEATTEMPT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_FirstBribeAttempt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_FirstBribeAttempt_02_02");
}

instance DIA_4022_CITYGUARD_SECONDBRIBEATTEMPT(C_INFO) {
    NPC = 0xd9a1;
    NR = 1;
    CONDITION = DIA_4022_CITYGUARD_SECONDBRIBEATTEMPT_CONDITION;
    INFORMATION = DIA_4022_CITYGUARD_SECONDBRIBEATTEMPT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hey.";
}

func int DIA_4022_CITYGUARD_SECONDBRIBEATTEMPT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1052e)) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_4022_CITYGUARD_SECONDBRIBEATTEMPT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_SecondBribeAttempt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_SecondBribeAttempt_02_02");
}

instance DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT(C_INFO) {
    NPC = 0xd9a1;
    NR = 1;
    CONDITION = DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_CONDITION;
    INFORMATION = DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hey.";
}

func int DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_CONDITION() {
    if ((((((CITYENTERED) == (FALSE)) && ((KAPITEL) >= (2))) && (NPC_KNOWSINFO(OTHER, 0x10531))) && ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING))) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_02_02");
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_02_04");
    INFO_CLEARCHOICES(0x10534);
    INFO_ADDCHOICE(0x10534, "My brother is missing and I am looking for someone to help me.", 0x10537);
    INFO_ADDCHOICE(0x10534, "I have some urgent business in the city that I need to take care of.", 0x10538);
    INFO_ADDCHOICE(0x10534, "How about a few gold pieces?", 0x10539);
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_BROTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_brother_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_brother_02_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_JOB() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_job_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_job_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_job_02_03");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_BRIBE() {
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe_02_03");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe_02_04");
    INFO_CLEARCHOICES(0x10534);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V1)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE15G, 0x1053c);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V2)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE25G, 0x1053c);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V3)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE50G, 0x1053c);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V4)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE75G, 0x1053a);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V5)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE100G, 0x1053d);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V6)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE150G, 0x1053d);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q201_GATEGUARD_OFFER_V7)) {
        INFO_ADDCHOICE(0x10534, DIALOG_GIVE250G, 0x1053d);
    };
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_BRIBE75() {
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q201_GATEGUARD_OFFER_V4);
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe75_02_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe75_02_02");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe75_02_03");
    AI_TURNAWAY(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_bribe75_02_04");
    AI_FUNCTION(SELF, 0x1053b);
    AI_TURNTONPC(SELF, OTHER);
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_GUARDBRIBE);
    Q201_FINISHQUEST();
    CITYENTERED = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

func void WESTGATEOPENBRIBERY() {
    WLD_SENDTRIGGER("CITYEASTGATEOPEN");
    WLD_SENDTRIGGER("WESTCITYGATE");
    PRINTD("straznik otwiera brame po lapowce");
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_NOTENOUGH() {
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_notenough_02_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_notenough_02_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_4022_CITYGUARD_THIRDBRIBEATTEMPT_TOOMUCH() {
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_toomuch_02_01");
    AI_OUTPUT(SELF, OTHER, "DIA_4022_CityGuard_ThirdBribeAttempt_toomuch_02_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CITYGUARD_BUSY(C_INFO) {
    NPC = 0xd9a1;
    NR = 1;
    CONDITION = DIA_CITYGUARD_BUSY_CONDITION;
    INFORMATION = DIA_CITYGUARD_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_BUSY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((GQ001_CANTRYENTERCITY) == (TRUE))) && ((NPC_KNOWSINFO(OTHER, 0x10534)) == (FALSE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_BUSY_INFO() {
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        DIA_IMBUSY_ANGRY();
    };
    if ((RNGANWSER) == (1)) {
        DIA_IMBUSY_CALM();
    };
}

var int DIA_CITYGUARD_BUSY_INFO.RNGANWSER = 0;