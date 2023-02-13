var int PRAYIDOLDAY;
var int RECIEVEDMONEY;
var int GIVENHITPOINTS;
var int GIVENMANA;
var int GOLDFROMBELIAR;
const int HPFORBELIAR = 10;
const int HPFORBELIARV2 = 30;
const int HPFORBELIARV3 = 50;
func void B_BLITZINARSCH() {
    var string CONCATTEXT2;
    var string CONCATTEXT1;
    var int ABZUG;
    var int BLITZINARSCH_HITPOINTS;
    var int CURRENTHITPOINTS;
    CURRENTHITPOINTS = HERO.ATTRIBUTE[0];
    BLITZINARSCH_HITPOINTS = ((CURRENTHITPOINTS) * (4)) / (5);
    if ((BLITZINARSCH_HITPOINTS) < (2)) {
        BLITZINARSCH_HITPOINTS = 2;
    };
    ABZUG = (HERO.ATTRIBUTE[0]) - (BLITZINARSCH_HITPOINTS);
    if ((ABZUG) > (0)) {
        CONCATTEXT1 = CONCATSTRINGS(" ", NAME_DAMAGE);
        CONCATTEXT2 = CONCATSTRINGS(INTTOSTRING(ABZUG), CONCATTEXT1);
        AI_PRINTSCREEN(CONCATTEXT2, -(1), YPOS_GOLDTAKEN, FONT_SCREENSMALL, 2);
        WLD_PLAYEFFECT("spellFX_BELIARSRAGE", HERO, HERO, 0, 0, 0, FALSE);
    };
    HERO.ATTRIBUTE[0] = BLITZINARSCH_HITPOINTS;
}

func void B_GETBELIARSGOLD(var int KOHLE) {
    var string CONCATTEXT2;
    var string CONCATTEXT1;
    GOLDFROMBELIAR = (GOLDFROMBELIAR) + (KOHLE);
    CREATEINVITEMS(HERO, 34203, KOHLE);
    CONCATTEXT1 = CONCATSTRINGS(INTTOSTRING(KOHLE), " ");
    CONCATTEXT2 = CONCATSTRINGS(CONCATTEXT1, PRINT_GOLDERHALTEN);
    AI_PRINTSCREEN(CONCATTEXT2, -(1), YPOS_GOLDTAKEN, FONT_SCREENSMALL, 2);
}

instance PC_PRAYIDOL_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_PRAYIDOL_END_CONDITION;
    INFORMATION = PC_PRAYIDOL_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_PRAYIDOL_END_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_PRAYIDOL)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_PRAYIDOL_END_INFO() {
    B_ENDPRODUCTIONDIALOG();
}

instance PC_PRAYIDOL_PRAYIDOL(C_INFO) {
    NPC = 50091;
    NR = 2;
    CONDITION = PC_PRAYIDOL_PRAYIDOL_CONDITION;
    INFORMATION = PC_PRAYIDOL_PRAYIDOL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = NAME_ADDON_BETEN;
}

func int PC_PRAYIDOL_PRAYIDOL_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_PRAYIDOL)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_PRAYIDOL_PRAYIDOL_INFO() {
    var int REAL_HP;
    REAL_HP = ((40) + ((HERO.LEVEL) * (HP_PER_LEVEL))) - (BELIARSHRINECOST);
    INFO_CLEARCHOICES(47929);
    INFO_ADDCHOICE(47929, DIALOG_BACK, 47933);
    INFO_ADDCHOICE(47929, NAME_ADDON_PRAYIDOL_GIVENOTHING, 47934);
    if (((GOLDFROMBELIAR) <= (2000)) && ((PRAYIDOLDAY) != (WLD_GETDAY()))) {
        if ((REAL_HP) >= (11)) {
            INFO_ADDCHOICE(47929, NAME_ADDON_PRAYIDOL_GIVEHITPOINT1, 47935);
        };
        if ((REAL_HP) >= (31)) {
            INFO_ADDCHOICE(47929, NAME_ADDON_PRAYIDOL_GIVEHITPOINT2, 47936);
        };
        if ((REAL_HP) >= (51)) {
            INFO_ADDCHOICE(47929, NAME_ADDON_PRAYIDOL_GIVEHITPOINT3, 47938);
        };
    };
}

func void PC_PRAYIDOL_PRAYIDOL_BACK() {
    INFO_CLEARCHOICES(47929);
}

func void PC_PRAYIDOL_PRAYIDOL_NOPAY() {
    B_BLITZINARSCH();
    INFO_CLEARCHOICES(47929);
}

func void PC_PRAYIDOL_PRAYIDOL_SMALLPAY() {
    if ((PRAYIDOLDAY) == (WLD_GETDAY())) {
        B_BLITZINARSCH();
    };
    B_GETBELIARSGOLD(50);
    BELIARSHRINECOST = (BELIARSHRINECOST) + (10);
    HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) - (HPFORBELIAR);
    HERO.ATTRIBUTE[1] = (HERO.ATTRIBUTE[1]) - (HPFORBELIAR);
    MARVINTRANSFORMHP = (MARVINTRANSFORMHP) - (HPFORBELIAR);
    PRAYIDOLDAY = WLD_GETDAY();
    INFO_CLEARCHOICES(47929);
}

func void PC_PRAYIDOL_PRAYIDOL_MEDIUMPAY() {
    if ((PRAYIDOLDAY) == (WLD_GETDAY())) {
        B_BLITZINARSCH();
    };
    B_GETBELIARSGOLD(250);
    BELIARSHRINECOST = (BELIARSHRINECOST) + (30);
    HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) - (HPFORBELIARV2);
    HERO.ATTRIBUTE[1] = (HERO.ATTRIBUTE[1]) - (HPFORBELIARV2);
    MARVINTRANSFORMHP = (MARVINTRANSFORMHP) - (HPFORBELIARV2);
    PRAYIDOLDAY = WLD_GETDAY();
    INFO_CLEARCHOICES(47929);
}

func void PC_PRAYIDOL_PRAYIDOL_BIGHPPAY() {
    if ((PRAYIDOLDAY) == (WLD_GETDAY())) {
        B_BLITZINARSCH();
    };
    B_GETBELIARSGOLD(500);
    BELIARSHRINECOST = (BELIARSHRINECOST) + (50);
    HERO.ATTRIBUTE[0] = (HERO.ATTRIBUTE[0]) - (HPFORBELIARV3);
    HERO.ATTRIBUTE[1] = (HERO.ATTRIBUTE[1]) - (HPFORBELIARV3);
    MARVINTRANSFORMHP = (MARVINTRANSFORMHP) - (HPFORBELIARV3);
    PRAYIDOLDAY = WLD_GETDAY();
    INFO_CLEARCHOICES(47929);
}

func void PC_PRAYIDOL_PRAYIDOL_BIGPAY() {
    PC_PRAYIDOL_PRAYIDOL_BIGHPPAY();
}
