instance DIA_BERTO_VZ_EXIT(C_INFO) {
    NPC = 59158;
    NR = 999;
    CONDITION = DIA_BERTO_VZ_EXIT_CONDITION;
    INFORMATION = DIA_BERTO_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_BERTO_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_BERTO_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BERTO_VZ_AMBIENT(C_INFO) {
    NPC = 59158;
    NR = 988;
    CONDITION = DIA_BERTO_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_BERTO_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How do you stand being in this cursed place?";
}

func int DIA_BERTO_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTO_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale1");
    if ((Q514_FINISHVOLFZACKE) == (1)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Berto_VZ_Ambient_03_03");
    };
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Berto_VZ_Ambient_03_02");
    };
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Berto_VZ_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Berto_VZ_Ambient_03_04");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

var int BERTO_VZ_GOLDCOST;
var int BERTO_VZ_CURRENT1HLEVEL;
var int BERTO_VZ_CURRENTSTRLEVEL;
var int BERTO_VZ_NOMORE;
var string BERTO_VZ_PRINTS;
var int BERTO_VZ_CURRENTCROSSBOWLEVEL;
var int BERTO_VZ_CURRENTDEXLEVEL;
instance DIA_BERTO_VZ_TRAIN(C_INFO) {
    NPC = 59158;
    NR = 7;
    CONDITION = DIA_BERTO_VZ_TRAIN_CONDITION;
    INFORMATION = DIA_BERTO_VZ_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's start training.";
}

func int DIA_BERTO_VZ_TRAIN_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 87098)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((BERTO_VZ_NOMORE) == (FALSE))) && ((Q514_CAMPISREADY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BERTO_VZ_TRAIN_CHOICES() {
    BERTO_VZ_GOLDCOST = 25;
    BERTO_VZ_CURRENT1HLEVEL = OTHER.AIVAR[84];
    BERTO_VZ_CURRENTCROSSBOWLEVEL = OTHER.AIVAR[87];
    BERTO_VZ_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    BERTO_VZ_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    INFO_CLEARCHOICES(86885);
    INFO_ADDCHOICE(86885, DIALOG_BACK, 86889);
    if ((OTHER.AIVAR[84]) < (100)) {
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), BERTO_VZ_GOLDCOST), 86892);
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1)) * (5), (BERTO_VZ_GOLDCOST) * (5)), 86893);
    };
    if ((OTHER.AIVAR[87]) < (100)) {
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 1), BERTO_VZ_GOLDCOST), 86894);
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 1)) * (5), (BERTO_VZ_GOLDCOST) * (5)), 86895);
    };
    if ((OTHER.AIVAR[81]) < (200)) {
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), BERTO_VZ_GOLDCOST), 86896);
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (BERTO_VZ_GOLDCOST) * (5)), 86897);
    };
    if ((OTHER.AIVAR[82]) < (200)) {
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), BERTO_VZ_GOLDCOST), 86898);
        INFO_ADDCHOICE(86885, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (BERTO_VZ_GOLDCOST) * (5)), 86899);
    };
}

func void DIA_BERTO_VZ_TRAIN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_TeachMe");
    B_SAY(SELF, OTHER, "$SURE_V2");
    DIA_BERTO_VZ_TRAIN_CHOICES();
}

func void DIA_BERTO_VZ_TRAIN_BACK() {
    if (((((OTHER.AIVAR[84]) >= (100)) && ((OTHER.AIVAR[87]) >= (100))) && ((OTHER.AIVAR[81]) >= (200))) && ((OTHER.AIVAR[82]) >= (200))) {
        B_SAY(SELF, OTHER, "$NoLearnYoureBetter");
        BERTO_VZ_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(86885);
}

func void DIA_BERTO_VZ_TRAIN_NOGOLD1() {
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    BERTO_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(BERTO_VZ_GOLDCOST));
    PRINTSCREEN(BERTO_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
    DIA_BERTO_VZ_TRAIN_CHOICES();
}

func void DIA_BERTO_VZ_TRAIN_NOGOLD5() {
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    BERTO_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING((BERTO_VZ_GOLDCOST) * (5)));
    PRINTSCREEN(BERTO_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
    DIA_BERTO_VZ_TRAIN_CHOICES();
}

func void DIA_BERTO_VZ_TRAIN_1H_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BERTO_VZ_GOLDCOST)) {
        if ((BERTO_VZ_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BERTO_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BERTO_VZ_GOLDCOST);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 100);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BERTO_VZ_GOLDCOST)) {
        DIA_BERTO_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_BERTO_VZ_TRAIN_1H_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BERTO_VZ_GOLDCOST) * (5))) {
        if ((BERTO_VZ_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 100);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BERTO_VZ_GOLDCOST) * (5))) {
        DIA_BERTO_VZ_TRAIN_NOGOLD5();
    };
}

func void DIA_BERTO_VZ_TRAIN_CROSSBOW_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BERTO_VZ_GOLDCOST)) {
        if ((BERTO_VZ_CURRENTCROSSBOWLEVEL) < (OTHER.AIVAR[87])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BERTO_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BERTO_VZ_GOLDCOST);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 1, 100);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BERTO_VZ_GOLDCOST)) {
        DIA_BERTO_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_BERTO_VZ_TRAIN_CROSSBOW_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BERTO_VZ_GOLDCOST) * (5))) {
        if ((BERTO_VZ_CURRENTCROSSBOWLEVEL) < (OTHER.AIVAR[87])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 5, 100);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BERTO_VZ_GOLDCOST) * (5))) {
        DIA_BERTO_VZ_TRAIN_NOGOLD5();
    };
}

func void DIA_BERTO_VZ_TRAINSTR_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BERTO_VZ_GOLDCOST)) {
        if ((BERTO_VZ_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BERTO_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BERTO_VZ_GOLDCOST);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 200);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BERTO_VZ_GOLDCOST)) {
        DIA_BERTO_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_BERTO_VZ_TRAINSTR_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BERTO_VZ_GOLDCOST) * (5))) {
        if ((BERTO_VZ_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 200);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BERTO_VZ_GOLDCOST) * (5))) {
        DIA_BERTO_VZ_TRAIN_NOGOLD5();
    };
}

func void DIA_BERTO_VZ_TRAINDEX_1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (BERTO_VZ_GOLDCOST)) {
        if ((BERTO_VZ_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, BERTO_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 34203, BERTO_VZ_GOLDCOST);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 200);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (BERTO_VZ_GOLDCOST)) {
        DIA_BERTO_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_BERTO_VZ_TRAINDEX_5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= ((BERTO_VZ_GOLDCOST) * (5))) {
        if ((BERTO_VZ_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 34203, (BERTO_VZ_GOLDCOST) * (5));
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 200);
        DIA_BERTO_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < ((BERTO_VZ_GOLDCOST) * (5))) {
        DIA_BERTO_VZ_TRAIN_NOGOLD5();
    };
}

