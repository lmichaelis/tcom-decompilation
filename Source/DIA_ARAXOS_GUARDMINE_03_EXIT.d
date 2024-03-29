instance DIA_ARAXOS_GUARDMINE_03_EXIT(C_INFO) {
    NPC = 56411;
    NR = 999;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_EXIT_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARAXOS_GUARDMINE_03_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARAXOS_GUARDMINE_03_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

const string ARAXOS_GUARDMINE_03_CHECKPOINT = "PART7_MINE_50";
var int ARAXOS_GUARDMINE_03_PAYEDONCE;
instance DIA_ARAXOS_GUARDMINE_03_FIRSTWARN(C_INFO) {
    NPC = 56411;
    NR = 1;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_FIRSTWARN_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_GUARDMINE_03_FIRSTWARN_CONDITION() {
    if ((ARAXOS_GUARDMINE_03_ALLOWUSTOGO) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_GUARDMINE_03_FIRSTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_FIRSTWARN_03_01");
    AI_RESETFACEANI(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, ARAXOS_GUARDMINE_03_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_ARAXOS_GUARDMINE_03_SECONDWARN(C_INFO) {
    NPC = 56411;
    NR = 2;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_SECONDWARN_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_GUARDMINE_03_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, ARAXOS_GUARDMINE_03_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_GUARDMINE_03_SECONDWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_SECONDWARN_03_01");
    AI_RESETFACEANI(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, ARAXOS_GUARDMINE_03_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_ARAXOS_GUARDMINE_03_LASTWARN(C_INFO) {
    NPC = 56411;
    NR = 3;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_LASTWARN_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_GUARDMINE_03_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, ARAXOS_GUARDMINE_03_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_GUARDMINE_03_LASTWARN_INFO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

instance DIA_ARAXOS_GUARDMINE_03_WHY(C_INFO) {
    NPC = 56411;
    NR = 1;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_WHY_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_WHY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why?";
}

func int DIA_ARAXOS_GUARDMINE_03_WHY_CONDITION() {
    if ((QA306_GOTOARAXOSMINE) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_GUARDMINE_03_WHY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_GuardMine_03_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_Why_03_03");
    AI_RESETFACEANI(OTHER);
}

instance DIA_ARAXOS_GUARDMINE_03_LOOKAWAY(C_INFO) {
    NPC = 56411;
    NR = 1;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_LOOKAWAY_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_LOOKAWAY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Couldn't you look the other way for a moment?";
}

func int DIA_ARAXOS_GUARDMINE_03_LOOKAWAY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 79275)) && ((QA306_GOTOARAXOSMINE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARAXOS_GUARDMINE_03_LOOKAWAY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_GuardMine_03_LookAway_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_LookAway_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_ARAXOS_GUARDMINE_03_OFFER(C_INFO) {
    NPC = 56411;
    NR = 2;
    CONDITION = DIA_ARAXOS_GUARDMINE_03_OFFER_CONDITION;
    INFORMATION = DIA_ARAXOS_GUARDMINE_03_OFFER_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_OFFERABRIBE;
}

func int DIA_ARAXOS_GUARDMINE_03_OFFER_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 79278)) && ((ARAXOS_GUARDMINE_03_ALLOWUSTOGO) == (FALSE))) && ((QA306_GOTOARAXOSMINE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int GUARD_OFFER_GOLD;
func void DIA_ARAXOS_GUARDMINE_03_OFFER_INFO() {
    INFO_CLEARCHOICES(79281);
    INFO_ADDCHOICE(79281, DIALOG_BACK, 79287);
    INFO_ADDCHOICE(79281, "Five nuggets is enough?", 79285);
    if ((GUARD_OFFER_GOLD) == (FALSE)) {
        if ((NPC_HASITEMS(OTHER, 34203)) >= (1)) {
            INFO_ADDCHOICE(79281, "I have some gold coins on me...", 79286);
        };
    };
}

func void DIA_ARAXOS_GUARDMINE_03_OFFER_5ORE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_GuardMine_03_Offer_5Ore_15_01");
    if ((NPC_HASITEMS(OTHER, 33660)) >= (5)) {
        ARAXOS_GUARDMINE_03_PAYEDONCE = TRUE;
        ARAXOS_GUARDMINE_03_ALLOWUSTOGO = TRUE;
        NPC_REMOVEINVITEMS(SELF, 33660, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, 33660, 5);
        AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_Offer_5Ore_03_02");
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_Offer_5Ore_03_03");
    DIA_ARAXOS_GUARDMINE_03_OFFER_INFO();
}

func void DIA_ARAXOS_GUARDMINE_03_OFFER_GOLD() {
    GUARD_OFFER_GOLD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_GuardMine_03_Offer_Gold_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_GuardMine_03_Offer_Gold_03_02");
    AI_RESETFACEANI(SELF);
    DIA_ARAXOS_GUARDMINE_03_OFFER_INFO();
}

func void DIA_ARAXOS_GUARDMINE_03_OFFER_BACK() {
    INFO_CLEARCHOICES(79281);
}

instance DIA_GUARD_QA306_ALREADYPAYED(C_INFO) {
    NPC = 56411;
    NR = 1;
    CONDITION = DIA_GUARD_QA306_ALREADYPAYED_CONDITION;
    INFORMATION = DIA_GUARD_QA306_ALREADYPAYED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I already paid you!";
}

func int DIA_GUARD_QA306_ALREADYPAYED_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((ARAXOS_GUARDMINE_03_PAYEDONCE) == (1))) && ((ARAXOS_GUARDMINE_03_ALLOWUSTOGO) == (FALSE))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int GUARD_QA306_BETTERPRICE;
func void DIA_GUARD_QA306_ALREADYPAYED_INFO() {
    GUARD_QA306_BETTERPRICE = TRUE;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Guard_QA306_AlreadyPayed_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Guard_QA306_AlreadyPayed_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Guard_QA306_AlreadyPayed_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GUARD_QA306_WHY(C_INFO) {
    NPC = 56411;
    NR = 1;
    CONDITION = DIA_GUARD_QA306_WHY_CONDITION;
    INFORMATION = DIA_GUARD_QA306_WHY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why should I pay for passage?";
}

func int DIA_GUARD_QA306_WHY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((ARAXOS_GUARDMINE_03_ALLOWUSTOGO) == (FALSE))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUARD_QA306_WHY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Guard_QA306_Why_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Guard_QA306_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Guard_QA306_Why_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_GUARD_QA306_PAY(C_INFO) {
    NPC = 56411;
    NR = 90;
    CONDITION = DIA_GUARD_QA306_PAY_CONDITION;
    INFORMATION = DIA_GUARD_QA306_PAY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENTRYPAY;
}

func int DIA_GUARD_QA306_PAY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) && ((ARAXOS_GUARDMINE_03_ALLOWUSTOGO) == (FALSE))) && ((QA306_GOTOARAXOSMINE) == (2))) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GUARD_QA306_ENTER() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Guard_QA306_Pay_03_01");
    INFO_CLEARCHOICES(79295);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GUARD_QA306_PAY_INFO() {
    INFO_CLEARCHOICES(79295);
    INFO_ADDCHOICE(79295, DIALOG_BACK, 79299);
    if ((GUARD_QA306_BETTERPRICE) == (TRUE)) {
        INFO_ADDCHOICE(79295, "(Pay 5 gold nuggets)", 79300);
    };
    INFO_ADDCHOICE(79295, "(Pay 10 gold nuggets)", 79301);
}

func void DIA_GUARD_QA306_PAY_BACK() {
    INFO_CLEARCHOICES(79295);
}

func void DIA_GUARD_QA306_PAY_5() {
    if ((NPC_HASITEMS(OTHER, 33660)) >= (5)) {
        ARAXOS_GUARDMINE_03_ALLOWUSTOGO = TRUE;
        NPC_REMOVEINVITEMS(SELF, 33660, 5);
        DIA_GUARD_QA306_ENTER();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_GUARD_QA306_PAY_INFO();
}

func void DIA_GUARD_QA306_PAY_10() {
    if ((NPC_HASITEMS(OTHER, 33660)) >= (10)) {
        ARAXOS_GUARDMINE_03_ALLOWUSTOGO = TRUE;
        NPC_REMOVEINVITEMS(SELF, 33660, 10);
        DIA_GUARD_QA306_ENTER();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_GUARD_QA306_PAY_INFO();
}

