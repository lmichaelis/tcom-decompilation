func void ZS_SIT_BEGGER() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36117)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36117);
        };
    };
    if ((NPC_HASITEMS(SELF, 36117)) == (0)) {
        CREATEINVITEM(SELF, 36117);
    };
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_BEGGER_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BEGGER"))) {
        AI_USEMOB(SELF, "BEGGER", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (12))) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) <= (1)) {
            AI_PLAYANIBS(SELF, "R_BEGGER_RANDOM_01", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_BEGGER_END() {
    AI_USEMOB(SELF, "BEGGER", -(1));
}

