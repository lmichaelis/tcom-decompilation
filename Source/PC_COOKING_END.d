instance PC_COOKING_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_COOKING_END_CONDITION;
    INFORMATION = PC_COOKING_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_COOKING_END_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_COOKING)) && ((COOKINGMEALS_MODE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_COOKING_END_INFO() {
    B_ENDPRODUCTIONDIALOG();
}

func void COOKING_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_COOKING;
        AI_PROCESSINFOS(HER);
    };
}

