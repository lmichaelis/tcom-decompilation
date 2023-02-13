func void BARREL_DRINKWATER_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_BARRELDRINKWATER;
        AI_PROCESSINFOS(HER);
    };
}

func int PC_BARREL_DRINKWATER_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BARRELDRINKWATER)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

instance PC_BARREL_DRINKWATER_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_BARREL_DRINKWATER_CONDITION;
    INFORMATION = PC_BARREL_DRINKWATER_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func void PC_BARREL_DRINKWATER_END_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_BARREL_DRINKWATER(C_INFO) {
    NPC = 50091;
    CONDITION = PC_BARREL_DRINKWATER_CONDITION;
    INFORMATION = PC_BARREL_DRINKWATER_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_TAKEASIP;
}

func void PC_BARREL_DRINKWATER_INFO() {
    var int DRINKWATERBARREL_50;
    if ((SELF.AIVAR[93]) <= (WLD_GETDAY())) {
        SELF.AIVAR[93] = (WLD_GETDAY()) + (1);
        AI_PLAYANI(HERO, "R_BARRELCONTAINER_DRINK");
        PRINTSCREEN(PRINT_DRINKWATERBARREL, -(1), -(1), FONT_SCREEN, 2);
        DRINKWATERBARREL_50 = (HERO.ATTRIBUTE[1]) * (50);
        NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, (DRINKWATERBARREL_50) / (100));
    };
    B_SAY(HERO, HERO, "$MARVIN_DRINK_NOMORE");
}

