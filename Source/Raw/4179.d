instance DIA_VICENTE_EXIT(C_INFO) {
    NPC = 0xe56e;
    NR = 999;
    CONDITION = DIA_VICENTE_EXIT_CONDITION;
    INFORMATION = DIA_VICENTE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VICENTE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VICENTE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VICENTE_GREET(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_GREET_CONDITION;
    INFORMATION = DIA_VICENTE_GREET_INFO;
    IMPORTANT = TRUE;
}

func int DIA_VICENTE_GREET_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((SELF.AIVAR[5]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_GREET_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_GREET_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_GREET_13_01");
}

instance DIA_VICENTE_WHOAREYOU(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_WHOAREYOU_CONDITION;
    INFORMATION = DIA_VICENTE_WHOAREYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_VICENTE_WHOAREYOU_CONDITION() {
    return TRUE;
}

func void DIA_VICENTE_WHOAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Whoareyou_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whoareyou_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whoareyou_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whoareyou_13_03");
}

instance DIA_VICENTE_WHATAREYOUDOING(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_WHATAREYOUDOING_CONDITION;
    INFORMATION = DIA_VICENTE_WHATAREYOUDOING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_VICENTE_WHATAREYOUDOING_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14972)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_WHATAREYOUDOING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Whatareyoudoing_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whatareyoudoing_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whatareyoudoing_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whatareyoudoing_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Whatareyoudoing_13_06");
}

instance DIA_VICENTE_ANYJOB(C_INFO) {
    NPC = 0xe56e;
    NR = 2;
    CONDITION = DIA_VICENTE_ANYJOB_CONDITION;
    INFORMATION = DIA_VICENTE_ANYJOB_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have a job for me?";
}

func int DIA_VICENTE_ANYJOB_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14972)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_ANYJOB_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Anyjob_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Anyjob_13_08");
}

instance DIA_VICENTE_TEACHME(C_INFO) {
    NPC = 0xe56e;
    NR = 3;
    CONDITION = DIA_VICENTE_TEACHME_CONDITION;
    INFORMATION = DIA_VICENTE_TEACHME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you teach me something?";
}

func int DIA_VICENTE_TEACHME_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14972)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_TEACHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Teachme_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Teachme_13_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Teachme_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Teachme_13_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Teachme_13_15");
    LOG_CREATETOPIC(TOPIC_HAVENTEACHER, LOG_NOTE);
    AI_LOGENTRY(TOPIC_HAVENTEACHER, LOG_HAVENTEACHER_VINCENTE);
}

var int VICENTE_CURRENT1HLEVEL = 0;
var int VICENTE_CURRENT2HLEVEL = 0;
var int VICENTE_CURRENTSTRLEVEL = 0;
var int VICENTE_NOMORE = 0;
var string VICENTE_PRINTS = "";
var int VICENTE_GOODSTUDENT = 0;
instance DIA_VICENTE_TRAIN(C_INFO) {
    NPC = 0xe56e;
    NR = 7;
    CONDITION = DIA_VICENTE_TRAIN_CONDITION;
    INFORMATION = DIA_VICENTE_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's train.";
}

func int DIA_VICENTE_TRAIN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1497b)) && ((VICENTE_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_TRAIN_CHOICES() {
    VICENTE_GOLDCOST = 15;
    VICENTE_CURRENT1HLEVEL = OTHER.AIVAR[84];
    VICENTE_CURRENT2HLEVEL = OTHER.AIVAR[85];
    VICENTE_CURRENTSTRLEVEL = OTHER.AIVAR[81];
    INFO_CLEARCHOICES(0x14984);
    INFO_ADDCHOICE(0x14984, DIALOG_BACK, 0x14989);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARN1H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1), VICENTE_GOLDCOST), 0x1498a);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARN1H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_1H, 1)) * (5), (VICENTE_GOLDCOST) * (5)), 0x1498b);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), VICENTE_GOLDCOST), 0x1498c);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, (B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1)) * (5), (VICENTE_GOLDCOST) * (5)), 0x1498d);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARNSTR1, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 1), VICENTE_GOLDCOST), 0x1498e);
    INFO_ADDCHOICE(0x14984, B_BUILDLEARNSTRING2(PRINT_LEARNSTR5, B_GETLEARNCOSTATTRIBUTE(OTHER, ATR_STRENGTH, 5), (VICENTE_GOLDCOST) * (5)), 0x1498f);
}

var int DIA_VICENTE_TRAIN_CHOICES.VICENTE_GOLDCOST = 0;
func void DIA_VICENTE_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Train_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_13_01");
    DIA_VICENTE_TRAIN_CHOICES();
}

func void DIA_VICENTE_TRAIN_BACK() {
    if (((((OTHER.AIVAR[84]) < (60)) && ((OTHER.AIVAR[84]) >= (30))) || (((OTHER.AIVAR[85]) < (60)) && ((OTHER.AIVAR[85]) >= (30)))) || (((OTHER.AIVAR[81]) < (60)) && ((OTHER.AIVAR[81]) >= (30)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_Back_13_00");
    };
    if ((((OTHER.AIVAR[84]) >= (60)) && ((OTHER.AIVAR[85]) >= (60))) && ((OTHER.AIVAR[81]) >= (60))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_Back_13_01");
        VICENTE_NOMORE = TRUE;
    };
    if (((VICENTE_GOODSTUDENT) >= (25)) && ((VICENTE_OSCARGIFT) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_Back_13_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Train_Back_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_Back_13_04");
        VICENTE_OSCARGIFT = TRUE;
    };
    INFO_CLEARCHOICES(0x14984);
}

func void DIA_VICENTE_TRAIN_1H_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT1)) {
        if ((VICENTE_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT1);
            VICENTE_GOODSTUDENT += 1;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 1, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_1H1_13_01");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT1));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

func void DIA_VICENTE_TRAIN_1H_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT5)) {
        if ((VICENTE_CURRENT1HLEVEL) < (OTHER.AIVAR[84])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT5);
            VICENTE_GOODSTUDENT += 5;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_1H, 5, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_1H5_13_01");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT5));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

func void DIA_VICENTE_TRAIN_2H_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT1)) {
        if ((VICENTE_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT1);
            VICENTE_GOODSTUDENT += 1;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_2H1_13_01");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT1));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

func void DIA_VICENTE_TRAIN_2H_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT5)) {
        if ((VICENTE_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT5);
            VICENTE_GOODSTUDENT += 5;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_2H5_13_01");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT5));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

func void DIA_VICENTE_TRAINSTR_1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT1)) {
        if ((VICENTE_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT1);
            VICENTE_GOODSTUDENT += 1;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT1);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 1, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_STR1_13_00");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT1));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

func void DIA_VICENTE_TRAINSTR_5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (VICENTE_PAYMENT5)) {
        if ((VICENTE_CURRENTSTRLEVEL) < (OTHER.AIVAR[81])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, VICENTE_PAYMENT5);
            VICENTE_GOODSTUDENT += 5;
            NPC_REMOVEINVITEMS(SELF, 0x859b, VICENTE_PAYMENT5);
        };
        B_TEACHATTRIBUTEPOINTS(SELF, OTHER, ATR_STRENGTH, 5, 60);
        DIA_VICENTE_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (VICENTE_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Train_STR5_13_00");
        VICENTE_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(VICENTE_PAYMENT5));
        PRINTSCREEN(VICENTE_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_VICENTE_TRAIN_CHOICES();
    };
}

instance DIA_VICENTE_DUELPROPOSAL(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_DUELPROPOSAL_CONDITION;
    INFORMATION = DIA_VICENTE_DUELPROPOSAL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VICENTE_DUELPROPOSAL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) && ((Q302_PLAYERDUELWITHRODRIGOSTATE) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_DUELPROPOSAL_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelProposal_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_DuelProposal_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelProposal_13_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_DuelProposal_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelProposal_13_05");
    INFO_CLEARCHOICES(0x14990);
    INFO_ADDCHOICE(0x14990, "I think I've had enough dueling for a while.", 0x14994);
    INFO_ADDCHOICE(0x14990, "Well... why not?", 0x14993);
}

func void DIA_VICENTE_DUELPROPOSAL_YES() {
    INFO_CLEARCHOICES(0x14990);
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_DuelProposal_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelProposal_Yes_13_02");
}

func void DIA_VICENTE_DUELPROPOSAL_NO() {
    INFO_CLEARCHOICES(0x14990);
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_DuelProposal_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelProposal_No_13_02");
}

var int Q302_ACTIVEDUELWITHVICENTE = 0;
instance DIA_VICENTE_DUELGUIDE(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_DUELGUIDE_CONDITION;
    INFORMATION = DIA_VICENTE_DUELGUIDE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Grab your weapon, we're gonna fight.";
}

func int DIA_VICENTE_DUELGUIDE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        if (((NPC_KNOWSINFO(OTHER, 0x14990)) && ((Q302_ACTIVEDUELWITHVICENTE) == (FALSE))) && ((Q302_PLAYERDUELWITHVICENTESTATE) == (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_SETDUELGUIDE() {
    if ((NPC_GETDISTTOWP(SELF, PIR_1310_VICENTE_DUELWP)) >= (200)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Guide_13_02");
        NPC_EXCHANGEROUTINE(SELF, "GuideToDuel");
        AI_STOPPROCESSINFOS(SELF);
    };
    Q302_ACTIVEDUELWITHVICENTE = TRUE;
    SELF.AIVAR[45] = AF_NONE;
    AI_STOPPROCESSINFOS(HERO);
}

func void DIA_VICENTE_DUELGUIDE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Guide_15_01");
    DIA_VICENTE_SETDUELGUIDE();
}

func void DIA_VICENTE_STARTDUEL() {
    if ((NPC_HASEQUIPPEDMELEEWEAPON(SELF)) == (FALSE)) {
        CREATEINVITEMS(SELF, 0x83ca, 1);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    SELF.AIVAR[94] = TRUE;
    HERO.AIVAR[96] = 10;
    SELF.AIVAR[96] = 10;
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(PIR_1310_VICENTE, HERO, AR_NONE, 1);
}

instance DIA_VICENTE_DUEL(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_DUEL_CONDITION;
    INFORMATION = DIA_VICENTE_DUEL_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VICENTE_DUEL_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        if ((((NPC_GETDISTTOWP(SELF, PIR_1310_VICENTE_DUELWP)) <= (200)) && (Q302_ACTIVEDUELWITHVICENTE)) && ((SELF.AIVAR[45]) == (AF_NONE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_DUEL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Vicente_Duel_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    DIA_VICENTE_STARTDUEL();
}

var int Q302_PLAYERDUELWITHVICENTESTATE = 0;
instance DIA_VICENTE_DUELAFTER(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_DUELAFTER_CONDITION;
    INFORMATION = DIA_VICENTE_DUELAFTER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VICENTE_DUELAFTER_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING)) {
        if ((((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) && (Q302_ACTIVEDUELWITHVICENTE)) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
            if (NPC_ISINSTATE(SELF, 0xf09f)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_DUELAFTER_INFO() {
    Q302_ACTIVEDUELWITHVICENTE = FALSE;
    B_HEALNPC_SELF();
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    SELF.AIVAR[94] = FALSE;
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelAfter_13_01");
        Q302_PLAYERDUELWITHVICENTESTATE = 1;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelAfter_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_DuelAfter_13_03");
    CREATEINVITEMS(SELF, 0x87b1, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x87b1, 1);
    AI_LOGENTRY(TOPIC_Q302, LOG_Q302_VICENTEWEWON);
    Q302_PLAYERDUELWITHVICENTESTATE = 2;
    if ((((B_COUNTDUELSQ302()) > (2)) && ((Q302_PRICEWILLBELOWER_ENTRY) == (FALSE))) && ((LOG_GETSTATUS(MIS_Q302)) == (LOG_RUNNING))) {
        AI_LOGENTRY(TOPIC_Q302, LOG_Q302_THEYKNOWME);
        Q302_PRICEWILLBELOWER_ENTRY = TRUE;
    };
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

instance DIA_VICENTE_Q306_AFTERTOURNAMENT(C_INFO) {
    NPC = 0xe56e;
    NR = 1;
    CONDITION = DIA_VICENTE_Q306_AFTERTOURNAMENT_CONDITION;
    INFORMATION = DIA_VICENTE_Q306_AFTERTOURNAMENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_VICENTE_Q306_AFTERTOURNAMENT_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 0xf09f)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_Q306_AFTERTOURNAMENT_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Q306_AfterTournament_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VICENTE_AMBIENT(C_INFO) {
    NPC = 0xe56e;
    NR = 997;
    CONDITION = DIA_VICENTE_AMBIENT_CONDITION;
    INFORMATION = DIA_VICENTE_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_VICENTE_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14972)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((Q302_PLAYERDUELWITHVICENTESTATE) == (0)) && ((Q306_TOURNAMENTSTATUS) != (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Ambient_13_01");
    };
    if (((Q302_PLAYERDUELWITHVICENTESTATE) == (1)) && ((Q306_TOURNAMENTSTATUS) != (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Ambient_13_02");
    };
    if (((Q302_PLAYERDUELWITHVICENTESTATE) == (2)) && ((Q306_TOURNAMENTSTATUS) != (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Ambient_13_03");
    };
    if ((Q306_TOURNAMENTSTATUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Vicente_Ambient_13_04");
    };
}

instance DIA_VICENTE_PICKPOCKET(C_INFO) {
    NPC = 0xe56e;
    NR = 900;
    CONDITION = DIA_VICENTE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VICENTE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_VICENTE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VICENTE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x149a8);
    INFO_ADDCHOICE(0x149a8, DIALOG_BACK, 0x149ac);
    INFO_ADDCHOICE(0x149a8, DIALOG_PICKPOCKET, 0x149ab);
}

func void DIA_VICENTE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x84c0, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x84c0, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x149a8);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x149a8);
}

func void DIA_VICENTE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x149a8);
}

instance DIA_VICENTE_SELLWING(C_INFO) {
    NPC = 0xe56e;
    NR = 770;
    CONDITION = DIA_VICENTE_SELLWING_CONDITION;
    INFORMATION = DIA_VICENTE_SELLWING_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell wings)";
}

var int VICENTENEEDWINGS_NORMAL_ENOUGH = 0;
var int VICENTENEEDWINGS_SWAMP_ENOUGH = 0;
var int VICENTENEEDWINGS_NORMAL_COUNT = 0;
var int VICENTENEEDWINGS_SWAMP_COUNT = 0;
func int DIA_VICENTE_SELLWING_CONDITION() {
    if ((VICENTEWANTSWINGS) == (TRUE)) {
        if (((VICENTENEEDWINGS_NORMAL_ENOUGH) == (FALSE)) || ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int VICENTE_WINGINSTANCE = 0;
var int VICENTE_WINGVALUE = 0;
func void DIA_VICENTE_SELLWING_CHOICES() {
    VICENTE_WINGINSTANCE = -(1);
    VICENTE_WINGVALUE = 0;
    if (((VICENTENEEDWINGS_NORMAL_ENOUGH) == (TRUE)) && ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (TRUE))) {
        INFO_CLEARCHOICES(0x149ad);
    };
    INFO_CLEARCHOICES(0x149ad);
    INFO_ADDCHOICE(0x149ad, DIALOG_BACK, 0x149ba);
    if (((NPC_HASITEMS(OTHER, 0x843f)) >= (1)) && ((VICENTENEEDWINGS_NORMAL_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(0x149ad, THROPHYNAME_WINGS, 0x149bb);
    };
    if (((NPC_HASITEMS(OTHER, 0x8a25)) >= (1)) && ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (FALSE))) {
        INFO_ADDCHOICE(0x149ad, THROPHYNAME_GREENWING, 0x149bc);
    };
}

func void DIA_VICENTE_SELLWING_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_VICENTE_SELLWING_CHOICES();
}

func void DIA_VICENTE_SELLWING_AMMOUNT() {
    INFO_CLEARCHOICES(0x149ad);
    MAX = NPC_HASITEMS(HERO, VICENTE_WINGINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(0x149ad, ALL_STRING, 0x149bd);
    INFO_ADDCHOICE(0x149ad, CHOICE_NUMBER_5, 0x149bf);
    INFO_ADDCHOICE(0x149ad, CHOICE_NUMBER_1, 0x149c1);
    INFO_ADDCHOICE(0x149ad, DIALOG_BACK, 0x149b5);
}

var int DIA_VICENTE_SELLWING_AMMOUNT.MAX = 0;
var string DIA_VICENTE_SELLWING_AMMOUNT.ALL_STRING = "";
func void DIA_VICENTE_SELLWING_BACK() {
    INFO_CLEARCHOICES(0x149ad);
}

func void DIA_VICENTE_SELLWING_NORMAL() {
    VICENTE_WINGINSTANCE = 0x843f;
    VICENTE_WINGVALUE = VALUE_WING;
    DIA_VICENTE_SELLWING_AMMOUNT();
}

func void DIA_VICENTE_SELLWING_SWAMP() {
    VICENTE_WINGINSTANCE = 0x8a25;
    VICENTE_WINGVALUE = VALUE_GREENWING;
    DIA_VICENTE_SELLWING_AMMOUNT();
}

func void DIA_VICENTE_SELLWING_ALL() {
    if ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, VICENTE_WINGINSTANCE);
        NPC_REMOVEINVITEMS(SELF, VICENTE_WINGINSTANCE, MAX);
        CREATEINVITEMS(SELF, 0x859b, (MAX) * (VICENTE_WINGVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 0x859b, (MAX) * (VICENTE_WINGVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, VICENTE_WINGINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((VICENTE_WINGINSTANCE) == (0x8a25)) {
            VICENTENEEDWINGS_SWAMP_COUNT = (VICENTENEEDWINGS_SWAMP_COUNT) + (MAX);
            if ((VICENTENEEDWINGS_SWAMP_COUNT) >= (12)) {
                VICENTENEEDWINGS_SWAMP_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_SWAMP_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c2);
                };
            };
        } else if ((VICENTE_WINGINSTANCE) == (0x843f)) {
            VICENTENEEDWINGS_NORMAL_COUNT = (VICENTENEEDWINGS_NORMAL_COUNT) + (MAX);
            if ((VICENTENEEDWINGS_NORMAL_COUNT) >= (12)) {
                VICENTENEEDWINGS_NORMAL_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_NORMAL_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c3);
                };
            };
        };
        DIA_VICENTE_SELLWING_CHOICES();
    };
    DIA_VICENTE_SELLWING_CHOICES();
}

var int DIA_VICENTE_SELLWING_ALL.MAX = 0;
func void DIA_VICENTE_SELLWING_5() {
    if ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) >= (5)) {
        NPC_REMOVEINVITEMS(SELF, VICENTE_WINGINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, VICENTE_WINGINSTANCE, 5);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, (5) * (VICENTE_WINGVALUE));
        if ((VICENTE_WINGINSTANCE) == (0x8a25)) {
            VICENTENEEDWINGS_SWAMP_COUNT = (VICENTENEEDWINGS_SWAMP_COUNT) + (5);
            if ((VICENTENEEDWINGS_SWAMP_COUNT) >= (12)) {
                VICENTENEEDWINGS_SWAMP_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_SWAMP_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c2);
                };
            };
        } else if ((VICENTE_WINGINSTANCE) == (0x843f)) {
            VICENTENEEDWINGS_NORMAL_COUNT = (VICENTENEEDWINGS_NORMAL_COUNT) + (5);
            if ((VICENTENEEDWINGS_NORMAL_COUNT) >= (12)) {
                VICENTENEEDWINGS_NORMAL_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_NORMAL_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c3);
                };
            };
        };
        if ((((VICENTE_WINGINSTANCE) == (0x843f)) && ((VICENTENEEDWINGS_NORMAL_ENOUGH) == (FALSE))) || (((VICENTE_WINGINSTANCE) == (0x8a25)) && ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (FALSE)))) {
            DIA_VICENTE_SELLWING_AMMOUNT();
        } else {
            DIA_VICENTE_SELLWING_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if (((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, VICENTE_WINGINSTANCE);
        NPC_REMOVEINVITEMS(SELF, VICENTE_WINGINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, VICENTE_WINGINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, (MAX) * (VICENTE_WINGVALUE));
        if ((VICENTE_WINGINSTANCE) == (0x8a25)) {
            VICENTENEEDWINGS_SWAMP_COUNT = (VICENTENEEDWINGS_SWAMP_COUNT) + (MAX);
            if ((VICENTENEEDWINGS_SWAMP_COUNT) >= (12)) {
                VICENTENEEDWINGS_SWAMP_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_SWAMP_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c2);
                };
            };
        } else if ((VICENTE_WINGINSTANCE) == (0x843f)) {
            VICENTENEEDWINGS_NORMAL_COUNT = (VICENTENEEDWINGS_NORMAL_COUNT) + (MAX);
            if ((VICENTENEEDWINGS_NORMAL_COUNT) >= (12)) {
                VICENTENEEDWINGS_NORMAL_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_NORMAL_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c3);
                };
            };
        };
        if ((((VICENTE_WINGINSTANCE) == (0x843f)) && ((VICENTENEEDWINGS_NORMAL_ENOUGH) == (FALSE))) || (((VICENTE_WINGINSTANCE) == (0x8a25)) && ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (FALSE)))) {
            DIA_VICENTE_SELLWING_AMMOUNT();
        } else {
            DIA_VICENTE_SELLWING_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) == (0)) {
        DIA_VICENTE_SELLWING_CHOICES();
    };
}

var int DIA_VICENTE_SELLWING_5.MAX = 0;
func void DIA_VICENTE_SELLWING_1() {
    if ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) >= (1)) {
        NPC_REMOVEINVITEMS(SELF, VICENTE_WINGINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, VICENTE_WINGINSTANCE, 1);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 0x859b, VICENTE_WINGVALUE);
        if ((VICENTE_WINGINSTANCE) == (0x8a25)) {
            VICENTENEEDWINGS_SWAMP_COUNT = (VICENTENEEDWINGS_SWAMP_COUNT) + (1);
            if ((VICENTENEEDWINGS_SWAMP_COUNT) >= (12)) {
                VICENTENEEDWINGS_SWAMP_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_SWAMP_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c2);
                };
            };
        } else if ((VICENTE_WINGINSTANCE) == (0x843f)) {
            VICENTENEEDWINGS_NORMAL_COUNT = (VICENTENEEDWINGS_NORMAL_COUNT) + (1);
            if ((VICENTENEEDWINGS_NORMAL_COUNT) >= (12)) {
                VICENTENEEDWINGS_NORMAL_ENOUGH = TRUE;
                if ((VICENTENEEDWINGS_NORMAL_COUNT) > (12)) {
                    AI_FUNCTION(SELF, 0x149c3);
                };
            };
        };
        if ((((VICENTE_WINGINSTANCE) == (0x843f)) && ((VICENTENEEDWINGS_NORMAL_ENOUGH) == (FALSE))) || (((VICENTE_WINGINSTANCE) == (0x8a25)) && ((VICENTENEEDWINGS_SWAMP_ENOUGH) == (FALSE)))) {
            DIA_VICENTE_SELLWING_AMMOUNT();
        } else {
            DIA_VICENTE_SELLWING_CHOICES();
        } else {
            /* set_instance(0) */;
        };
    };
    if ((NPC_HASITEMS(OTHER, VICENTE_WINGINSTANCE)) == (0)) {
        DIA_VICENTE_SELLWING_CHOICES();
    };
}

func void VICENTE_GIVEBACKSTUFF_WINGSWAMP() {
    CREATEINVITEMS(PIR_1310_VICENTE, 0x8a25, (VICENTENEEDWINGS_SWAMP_COUNT) - (12));
    NPC_REMOVEINVITEMS(PIR_1310_VICENTE, 0x859b, (VALUE_GREENWING) * ((VICENTENEEDWINGS_SWAMP_COUNT) - (12)));
    PRINTSCREENS(PRINT_VICENTEWING, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, PIR_1310_VICENTE, 0x859b, (VALUE_GREENWING) * ((VICENTENEEDWINGS_SWAMP_COUNT) - (12)));
}

func void VICENTE_GIVEBACKSTUFF_WINGNORMAL() {
    CREATEINVITEMS(PIR_1310_VICENTE, 0x843f, (VICENTENEEDWINGS_NORMAL_COUNT) - (12));
    NPC_REMOVEINVITEMS(PIR_1310_VICENTE, 0x859b, (VALUE_WING) * ((VICENTENEEDWINGS_NORMAL_COUNT) - (12)));
    PRINTSCREENS(PRINT_VICENTEWING, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, PIR_1310_VICENTE, 0x859b, (VALUE_WING) * ((VICENTENEEDWINGS_NORMAL_COUNT) - (12)));
}
