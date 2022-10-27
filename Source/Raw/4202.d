var int BENGUARDALLOWUSTOGO = 0;
instance DIA_PIRGUARDBEN_EXIT(C_INFO) {
    NPC = 0xe48d;
    NR = 999;
    CONDITION = DIA_PIRGUARDBEN_EXIT_CONDITION;
    INFORMATION = DIA_PIRGUARDBEN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PIRGUARDBEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PIRGUARDBEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

const string BENGUARD_CHECKPOINT = "PART17_BAR_GUARD";
instance DIA_PIRGUARDBEN_FIRSTWARN(C_INFO) {
    NPC = 0xe48d;
    NR = 1;
    CONDITION = DIA_PIRGUARDBEN_FIRSTWARN_CONDITION;
    INFORMATION = DIA_PIRGUARDBEN_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_PIRGUARDBEN_FIRSTWARN_CONDITION() {
    if (((B_GETGREATESTPETZCRIME(SELF)) >= (CRIME_ATTACK)) && ((BENGUARDALLOWUSTOGO) == (TRUE))) {
        SELF.AIVAR[14] = FALSE;
    };
    if ((BENGUARDALLOWUSTOGO) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void PIRGUARD_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_PIRGUARDBEN_LETMEPASS() {
    BENGUARDALLOWUSTOGO = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_FirstWarn_03_01");
    if ((Q306_TOURNAMENTSTATUS) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_FirstWarn_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_PirGuardBen_FirstWarn_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_FirstWarn_03_04");
    };
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

func void DIA_PIRGUARDBEN_FIRSTWARN_INFO() {
    if (NPC_KNOWSINFO(OTHER, 0x1478e)) {
        DIA_PIRGUARDBEN_LETMEPASS();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_FirstWarn_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_FirstWarn_03_06");
    AI_STOPPROCESSINFOS(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BENGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_PIRGUARDBEN_SECONDWARN(C_INFO) {
    NPC = 0xe48d;
    NR = 1;
    CONDITION = DIA_PIRGUARDBEN_SECONDWARN_CONDITION;
    INFORMATION = DIA_PIRGUARDBEN_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_PIRGUARDBEN_SECONDWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BENGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PIRGUARDBEN_SECONDWARN_INFO() {
    if (NPC_KNOWSINFO(OTHER, 0x1478e)) {
        DIA_PIRGUARDBEN_LETMEPASS();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_SecondWarn_03_01");
    AI_STOPPROCESSINFOS(SELF);
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, BENGUARD_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_PIRGUARDBEN_LASTWARN(C_INFO) {
    NPC = 0xe48d;
    NR = 1;
    CONDITION = DIA_PIRGUARDBEN_LASTWARN_CONDITION;
    INFORMATION = DIA_PIRGUARDBEN_LASTWARN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PIRGUARDBEN_LASTWARN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, BENGUARD_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PIRGUARDBEN_LASTWARN_INFO() {
    if (NPC_KNOWSINFO(OTHER, 0x1478e)) {
        DIA_PIRGUARDBEN_LETMEPASS();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_PirGuardBen_LastWarn_03_01");
    PIRGUARD_KILLHERO();
}
