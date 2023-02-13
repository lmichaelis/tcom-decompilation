var int QA305_ENABLEDRINKBARREL;
func void QA305_BARRELBEER_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_BARRELBEER;
        AI_PROCESSINFOS(HER);
    };
}

func int PC_QA305_BARRELBEER_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BARRELBEER)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int PC_QA305_BARRELBEER_DRINK_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BARRELBEER)) && ((QA305_ENABLEDRINKBARREL) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

instance PC_QA305_BARRELBEER_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_QA305_BARRELBEER_CONDITION;
    INFORMATION = PC_QA305_BARRELBEER_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func void PC_QA305_BARRELBEER_END_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_QA305_BARRELBEER_TAKE(C_INFO) {
    NPC = 50091;
    NR = 1;
    CONDITION = PC_QA305_BARRELBEER_CONDITION;
    INFORMATION = PC_QA305_BARRELBEER_TAKE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_TAKE;
}

func void PC_QA305_BARRELBEER_TAKE_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    AI_FUNCTION(SELF, 63093);
    if ((QA305_ENABLEDRINKBARREL) == (TRUE)) {
        QA305_ENABLEDRINKBARREL = FALSE;
    };
}

instance PC_QA305_BARRELBEER_DRINK(C_INFO) {
    NPC = 50091;
    NR = 2;
    CONDITION = PC_QA305_BARRELBEER_DRINK_CONDITION;
    INFORMATION = PC_QA305_BARRELBEER_DRINK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_TRY;
}

func void PC_QA305_BARRELBEER_DRINK_INFO() {
    var int BEERHEAL_5;
    AI_PLAYANI(HERO, "R_BARRELCONTAINER_DRINK");
    QA305_COUNTTASTEBARREL = (QA305_COUNTTASTEBARREL) + (1);
    if ((QA305_COUNTTASTEBARREL) <= (10)) {
        PRINTD(CS2("Spróbowane beczki: ", INTTOSTRING(QA305_COUNTTASTEBARREL)));
        B_GIVEPLAYERXP((XP_QA305_DRINKBEER) * (QA305_COUNTTASTEBARREL));
    };
    if ((QA305_ENABLEDRINKBARREL) == (FALSE)) {
        QA305_ENABLEDRINKBARREL = TRUE;
    };
    BEERHEAL_5 = (HERO.ATTRIBUTE[1]) * (5);
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, (BEERHEAL_5) / (100));
}

