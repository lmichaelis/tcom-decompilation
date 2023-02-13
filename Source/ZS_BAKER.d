func void ZS_BAKER() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36968)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36968);
        };
    };
    if ((NPC_HASITEMS(SELF, 36968)) == (0)) {
        CREATEINVITEM(SELF, 36968);
    };
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_BAKER_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BAKER"))) {
        AI_USEMOB(SELF, "BAKER", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (12))) {
        RANDOM = HLP_RANDOM(8);
        if ((RANDOM) <= (3)) {
            AI_PLAYANIBS(SELF, "R_BAKER_RANDOM_01", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_BAKER_END() {
    AI_USEMOB(SELF, "BAKER", -(1));
}

