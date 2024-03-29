func void ZS_GRAPEPLUNDER() {
    NPC_REMOVEINVITEMS(SELF, 36361, NPC_HASITEMS(SELF, 36361));
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_GRAPEPLUNDER_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "GRAPEPLUNDER"))) {
        AI_USEMOB(SELF, "GRAPEPLUNDER", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        RANDOM = HLP_RANDOM(4);
        if ((RANDOM) == (1)) {
            AI_PLAYANIBS(SELF, "R_GRAPEPLUNDER_RANDOM_01", BS_STAND);
        };
        if ((RANDOM) == (3)) {
            AI_PLAYANIBS(SELF, "R_GRAPEPLUNDER_RANDOM_02", BS_STAND);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_GRAPEPLUNDER_END() {
    AI_USEMOB(SELF, "GRAPEPLUNDER", -(1));
}

