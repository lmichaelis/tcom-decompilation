instance DIA_WORKERGUARD_EXIT(C_INFO) {
    NPC = 54726;
    NR = 999;
    CONDITION = DIA_WORKERGUARD_EXIT_CONDITION;
    INFORMATION = DIA_WORKERGUARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WORKERGUARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WORKERGUARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WORKERGUARD_FIRSTWARN(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_FIRSTWARN_CONDITION;
    INFORMATION = DIA_WORKERGUARD_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string WORKERGUARD_CHECKPOINT = "HARBOUR_KQ406_GUARD";
var int WORKERGUARD_CANENTER;
func int DIA_WORKERGUARD_FIRSTWARN_CONDITION() {
    if ((WORKERGUARD_CANENTER) == (TRUE)) {
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

func void WORKERGUARD_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_WORKERGUARD_FIRSTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_FIRSTWARN_03_01");
    AI_RESETFACEANI(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, WORKERGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_WORKERGUARD_SECONDWARN(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_SECONDWARN_CONDITION;
    INFORMATION = DIA_WORKERGUARD_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WORKERGUARD_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, WORKERGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKERGUARD_SECONDWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_SECONDWARN_03_01");
    AI_RESETFACEANI(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, WORKERGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_WORKERGUARD_LASTWARN(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_LASTWARN_CONDITION;
    INFORMATION = DIA_WORKERGUARD_LASTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WORKERGUARD_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, WORKERGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKERGUARD_LASTWARN_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$Alarm");
    WORKERGUARD_KILLHERO();
}

instance DIA_WORKERGUARD_KQ406_LETMEIN(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_KQ406_LETMEIN_CONDITION;
    INFORMATION = DIA_WORKERGUARD_KQ406_LETMEIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let me through, I'm a dock worker and I need wood.";
}

func int DIA_WORKERGUARD_KQ406_LETMEIN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && ((KQ406_READNOTE) == (TRUE))) && (C_KQ406_WEARWORKERARMOR(HERO))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKERGUARD_KQ406_LETMEIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_WorkerGuard_KQ406_LetMeIn_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_LetMeIn_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_WorkerGuard_KQ406_LetMeIn_15_03");
    AI_STARTFACEANI(SELF, S_DOUBT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_LetMeIn_03_04");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_WorkerGuard_KQ406_LetMeIn_15_05");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_LetMeIn_03_06");
    AI_RESETFACEANI(OTHER);
}

instance DIA_WORKERGUARD_KQ406_OFFERMONEY(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_KQ406_OFFERMONEY_CONDITION;
    INFORMATION = DIA_WORKERGUARD_KQ406_OFFERMONEY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Maybe this will clear your doubts? (Pay 100 GP)";
}

func int DIA_WORKERGUARD_KQ406_OFFERMONEY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 73211))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKERGUARD_KQ406_OFFERMONEY_INFO() {
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_WorkerGuard_KQ406_OfferMoney_15_01");
    B_MARVIN_USEFAKEBAG_THROW();
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_OfferMoney_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_OfferMoney_03_03");
}

instance DIA_WORKERGUARD_KQ406_GIVE(C_INFO) {
    NPC = 54726;
    NR = 1;
    CONDITION = DIA_WORKERGUARD_KQ406_GIVE_CONDITION;
    INFORMATION = DIA_WORKERGUARD_KQ406_GIVE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Hold your beer. (Give a beer and 100 GP)";
}

func int DIA_WORKERGUARD_KQ406_GIVE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_KQ406)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 73214))) && ((WORKERGUARD_CANENTER) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WORKERGUARD_KQ406_GIVE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_WorkerGuard_KQ406_Give_15_01");
    if (((NPC_HASITEMS(OTHER, 34203)) >= (KQ406_WORKERGUARDOFFER)) && ((C_GOTANYKINDOFBEER(HERO)) == (TRUE))) {
        WORKERGUARD_CANENTER = TRUE;
        B_GIVEANYBEER_USEIT();
        B_GIVEINVITEMS(OTHER, SELF, 34203, KQ406_WORKERGUARDOFFER);
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_Give_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_Give_03_03");
        AI_STOPPROCESSINFOS(SELF);
        NPC_EXCHANGEROUTINE(SELF, TOT);
    };
    if (((NPC_HASITEMS(OTHER, 34203)) >= (KQ406_WORKERGUARDOFFER)) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
        AI_RESETFACEANI(SELF);
    };
    if ((C_GOTANYKINDOFBEER(HERO)) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_WorkerGuard_KQ406_Give_03_04");
        AI_RESETFACEANI(SELF);
    };
}

