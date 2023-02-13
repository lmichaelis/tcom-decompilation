var int BOWMAKING_MODE;
const int BOWMAKING_AMMO = 1;
const int BOWMAKING_BOWS = 2;
const int BOWMAKING_CROSSBOWS = 3;
instance PC_BOWMAKING_AMMUNITION(C_INFO) {
    NPC = 50091;
    NR = 50;
    CONDITION = PC_BOWMAKING_AMMUNITION_CONDITION;
    INFORMATION = PC_BOWMAKING_AMMUNITION_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = PRINT_BOWMAKING_AMMUNITION;
}

func int PC_BOWMAKING_AMMUNITION_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((BOWMAKING_MODE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var string BOWMAKING_PRINTHOWMANYCREATED;
var string BOWMAKING_COUNTHOWMANYCREATED;
var int BOWMAKING_HOWMUCHAMMO;
func void PC_BOWMAKING_AMMUNITION_INFO() {
    BOWMAKING_MODE = BOWMAKING_AMMO;
    INFO_CLEARCHOICES(48362);
    INFO_ADDCHOICE(48362, DIALOG_BACK, 48368);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_ARROWS, 48369);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BOLTS, 48375);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_ARROWSTOBOLT, 48381);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BOLTSTOARROW, 48387);
}

func void PC_BOWMAKING_AMMUNITION_BACK() {
    INFO_CLEARCHOICES(48362);
    BOWMAKING_MODE = 0;
}

func void PC_BOWMAKING_AMMUNITION_ARROWS() {
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (0)) {
        BOWMAKING_HOWMUCHAMMO = 3;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (1)) {
        BOWMAKING_HOWMUCHAMMO = 4;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (2)) {
        BOWMAKING_HOWMUCHAMMO = 5;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (3)) {
        BOWMAKING_HOWMUCHAMMO = 6;
    };
    INFO_CLEARCHOICES(48362);
    INFO_ADDCHOICE(48362, DIALOG_BACK, 48367);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_ALL, 48370);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_10, 48372);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_01, 48374);
}

func void PC_BOWMAKING_AMMUNITION_ARROWS_ALL() {
    var int NUMBER_BAUMACE;
    if ((NPC_HASITEMS(HERO, 34000)) >= (1)) {
        NUMBER_BAUMACE = NPC_HASITEMS(HERO, 34000);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34383, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWS();
}

func void PC_BOWMAKING_AMMUNITION_ARROWS_10() {
    var int NUMBER_BAUMACE;
    if ((NPC_HASITEMS(HERO, 34000)) >= (10)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((10) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (10) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34383, (10) * (BOWMAKING_HOWMUCHAMMO));
    };
    if (((NPC_HASITEMS(HERO, 34000)) > (0)) && ((NPC_HASITEMS(HERO, 34000)) <= (9))) {
        NUMBER_BAUMACE = NPC_HASITEMS(HERO, 34000);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34383, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWS();
}

func void PC_BOWMAKING_AMMUNITION_ARROWS_01() {
    if ((NPC_HASITEMS(HERO, 34000)) >= (1)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(BOWMAKING_HOWMUCHAMMO);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, BOWMAKING_HOWMUCHAMMO, ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34383, BOWMAKING_HOWMUCHAMMO);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWS();
}

func void PC_BOWMAKING_AMMUNITION_BOLTS() {
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (0)) {
        BOWMAKING_HOWMUCHAMMO = 3;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (1)) {
        BOWMAKING_HOWMUCHAMMO = 4;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (2)) {
        BOWMAKING_HOWMUCHAMMO = 5;
    };
    if ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) == (3)) {
        BOWMAKING_HOWMUCHAMMO = 6;
    };
    INFO_CLEARCHOICES(48362);
    INFO_ADDCHOICE(48362, DIALOG_BACK, 48367);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_ALL, 48376);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_10, 48378);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BRANCHES_01, 48380);
}

func void PC_BOWMAKING_AMMUNITION_BOLTS_ALL() {
    var int NUMBER_BAUMACE;
    if ((NPC_HASITEMS(HERO, 34000)) >= (1)) {
        NUMBER_BAUMACE = NPC_HASITEMS(HERO, 34000);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34384, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTS();
}

func void PC_BOWMAKING_AMMUNITION_BOLTS_10() {
    var int NUMBER_BAUMACE;
    if ((NPC_HASITEMS(HERO, 34000)) >= (10)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((10) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (10) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34384, (10) * (BOWMAKING_HOWMUCHAMMO));
    };
    if (((NPC_HASITEMS(HERO, 34000)) > (0)) && ((NPC_HASITEMS(HERO, 34000)) <= (9))) {
        NUMBER_BAUMACE = NPC_HASITEMS(HERO, 34000);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING((NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO), ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34384, (NUMBER_BAUMACE) * (BOWMAKING_HOWMUCHAMMO));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTS();
}

func void PC_BOWMAKING_AMMUNITION_BOLTS_01() {
    if ((NPC_HASITEMS(HERO, 34000)) >= (1)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(BOWMAKING_HOWMUCHAMMO);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        GAMESERVICES_INCREMENTSTATANDCHECKACHIEVEMENT(STAT_ACH_20, BOWMAKING_HOWMUCHAMMO, ACH_20, STAT_ACH_20_REQUIRED);
        CREATEINVITEMS(HERO, 34384, BOWMAKING_HOWMUCHAMMO);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTS();
}

func void PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT() {
    INFO_CLEARCHOICES(48362);
    INFO_ADDCHOICE(48362, DIALOG_BACK, 48367);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_ARROWSTOBOLT_ALL, 48382);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_ARROWSTOBOLT_10, 48384);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_ARROWSTOBOLT_01, 48386);
}

func void PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT_ALL() {
    var int NUMBER_ARROW;
    if ((NPC_HASITEMS(HERO, 34383)) >= (2)) {
        NUMBER_ARROW = NPC_HASITEMS(HERO, 34383);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(((NUMBER_ARROW) / (2)) * (1));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34384, ((NUMBER_ARROW) / (2)) * (1));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT();
}

func void PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT_10() {
    var int NUMBER_ARROW;
    if ((NPC_HASITEMS(HERO, 34383)) >= (20)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(10);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34384, 10);
    };
    if (((NPC_HASITEMS(HERO, 34383)) > (0)) && ((NPC_HASITEMS(HERO, 34383)) <= (19))) {
        NUMBER_ARROW = NPC_HASITEMS(HERO, 34383);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(((NUMBER_ARROW) / (2)) * (1));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34384, ((NUMBER_ARROW) / (2)) * (1));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT();
}

func void PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT_01() {
    if ((NPC_HASITEMS(HERO, 34383)) >= (2)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(1);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_BOLTSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34384, 1);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_ARROWSTOBOLT();
}

func void PC_BOWMAKING_AMMUNITION_BOLTSTOARROW() {
    INFO_CLEARCHOICES(48362);
    INFO_ADDCHOICE(48362, DIALOG_BACK, 48367);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BOLTSTOARROW_ALL, 48388);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BOLTSTOARROW_10, 48390);
    INFO_ADDCHOICE(48362, PRINT_BOWMAKING_AMMUNITION_BOLTSTOARROW_01, 48392);
}

func void PC_BOWMAKING_AMMUNITION_BOLTSTOARROW_ALL() {
    var int NUMBER_BOLT;
    if ((NPC_HASITEMS(HERO, 34384)) >= (2)) {
        NUMBER_BOLT = NPC_HASITEMS(HERO, 34384);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(((NUMBER_BOLT) / (2)) * (1));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34383, ((NUMBER_BOLT) / (2)) * (1));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTSTOARROW();
}

func void PC_BOWMAKING_AMMUNITION_BOLTSTOARROW_10() {
    var int NUMBER_BOLT;
    if ((NPC_HASITEMS(HERO, 34384)) >= (20)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(10);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34383, 10);
    };
    if (((NPC_HASITEMS(HERO, 34384)) > (0)) && ((NPC_HASITEMS(HERO, 34384)) <= (19))) {
        NUMBER_BOLT = NPC_HASITEMS(HERO, 34384);
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(((NUMBER_BOLT) / (2)) * (1));
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34383, ((NUMBER_BOLT) / (2)) * (1));
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTSTOARROW();
}

func void PC_BOWMAKING_AMMUNITION_BOLTSTOARROW_01() {
    if ((NPC_HASITEMS(HERO, 34384)) >= (2)) {
        BOWMAKING_COUNTHOWMANYCREATED = INTTOSTRING(1);
        BOWMAKING_PRINTHOWMANYCREATED = CONCATSTRINGS(BOWMAKING_COUNTHOWMANYCREATED, BOWMAKING_PRINT_HOWMANYISDONE);
        PRINT(PRINT_ARROWSUCCESS);
        PRINT(BOWMAKING_PRINTHOWMANYCREATED);
        CREATEINVITEMS(HERO, 34383, 1);
    };
    PRINT(PRINT_PRODITEMSMISSING);
    PC_BOWMAKING_AMMUNITION_BOLTSTOARROW();
}

instance PC_BOWMAKING_BACK(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_BOWMAKING_BACK_CONDITION;
    INFORMATION = PC_BOWMAKING_BACK_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BACK;
}

func int PC_BOWMAKING_BACK_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((BOWMAKING_MODE) > (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOWMAKING_BACK_INFO() {
    BOWMAKING_MODE = 0;
}

instance PC_BOWMAKING_BOWS(C_INFO) {
    NPC = 50091;
    NR = 50;
    CONDITION = PC_BOWMAKING_BOWS_CONDITION;
    INFORMATION = PC_BOWMAKING_BOWS_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = PRINT_BOWMAKING_BOWS;
}

func int PC_BOWMAKING_BOWS_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((BOWMAKING_MODE) == (0))) && ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) > (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOWMAKING_BOWS_INFO() {
    BOWMAKING_MODE = BOWMAKING_BOWS;
}

instance PC_BOWMAKING_CROSSBOWS(C_INFO) {
    NPC = 50091;
    NR = 50;
    CONDITION = PC_BOWMAKING_CROSSBOWS_CONDITION;
    INFORMATION = PC_BOWMAKING_CROSSBOWS_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = PRINT_BOWMAKING_CROSSBOWS;
}

func int PC_BOWMAKING_CROSSBOWS_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((BOWMAKING_MODE) == (0))) && ((NPC_GETTALENTSKILL(HERO, NPC_TALENT_FLETCHERY)) > (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOWMAKING_CROSSBOWS_INFO() {
    BOWMAKING_MODE = BOWMAKING_CROSSBOWS;
}

instance PC_BOWMAKING_ENDE(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_BOWMAKING_ENDE_CONDITION;
    INFORMATION = PC_BOWMAKING_ENDE_INFO;
    IMPORTANT = FALSE;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_BOWMAKING_ENDE_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((BOWMAKING_MODE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOWMAKING_ENDE_INFO() {
    BOWMAKING_MODE = 0;
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_CROSSBOW_L_02(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_L_02_CONDITION;
    INFORMATION = PC_CROSSBOW_L_02_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_L_02);
}

func int PC_CROSSBOW_L_02_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[71]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_L_02_INFO() {
    PC_CRAFTRECIPEITEM(37898);
}

instance PC_CROSSBOW_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_01_CONDITION;
    INFORMATION = PC_CROSSBOW_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_01);
}

func int PC_CROSSBOW_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[72]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_01_INFO() {
    PC_CRAFTRECIPEITEM(37900);
}

instance PC_CROSSBOW_L_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_L_01_CONDITION;
    INFORMATION = PC_CROSSBOW_L_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_L_01);
}

func int PC_CROSSBOW_L_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[73]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_L_01_INFO() {
    PC_CRAFTRECIPEITEM(37902);
}

instance PC_CROSSBOW_M_02(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_M_02_CONDITION;
    INFORMATION = PC_CROSSBOW_M_02_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_M_02);
}

func int PC_CROSSBOW_M_02_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[74]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_M_02_INFO() {
    PC_CRAFTRECIPEITEM(37904);
}

instance PC_EMMA_CROSSBOW(C_INFO) {
    NPC = 50091;
    CONDITION = PC_EMMA_CROSSBOW_CONDITION;
    INFORMATION = PC_EMMA_CROSSBOW_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_EMMA_CROSSBOW);
}

func int PC_EMMA_CROSSBOW_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[75]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_EMMA_CROSSBOW_INFO() {
    PC_CRAFTRECIPEITEM(37906);
}

instance PC_CROSSBOW_05(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_05_CONDITION;
    INFORMATION = PC_CROSSBOW_05_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_05);
}

func int PC_CROSSBOW_05_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[76]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_05_INFO() {
    PC_CRAFTRECIPEITEM(37908);
}

instance PC_JON_CROSSBOW(C_INFO) {
    NPC = 50091;
    CONDITION = PC_JON_CROSSBOW_CONDITION;
    INFORMATION = PC_JON_CROSSBOW_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_JON_CROSSBOW);
}

func int PC_JON_CROSSBOW_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[77]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_JON_CROSSBOW_INFO() {
    PC_CRAFTRECIPEITEM(37910);
}

instance PC_CROSSBOW_H_02(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_H_02_CONDITION;
    INFORMATION = PC_CROSSBOW_H_02_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_H_02);
}

func int PC_CROSSBOW_H_02_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[78]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_H_02_INFO() {
    PC_CRAFTRECIPEITEM(37912);
}

instance PC_CROSSBOW_M_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_M_01_CONDITION;
    INFORMATION = PC_CROSSBOW_M_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_M_01);
}

func int PC_CROSSBOW_M_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[79]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_M_01_INFO() {
    PC_CRAFTRECIPEITEM(37914);
}

instance PC_CROSSBOW_H_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_H_01_CONDITION;
    INFORMATION = PC_CROSSBOW_H_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_H_01);
}

func int PC_CROSSBOW_H_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[80]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_H_01_INFO() {
    PC_CRAFTRECIPEITEM(37916);
}

instance PC_CROSSBOW_03(C_INFO) {
    NPC = 50091;
    CONDITION = PC_CROSSBOW_03_CONDITION;
    INFORMATION = PC_CROSSBOW_03_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_CROSSBOW_03);
}

func int PC_CROSSBOW_03_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[81]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_CROSSBOW_03_INFO() {
    PC_CRAFTRECIPEITEM(37918);
}

instance PC_ADDON_MAGICCROSSBOW(C_INFO) {
    NPC = 50091;
    CONDITION = PC_ADDON_MAGICCROSSBOW_CONDITION;
    INFORMATION = PC_ADDON_MAGICCROSSBOW_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_ADDON_MAGICCROSSBOW);
}

func int PC_ADDON_MAGICCROSSBOW_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[82]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_CROSSBOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ADDON_MAGICCROSSBOW_INFO() {
    PC_CRAFTRECIPEITEM(37920);
}

instance PC_BOW_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_01_CONDITION;
    INFORMATION = PC_BOW_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_01);
}

func int PC_BOW_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[83]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_01_INFO() {
    PC_CRAFTRECIPEITEM(37922);
}

instance PC_BOW_09(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_09_CONDITION;
    INFORMATION = PC_BOW_09_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_09);
}

func int PC_BOW_09_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[84]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_09_INFO() {
    PC_CRAFTRECIPEITEM(37924);
}

instance PC_BOW_05(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_05_CONDITION;
    INFORMATION = PC_BOW_05_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_05);
}

func int PC_BOW_05_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[85]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_05_INFO() {
    PC_CRAFTRECIPEITEM(37926);
}

instance PC_BOW_M_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_M_01_CONDITION;
    INFORMATION = PC_BOW_M_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_M_01);
}

func int PC_BOW_M_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[86]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_M_01_INFO() {
    PC_CRAFTRECIPEITEM(37928);
}

instance PC_BOW_04(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_04_CONDITION;
    INFORMATION = PC_BOW_04_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_04);
}

func int PC_BOW_04_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[87]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_04_INFO() {
    PC_CRAFTRECIPEITEM(37930);
}

instance PC_BOW_07(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_07_CONDITION;
    INFORMATION = PC_BOW_07_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_07);
}

func int PC_BOW_07_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[88]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_07_INFO() {
    PC_CRAFTRECIPEITEM(37932);
}

instance PC_BOW_02(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_02_CONDITION;
    INFORMATION = PC_BOW_02_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_02);
}

func int PC_BOW_02_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[89]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_02_INFO() {
    PC_CRAFTRECIPEITEM(37934);
}

instance PC_BOW_08(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_08_CONDITION;
    INFORMATION = PC_BOW_08_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_08);
}

func int PC_BOW_08_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[90]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_08_INFO() {
    PC_CRAFTRECIPEITEM(37936);
}

instance PC_ADDON_FIREBOW(C_INFO) {
    NPC = 50091;
    CONDITION = PC_ADDON_FIREBOW_CONDITION;
    INFORMATION = PC_ADDON_FIREBOW_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_ADDON_FIREBOW);
}

func int PC_ADDON_FIREBOW_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[91]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ADDON_FIREBOW_INFO() {
    PC_CRAFTRECIPEITEM(37938);
}

instance PC_BOW_M_04(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_M_04_CONDITION;
    INFORMATION = PC_BOW_M_04_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_M_04);
}

func int PC_BOW_M_04_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[92]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_M_04_INFO() {
    PC_CRAFTRECIPEITEM(37940);
}

instance PC_BOW_06(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_06_CONDITION;
    INFORMATION = PC_BOW_06_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_06);
}

func int PC_BOW_06_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[93]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_06_INFO() {
    PC_CRAFTRECIPEITEM(37942);
}

instance PC_BOW_H_01(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_H_01_CONDITION;
    INFORMATION = PC_BOW_H_01_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_H_01);
}

func int PC_BOW_H_01_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[94]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_H_01_INFO() {
    PC_CRAFTRECIPEITEM(37944);
}

instance PC_BOW_H_02(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_H_02_CONDITION;
    INFORMATION = PC_BOW_H_02_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_H_02);
}

func int PC_BOW_H_02_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[95]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_H_02_INFO() {
    PC_CRAFTRECIPEITEM(37946);
}

instance PC_BOW_H_04(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BOW_H_04_CONDITION;
    INFORMATION = PC_BOW_H_04_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_BOW_H_04);
}

func int PC_BOW_H_04_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[96]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_BOW_H_04_INFO() {
    PC_CRAFTRECIPEITEM(37948);
}

instance PC_ADDON_MAGICBOW(C_INFO) {
    NPC = 50091;
    CONDITION = PC_ADDON_MAGICBOW_CONDITION;
    INFORMATION = PC_ADDON_MAGICBOW_INFO;
    PERMANENT = TRUE;
    NR = (10000) + (WEAPON_ADDON_MAGICBOW);
}

func int PC_ADDON_MAGICBOW_CONDITION() {
    if ((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BOWMAKING)) && ((PLAYER_TALENT_SMITH[97]) == (TRUE))) && ((BOWMAKING_MODE) == (BOWMAKING_BOWS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_ADDON_MAGICBOW_INFO() {
    PC_CRAFTRECIPEITEM(37950);
}

func void BOWMAKING_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_BOWMAKING;
        AI_PROCESSINFOS(HER);
        PC_CROSSBOW_L_02.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37898);
        PC_CROSSBOW_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37900);
        PC_CROSSBOW_L_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37902);
        PC_CROSSBOW_M_02.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37904);
        PC_EMMA_CROSSBOW.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37906);
        PC_CROSSBOW_05.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37908);
        PC_JON_CROSSBOW.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37910);
        PC_CROSSBOW_H_02.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37912);
        PC_CROSSBOW_M_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37914);
        PC_CROSSBOW_H_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37916);
        PC_CROSSBOW_03.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37918);
        PC_ADDON_MAGICCROSSBOW.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37920);
        PC_BOW_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37922);
        PC_BOW_09.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37924);
        PC_BOW_05.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37926);
        PC_BOW_M_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37928);
        PC_BOW_04.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37930);
        PC_BOW_07.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37932);
        PC_BOW_02.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37934);
        PC_BOW_08.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37936);
        PC_ADDON_FIREBOW.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37938);
        PC_BOW_M_04.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37940);
        PC_BOW_06.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37942);
        PC_BOW_H_01.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37944);
        PC_BOW_H_02.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37946);
        PC_BOW_H_04.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37948);
        PC_ADDON_MAGICBOW.DESCRIPTION = BUILDRECIPEDIALOGDESCRIPTION(37950);
    };
}

