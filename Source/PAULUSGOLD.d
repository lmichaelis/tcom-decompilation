var int PAULUSGOLD;
var int PAULUS_CURRENT1HLEVEL;
var int PAULUS_NOMORE;
instance DIA_PAULUS_EXIT(C_INFO) {
    NPC = 57623;
    NR = 999;
    CONDITION = DIA_PAULUS_EXIT_CONDITION;
    INFORMATION = DIA_PAULUS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PAULUS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PAULUS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PAULUS_CANYOUTRAIN(C_INFO) {
    NPC = 57623;
    NR = 1;
    CONDITION = DIA_PAULUS_CANYOUTRAIN_CONDITION;
    INFORMATION = DIA_PAULUS_CANYOUTRAIN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you train me?";
}

func int DIA_PAULUS_CANYOUTRAIN_CONDITION() {
    return TRUE;
}

func void DIA_PAULUS_CANYOUTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Canyoutrain_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Canyoutrain_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Canyoutrain_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Canyoutrain_13_04");
    PAULUSGOLD = TRUE;
}

instance DIA_PAULUS_GOLDFORTRAIN(C_INFO) {
    NPC = 57623;
    NR = 1;
    CONDITION = DIA_PAULUS_GOLDFORTRAIN_CONDITION;
    INFORMATION = DIA_PAULUS_GOLDFORTRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Is that enough? (Pay 10 GP)";
}

func int DIA_PAULUS_GOLDFORTRAIN_CONDITION() {
    if (((PAULUSGOLD) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 88924))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PAULUS_GOLDFORTRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Goldfortrain_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) < (PAULUS_TRAINPAYMENT)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Goldfortrain_13_01");
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (PAULUS_TRAINPAYMENT)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Goldfortrain_13_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Goldfortrain_15_03");
        SND_PLAY(GELDBEUTEL);
        B_GIVEINVITEMS(OTHER, SELF, 34203, PAULUS_TRAINPAYMENT);
        TEACHER_LOGENTRY_PAULUS();
        PAULUSTEACH1H = TRUE;
        PAULUSGOLD = FALSE;
    };
}

var string PAULUS_PRINTS;
var int PAULUS_AMBIENT;
instance DIA_PAULUS_TEACH(C_INFO) {
    NPC = 57623;
    NR = 7;
    CONDITION = DIA_PAULUS_TEACH_CONDITION;
    INFORMATION = DIA_PAULUS_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's start training.";
}

func int DIA_PAULUS_TEACH_CONDITION() {
    if (((PAULUSTEACH1H) == (TRUE)) && ((PAULUS_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PAULUS_TEACH_CHOICES() {
    var int PAULUS_GOLDCOST;
    PAULUS_GOLDCOST = 3;
    PAULUS_CURRENT1HLEVEL = OTHER.AIVAR[84];
    INFO_CLEARCHOICES(88932);
    INFO_ADDCHOICE(88932, DIALOG_BACK, 88937);
    INFO_ADDCHOICE(88932, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), PAULUS_GOLDCOST), 88938);
    INFO_ADDCHOICE(88932, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1)) * (5), (PAULUS_GOLDCOST) * (5)), 88939);
}

func void DIA_PAULUS_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Teach_15_00");
    if ((OTHER.AIVAR[84]) < (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Teach_13_01");
        DIA_PAULUS_TEACH_CHOICES();
    };
    if ((OTHER.AIVAR[84]) >= (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Teach_13_02");
        PAULUS_NOMORE = TRUE;
    };
}

func void DIA_PAULUS_TEACH_BACK() {
    INFO_CLEARCHOICES(88932);
}

func void DIA_PAULUS_TEACH_1H_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (PAULUS_PAYMENT1)) {
        if ((PAULUS_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            if ((PAULUS_AMBIENT) == (FALSE)) {
                PAULUS_AMBIENT = TRUE;
            };
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 30);
        DIA_PAULUS_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (PAULUS_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Teach_1H1_13_01");
        PAULUS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(PAULUS_PAYMENT1));
        PRINTSCREEN(PAULUS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_PAULUS_TEACH_CHOICES();
    };
}

func void DIA_PAULUS_TEACH_1H_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (PAULUS_PAYMENT5)) {
        if ((PAULUS_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            if ((PAULUS_AMBIENT) == (FALSE)) {
                PAULUS_AMBIENT = TRUE;
            };
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 30);
        DIA_PAULUS_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (PAULUS_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Teach_1H5_13_01");
        PAULUS_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(PAULUS_PAYMENT5));
        PRINTSCREEN(PAULUS_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_PAULUS_TEACH_CHOICES();
    };
}

instance DIA_PAULUS_SQ104_ARIES(C_INFO) {
    NPC = 57623;
    NR = 1;
    CONDITION = DIA_PAULUS_SQ104_ARIES_CONDITION;
    INFORMATION = DIA_PAULUS_SQ104_ARIES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen a ram?";
}

func int DIA_PAULUS_SQ104_ARIES_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ104)) == (LOG_RUNNING)) {
        if (!(NPC_KNOWSINFO(OTHER, 89994))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PAULUS_SQ104_ARIES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_SQ104_Aries_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_SQ104_Aries_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Paulus_SQ104_Aries_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_SQ104_Aries_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Paulus_SQ104_Aries_03_05");
    B_LOGENTRY(TOPIC_SQ104, LOG_SQ104_PAULUS);
}

instance DIA_PAULUS_AMBIENT(C_INFO) {
    NPC = 57623;
    NR = 890;
    CONDITION = DIA_PAULUS_AMBIENT_CONDITION;
    INFORMATION = DIA_PAULUS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_PAULUS_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_PAULUS_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Paulus_Ambient_15_00");
    if ((PAULUS_AMBIENT) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Ambient_13_01");
    };
    if (((PAULUS_AMBIENT) == (TRUE)) && ((PAULUS_NOMORE) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Ambient_13_02");
    };
    if (((PAULUS_AMBIENT) == (TRUE)) && ((PAULUS_NOMORE) == (TRUE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Paulus_Ambient_13_03");
    };
}

instance DIA_PAULUS_PICKPOCKET(C_INFO) {
    NPC = 57623;
    NR = 900;
    CONDITION = DIA_PAULUS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_PAULUS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_PAULUS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PAULUS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(88946);
    INFO_ADDCHOICE(88946, DIALOG_BACK, 88950);
    INFO_ADDCHOICE(88946, DIALOG_PICKPOCKET, 88949);
}

func void DIA_PAULUS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(88946);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(88946);
}

func void DIA_PAULUS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(88946);
}

