instance DIA_CORTEZ_VZ_EXIT(C_INFO) {
    NPC = 0xe7b1;
    NR = 999;
    CONDITION = DIA_CORTEZ_VZ_EXIT_CONDITION;
    INFORMATION = DIA_CORTEZ_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CORTEZ_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CORTEZ_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CORTEZ_VZ_AMBIENT(C_INFO) {
    NPC = 0xe7b1;
    NR = 998;
    CONDITION = DIA_CORTEZ_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_CORTEZ_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Aren't you scared?";
}

func int DIA_CORTEZ_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CORTEZ_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale2");
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Ambient_03_02");
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Ambient_03_03");
    };
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Ambient_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_CORTEZ_VZ_Q514_ENDTHIS(C_INFO) {
    NPC = 0xe7b1;
    NR = 1;
    CONDITION = DIA_CORTEZ_VZ_Q514_ENDTHIS_CONDITION;
    INFORMATION = DIA_CORTEZ_VZ_Q514_ENDTHIS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CORTEZ_VZ_Q514_ENDTHIS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_CRAWLER_FINISH) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CORTEZ_VZ_Q514_ENDTHIS_INFO() {
    SELF.AIVAR[15] = FALSE;
    SELF.AIVAR[52] = TRUE;
    SELF.FLAGS = 0;
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Q514_EndThis_03_01");
    INFO_CLEARCHOICES(0x154ee);
    INFO_ADDCHOICE(0x154ee, "Are you crazy?", 0x154f1);
}

func void DIA_CORTEZ_VZ_Q514_ENDTHIS_CRAZY() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Cortez_VZ_Q514_EndThis_Crazy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Q514_EndThis_Crazy_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Cortez_VZ_Q514_EndThis_Crazy_03_03");
    INFO_CLEARCHOICES(0x154ee);
    if ((NPC_HASITEMS(OTHER, 0x9a2a)) >= (1)) {
        INFO_ADDCHOICE(0x154ee, "Here, the sword is yours.", 0x154f4);
    };
    INFO_ADDCHOICE(0x154ee, "You're not getting anything.", 0x154f2);
}

func void DIA_CORTEZ_VZ_Q514_ENDTHIS_CRAZY_NO() {
    Q514_CORTEZDECISION = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Cortez_VZ_Q514_EndThis_No_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(0x154ee);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(OTHER);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void Q514_KILLCORTEZ() {
    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_12 = TRUE;
    B_MAGICHURTNPC(HERO, PIR_1303_CORTEZ_VZ, 0x98967f);
    WLD_PLAYEFFECT("FX_IceWave", PIR_1303_CORTEZ_VZ, PIR_1303_CORTEZ_VZ, 0, 0, 0, FALSE);
    SND_PLAY("MFX_ICEWAVE_CAST");
    HERO.AIVAR[4] = FALSE;
    B_LOGENTRY(TOPIC_Q514, LOG_Q514_CORTEZDECISION_V2);
}

func void DIA_CORTEZ_VZ_Q514_ENDTHIS_CRAZY_YES() {
    Q514_CORTEZDECISION = 1;
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Cortez_VZ_Q514_EndThis_Yes_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9a2a, 1);
    AI_WAITTILLEND(SELF, OTHER);
    AI_EQUIPBESTMELEEWEAPON(SELF);
    AI_STOPLOOKAT(SELF);
    AI_DRAWWEAPON(SELF);
    AI_PLAYANI(SELF, "T_1HST2INSPECT");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x154f3);
}

var int CORTEZ_VZ_GOLDCOST = 0;
var int CORTEZ_VZ_CURRENT1HLEVEL = 0;
var int CORTEZ_VZ_NOMORE = 0;
var string CORTEZ_VZ_PRINTS = "";
var int CORTEZ_VZ_CURRENTBOWLEVEL = 0;
var int CORTEZ_VZ_CURRENTDEXLEVEL = 0;
instance DIA_CORTEZ_VZ_TRAIN(C_INFO) {
    NPC = 0xe7b1;
    NR = 7;
    CONDITION = DIA_CORTEZ_VZ_TRAIN_CONDITION;
    INFORMATION = DIA_CORTEZ_VZ_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's start training.";
}

func int DIA_CORTEZ_VZ_TRAIN_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x1543a)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((CORTEZ_VZ_NOMORE) == (FALSE))) && ((Q514_CAMPISREADY) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CORTEZ_VZ_TRAIN_CHOICES() {
    CORTEZ_VZ_GOLDCOST = 40;
    CORTEZ_VZ_CURRENT1HLEVEL = OTHER.AIVAR[84];
    CORTEZ_VZ_CURRENTBOWLEVEL = OTHER.AIVAR[86];
    CORTEZ_VZ_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    INFO_CLEARCHOICES(0x154fb);
    INFO_ADDCHOICE(0x154fb, DIALOG_BACK, 0x154ff);
    if ((OTHER.AIVAR[84]) < (100)) {
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), CORTEZ_VZ_GOLDCOST), 0x15502);
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1)) * (5), (CORTEZ_VZ_GOLDCOST) * (5)), 0x15503);
    };
    if ((OTHER.AIVAR[86]) < (100)) {
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARNBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1), CORTEZ_VZ_GOLDCOST), 0x15504);
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARNBOW5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1)) * (5), (CORTEZ_VZ_GOLDCOST) * (5)), 0x15505);
    };
    if ((OTHER.AIVAR[82]) < (250)) {
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), CORTEZ_VZ_GOLDCOST), 0x15506);
        INFO_ADDCHOICE(0x154fb, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (CORTEZ_VZ_GOLDCOST) * (5)), 0x15507);
    };
}

func void DIA_CORTEZ_VZ_TRAIN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_TeachMe");
    B_SAY(SELF, OTHER, "$SURE_V2");
    DIA_CORTEZ_VZ_TRAIN_CHOICES();
}

func void DIA_CORTEZ_VZ_TRAIN_BACK() {
    if ((((OTHER.AIVAR[84]) >= (100)) && ((OTHER.AIVAR[86]) >= (100))) && ((OTHER.AIVAR[82]) >= (220))) {
        B_SAY(SELF, OTHER, "$NoLearnYoureBetter");
        CORTEZ_VZ_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(0x154fb);
}

func void DIA_CORTEZ_VZ_TRAIN_NOGOLD1() {
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    CORTEZ_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(CORTEZ_VZ_GOLDCOST));
    PRINTSCREEN(CORTEZ_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
    DIA_CORTEZ_VZ_TRAIN_CHOICES();
}

func void DIA_CORTEZ_VZ_TRAIN_NOGOLD5() {
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    CORTEZ_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING((CORTEZ_VZ_GOLDCOST) * (5)));
    PRINTSCREEN(CORTEZ_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
    DIA_CORTEZ_VZ_TRAIN_CHOICES();
}

func void DIA_CORTEZ_VZ_TRAIN_1H_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CORTEZ_VZ_GOLDCOST)) {
        if ((CORTEZ_VZ_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 100);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (CORTEZ_VZ_GOLDCOST)) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_CORTEZ_VZ_TRAIN_1H_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= ((CORTEZ_VZ_GOLDCOST) * (5))) {
        if ((CORTEZ_VZ_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 100);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < ((CORTEZ_VZ_GOLDCOST) * (5))) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD5();
    };
}

func void DIA_CORTEZ_VZ_TRAIN_BOW_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CORTEZ_VZ_GOLDCOST)) {
        if ((CORTEZ_VZ_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 1, 100);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (CORTEZ_VZ_GOLDCOST)) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_CORTEZ_VZ_TRAIN_BOW_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= ((CORTEZ_VZ_GOLDCOST) * (5))) {
        if ((CORTEZ_VZ_CURRENTBOWLEVEL) < (OTHER.AIVAR[86])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 5, 100);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < ((CORTEZ_VZ_GOLDCOST) * (5))) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD5();
    };
}

func void DIA_CORTEZ_VZ_TRAINDEX_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (CORTEZ_VZ_GOLDCOST)) {
        if ((CORTEZ_VZ_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
            NPC_REMOVEINVITEMS(SELF, 0x859b, CORTEZ_VZ_GOLDCOST);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 250);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (CORTEZ_VZ_GOLDCOST)) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD1();
    };
}

func void DIA_CORTEZ_VZ_TRAINDEX_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= ((CORTEZ_VZ_GOLDCOST) * (5))) {
        if ((CORTEZ_VZ_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
            NPC_REMOVEINVITEMS(SELF, 0x859b, (CORTEZ_VZ_GOLDCOST) * (5));
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 250);
        DIA_CORTEZ_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < ((CORTEZ_VZ_GOLDCOST) * (5))) {
        DIA_CORTEZ_VZ_TRAIN_NOGOLD5();
    };
}
