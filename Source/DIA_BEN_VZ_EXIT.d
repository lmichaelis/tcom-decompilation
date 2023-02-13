instance DIA_BEN_VZ_EXIT(C_INFO) {
    NPC = 59287;
    NR = 999;
    CONDITION = DIA_BEN_VZ_EXIT_CONDITION;
    INFORMATION = DIA_BEN_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BEN_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BEN_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int BEN_VZ_CURRENT2HLEVEL;
var int BEN_VZ_CURRENTSTRLEVEL;
var int BEN_VZ_NOMORE;
var string BEN_VZ_PRINTS;
var int BEN_VZ_GOLDCOST;
instance DIA_BEN_VZ_TRAIN(C_INFO) {
    NPC = 59287;
    NR = 7;
    CONDITION = DIA_BEN_VZ_TRAIN_CONDITION;
    INFORMATION = DIA_BEN_VZ_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Train me.";
}

func int DIA_BEN_VZ_TRAIN_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 87098)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((BEN_VZ_NOMORE) == (FALSE))) && ((Q514_CAMPISREADY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEN_VZ_TRAIN_CHOICES() {
    BEN_VZ_GOLDCOST = 40;
    BEN_VZ_CURRENT2HLEVEL = OTHER.AIVAR[85];
    BEN_VZ_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    INFO_CLEARCHOICES(87235);
    INFO_ADDCHOICE(87235, DIALOG_BACK, 87239);
    if ((OTHER.AIVAR[85]) < (100)) {
        INFO_ADDCHOICE(87235, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), BEN_VZ_GOLDCOST), 87240);
        INFO_ADDCHOICE(87235, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1)) * (5), (BEN_VZ_GOLDCOST) * (5)), 87241);
    };
    if ((OTHER.AIVAR[81]) < (250)) {
        INFO_ADDCHOICE(87235, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), BEN_VZ_GOLDCOST), 87242);
        INFO_ADDCHOICE(87235, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (BEN_VZ_GOLDCOST) * (5)), 87243);
    };
}

func void DIA_BEN_VZ_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ben_VZ_Train_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_03_01");
    DIA_BEN_VZ_TRAIN_CHOICES();
}

func void DIA_BEN_VZ_TRAIN_BACK() {
    if (((OTHER.AIVAR[85]) >= (100)) && ((OTHER.AIVAR[81]) >= (250))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_Back_03_01");
        BEN_VZ_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(87235);
}

func void DIA_BEN_VZ_TRAIN_2H_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BEN_VZ_GOLDCOST)) {
        if ((BEN_VZ_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BEN_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BEN_VZ_GOLDCOST);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 100);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BEN_VZ_GOLDCOST)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_2H1_13_01");
        BEN_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(BEN_VZ_GOLDCOST));
        PRINTSCREEN(BEN_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
}

func void DIA_BEN_VZ_TRAIN_2H_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BEN_VZ_GOLDCOST) * (5))) {
        if ((BEN_VZ_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BEN_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BEN_VZ_GOLDCOST) * (5));
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 100);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BEN_VZ_GOLDCOST) * (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_2H5_13_01");
        BEN_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING((BEN_VZ_GOLDCOST) * (5)));
        PRINTSCREEN(BEN_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
}

func void DIA_BEN_VZ_TRAINSTR_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BEN_VZ_GOLDCOST)) {
        if ((BEN_VZ_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BEN_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BEN_VZ_GOLDCOST);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 250);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BEN_VZ_GOLDCOST)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_STR1_13_00");
        BEN_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(BEN_VZ_GOLDCOST));
        PRINTSCREEN(BEN_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
}

func void DIA_BEN_VZ_TRAINSTR_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BEN_VZ_GOLDCOST) * (5))) {
        if ((BEN_VZ_CURRENTSTRLEVEL) < (OTHER.ATTRIBUTE[4])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BEN_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BEN_VZ_GOLDCOST) * (5));
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 250);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BEN_VZ_GOLDCOST) * (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Train_STR5_13_00");
        BEN_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING((BEN_VZ_GOLDCOST) * (5)));
        PRINTSCREEN(BEN_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_BEN_VZ_TRAIN_CHOICES();
    };
}

instance DIA_BEN_VZ_AMBIENT(C_INFO) {
    NPC = 59287;
    NR = 998;
    CONDITION = DIA_BEN_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_BEN_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_BEN_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEN_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    if ((Q514_FINISHVOLFZACKE) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_06");
    };
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        if ((Q306_TOURNAMENTSTATUS) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_04");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_05");
        };
    };
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Ben_VZ_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

