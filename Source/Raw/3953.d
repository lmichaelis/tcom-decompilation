instance DIA_NIRKA_EXIT(C_INFO) {
    NPC = 0xd0c8;
    NR = 999;
    CONDITION = DIA_NIRKA_EXIT_CONDITION;
    INFORMATION = DIA_NIRKA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NIRKA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NIRKA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NIRKA_CANYOUTEACHME(C_INFO) {
    NPC = 0xd0c8;
    NR = 1;
    CONDITION = DIA_NIRKA_CANYOUTEACHME_CONDITION;
    INFORMATION = DIA_NIRKA_CANYOUTEACHME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something?";
}

func int DIA_NIRKA_CANYOUTEACHME_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x129ab)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_CANYOUTEACHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Canyouteachme_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Canyouteachme_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Canyouteachme_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Canyouteachme_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Canyouteachme_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Canyouteachme_03_05");
    TEACHER_LOGENTRY_NIRKA();
}

var int NIRKA_GOODSTUDENT = 0;
var int NIRKA_GOODSTUDENTGIFT = 0;
var int NIRKA_NOMORE = 0;
var string NIRKA_PRINTS = "";
var int NIRKA_CURRENTBLEVEL = 0;
var int NIRKA_CURRENTDEXLEVEL = 0;
instance DIA_NIRKA_TRAINING(C_INFO) {
    NPC = 0xd0c8;
    NR = 1;
    CONDITION = DIA_NIRKA_TRAINING_CONDITION;
    INFORMATION = DIA_NIRKA_TRAINING_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to brush up on my skills.";
}

func int DIA_NIRKA_TRAINING_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12986)) && ((NIRKA_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_TRAINING_CHOICES() {
    NIRKA_GOLDCOST = 25;
    if (((NIRKA_GOODSTUDENT) >= (60)) && ((NIRKA_GOODSTUDENTGIFT) == (FALSE))) {
        NIRKA_GOODSTUDENTGIFT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Training_13_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Training_13_03");
        B_GIVEINVITEMS(SELF, OTHER, 0x8a13, 1);
        B_SAY(OTHER, SELF, "$MARVIN_Thanks");
    };
    NIRKA_CURRENTBLEVEL = OTHER.AIVAR[86];
    NIRKA_CURRENTDEXLEVEL = OTHER.AIVAR[82];
    INFO_CLEARCHOICES(0x1298f);
    INFO_ADDCHOICE(0x1298f, DIALOG_BACK, 0x12994);
    INFO_ADDCHOICE(0x1298f, B_BUILDLEARNSTRING2(PRINT_LEARNBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 1), NIRKA_GOLDCOST), 0x12995);
    INFO_ADDCHOICE(0x1298f, B_BUILDLEARNSTRING2(PRINT_LEARNBOW5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_BOW, 5), (NIRKA_GOLDCOST) * (5)), 0x12996);
    INFO_ADDCHOICE(0x1298f, B_BUILDLEARNSTRING2(PRINT_LEARNDEX1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 1), NIRKA_GOLDCOST), 0x12997);
    INFO_ADDCHOICE(0x1298f, B_BUILDLEARNSTRING2(PRINT_LEARNDEX5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_DEXTERITY, 5), (NIRKA_GOLDCOST) * (5)), 0x12998);
}

var int DIA_NIRKA_TRAINING_CHOICES.NIRKA_GOLDCOST = 0;
func void DIA_NIRKA_TRAINING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Training_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Training_13_01");
    DIA_NIRKA_TRAINING_CHOICES();
}

func void DIA_NIRKA_TRAINING_BACK() {
    if (((OTHER.AIVAR[86]) >= (80)) && ((OTHER.AIVAR[82]) >= (80))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_TrainMeDialogBack_03_00");
        NIRKA_NOMORE = TRUE;
    };
    INFO_CLEARCHOICES(0x1298f);
}

func void DIA_NIRKA_TRAINING_BOW1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_PAYMENT1)) {
        if ((NIRKA_CURRENTBLEVEL) < (OTHER.AIVAR[86])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_PAYMENT1);
            NIRKA_GOODSTUDENT += 1;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 1, 80);
        DIA_NIRKA_TRAINING_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Training_BOW1_13_01");
        NIRKA_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(NIRKA_PAYMENT1));
        PRINTSCREEN(NIRKA_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_NIRKA_TRAINING_CHOICES();
    };
}

func void DIA_NIRKA_TRAINING_BOW5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_PAYMENT5)) {
        if ((NIRKA_CURRENTBLEVEL) < (OTHER.AIVAR[86])) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
            NIRKA_GOODSTUDENT += 5;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_BOW, 5, 80);
        DIA_NIRKA_TRAINING_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Training_BOW5_13_01");
        NIRKA_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(NIRKA_PAYMENT5));
        PRINTSCREEN(NIRKA_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_NIRKA_TRAINING_CHOICES();
    };
}

func void DIA_NIRKA_TRAININGDEX1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_PAYMENT1)) {
        if ((NIRKA_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_PAYMENT1);
            NIRKA_GOODSTUDENT += 1;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 1, 80);
        DIA_NIRKA_TRAINING_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_TrainingDEX1_13_01");
        NIRKA_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(NIRKA_PAYMENT1));
        PRINTSCREEN(NIRKA_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_NIRKA_TRAINING_CHOICES();
    };
}

func void DIA_NIRKA_TRAININGDEX5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_PAYMENT5)) {
        if ((NIRKA_CURRENTDEXLEVEL) < (OTHER.AIVAR[82])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_PAYMENT5);
            NIRKA_GOODSTUDENT += 5;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_DEXTERITY, 5, 80);
        DIA_NIRKA_TRAINING_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_TrainingDEX5_13_01");
        NIRKA_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(NIRKA_PAYMENT5));
        PRINTSCREEN(NIRKA_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_NIRKA_TRAINING_CHOICES();
    };
}

instance DIA_NIRKA_TRADE(C_INFO) {
    NPC = 0xd0c8;
    NR = 950;
    CONDITION = DIA_NIRKA_TRADE_CONDITION;
    INFORMATION = DIA_NIRKA_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your wares.";
}

func int DIA_NIRKA_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x129ab)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    B_GIVETRADEINV(SELF);
    if ((NIRKA_TRADE_CHECKINFO) == (FALSE)) {
        NIRKA_TRADE_CHECKINFO = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_NIRKA);
    };
}

var int DIA_NIRKA_TRADE_INFO.NIRKA_TRADE_CHECKINFO = 0;
instance DIA_NIRKA_SQ416_NOWAY(C_INFO) {
    NPC = 0xd0c8;
    NR = 1;
    CONDITION = DIA_NIRKA_SQ416_NOWAY_CONDITION;
    INFORMATION = DIA_NIRKA_SQ416_NOWAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NIRKA_SQ416_NOWAY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ416)) == (LOG_RUNNING)) && ((SQ416_RAMSEYHOUSEMEETING) == (4))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        if (((NPC_GETDISTTOWP(NONE_500_RAMSEY, NONE_500_RAMSEY.WP)) <= (500)) && ((NPC_GETDISTTOWP(VLK_6389_NIRKA, VLK_6389_NIRKA.WP)) <= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_SQ416_NOWAY_INFO() {
    TRIA_INVITE(NONE_500_RAMSEY);
    TRIA_STARTEXT(FALSE);
    AI_LOOKATNPC(OTHER, SELF);
    B_TURNTONPC(VLK_6389_NIRKA, NONE_500_RAMSEY);
    B_TURNTONPC(NONE_500_RAMSEY, VLK_6389_NIRKA);
    TRIA_WAIT();
    TRIA_NEXT(VLK_6389_NIRKA);
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_SQ416_NoWay_03_01");
    TRIA_WAIT();
    TRIA_NEXT(VLK_6389_NIRKA);
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_SQ416_NoWay_03_03");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x129a0);
}

func void NIRKA_SQ416_BRINGBACKRTN() {
    HERO.AIVAR[4] = FALSE;
    NPC_EXCHANGEROUTINE(VLK_6389_NIRKA, START);
    NPC_EXCHANGEROUTINE(NONE_500_RAMSEY, START);
}

var int NIRKA_ALLHUNT = 0;
instance DIA_NIRKA_HUNTING_SPECIAL(C_INFO) {
    NPC = 0xd0c8;
    NR = 1;
    CONDITION = DIA_NIRKA_HUNTING_SPECIAL_CONDITION;
    INFORMATION = DIA_NIRKA_HUNTING_SPECIAL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about hunting?";
}

func int DIA_NIRKA_HUNTING_SPECIAL_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x12986)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE))) && ((NIRKA_ALLHUNT) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_HUNTING_SPECIAL_CHOICES() {
    if (((NIRKA_GOODSTUDENT) >= (60)) && ((NIRKA_GOODSTUDENTGIFT) == (FALSE))) {
        NIRKA_GOODSTUDENTGIFT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_03_03");
        B_GIVEINVITEMS(SELF, OTHER, 0x8a13, 1);
        B_SAY(OTHER, SELF, "$MARVIN_Thanks");
    };
    INFO_CLEARCHOICES(0x129a2);
    INFO_ADDCHOICE(0x129a2, DIALOG_BACK, 0x129a6);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (FALSE)) {
        INFO_ADDCHOICE(0x129a2, B_BUILDLEARNSTRING2(PRINT_TEACHTEETH, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TEETH), NIRKA_TEETHTROPHY), 0x129a7);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (FALSE)) {
        INFO_ADDCHOICE(0x129a2, B_BUILDLEARNSTRING2(PRINT_TEACHCLAWS, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_CLAWS), NIRKA_CLAWSTROPHY), 0x129a8);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (FALSE)) {
        INFO_ADDCHOICE(0x129a2, B_BUILDLEARNSTRING2(PRINT_TEACHFIRETONGUE, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FIRETONGUE), NIRKA_FIRETONGUETROPHY), 0x129a9);
    };
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (FALSE)) {
        INFO_ADDCHOICE(0x129a2, B_BUILDLEARNSTRING2(PRINT_TEACHREPTILESKIN, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_REPTILESKIN), NIRKA_REPTILESKINTROPHY), 0x129aa);
    };
}

func void DIA_NIRKA_HUNTING_SPECIAL_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeHunting");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_03_01");
    DIA_NIRKA_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NIRKA_HUNTING_SPECIAL_BACK() {
    INFO_CLEARCHOICES(0x129a2);
    if (((((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) && ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE))) && ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE))) {
        NIRKA_ALLHUNT = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_AllHunt_03_01");
    };
}

func void DIA_NIRKA_HUNTING_SPECIAL_TEETH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Hunting_Special_Teeth_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_TEETHTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_TEETHTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_Teeth_03_02");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYTEETH, -(1), -(1), FONT_SCREEN, 2);
            NIRKA_GOODSTUDENT += 10;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_TEETHTROPHY);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_TEETHTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_Teeth_03_03");
    };
    DIA_NIRKA_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NIRKA_HUNTING_SPECIAL_CLAWS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Hunting_Special_Claws_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_CLAWSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[1]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_CLAWSTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_Claws_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_Claws_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYCLAWS, -(1), -(1), FONT_SCREEN, 2);
            NIRKA_GOODSTUDENT += 10;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_CLAWSTROPHY);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_CLAWSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_Claws_03_04");
    };
    DIA_NIRKA_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NIRKA_HUNTING_SPECIAL_FIRETONGUE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Hunting_Special_FireTongue_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_FIRETONGUETROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[5]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_FIRETONGUETROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_FireTongue_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_FireTongue_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYFIRETONGUE, -(1), -(1), FONT_SCREEN, 2);
            NIRKA_GOODSTUDENT += 10;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_FIRETONGUETROPHY);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_FIRETONGUETROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_FireTongue_03_04");
    };
    DIA_NIRKA_HUNTING_SPECIAL_CHOICES();
}

func void DIA_NIRKA_HUNTING_SPECIAL_REPTILESKIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nirka_Hunting_Special_ReptileSkin_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (NIRKA_REPTILESKINTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[13]) == (TRUE)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, NIRKA_REPTILESKINTROPHY);
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_ReptileSkin_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_ReptileSkin_03_03");
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYREPTILESKIN, -(1), -(1), FONT_SCREEN, 2);
            NIRKA_GOODSTUDENT += 10;
            NPC_REMOVEINVITEMS(SELF, 0x859b, NIRKA_REPTILESKINTROPHY);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (NIRKA_REPTILESKINTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hunting_Special_ReptileSkin_03_04");
    };
    DIA_NIRKA_HUNTING_SPECIAL_CHOICES();
}

instance DIA_NIRKA_HELLO(C_INFO) {
    NPC = 0xd0c8;
    NR = 1;
    CONDITION = DIA_NIRKA_HELLO_CONDITION;
    INFORMATION = DIA_NIRKA_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_NIRKA_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_NIRKA_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hello_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Hello_03_02");
}

instance DIA_NIRKA_AMBIENT(C_INFO) {
    NPC = 0xd0c8;
    NR = 997;
    CONDITION = DIA_NIRKA_AMBIENT_CONDITION;
    INFORMATION = DIA_NIRKA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_NIRKA_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x129ab)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((((LOG_GETSTATUS(MIS_QM301)) != (LOG_SUCCESS)) && ((NIRKA_GOODSTUDENTGIFT) == (FALSE))) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Ambient_13_01");
    };
    if ((((LOG_GETSTATUS(MIS_QM301)) == (LOG_SUCCESS)) && ((NIRKA_GOODSTUDENTGIFT) == (FALSE))) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Ambient_13_02");
    };
    if (((NIRKA_GOODSTUDENTGIFT) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Ambient_13_03");
    };
    if ((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nirka_Ambient_13_04");
    };
}

instance DIA_NIRKA_PICKPOCKET(C_INFO) {
    NPC = 0xd0c8;
    NR = 900;
    CONDITION = DIA_NIRKA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NIRKA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_NIRKA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIRKA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x129b1);
    INFO_ADDCHOICE(0x129b1, DIALOG_BACK, 0x129b5);
    INFO_ADDCHOICE(0x129b1, DIALOG_PICKPOCKET, 0x129b4);
}

func void DIA_NIRKA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x8a2d, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8a2d, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x129b1);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x129b1);
}

func void DIA_NIRKA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x129b1);
}

