func void ZS_OCEAN() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_OCEAN_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "OCEAN"))) {
        AI_USEMOB(SELF, "OCEAN", 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((SELF.AIVAR[19]) == (ISINPOS)) && ((NPC_GETSTATETIME(SELF)) > (7))) {
        RANDOM = HLP_RANDOM(25);
        if ((RANDOM) <= (6)) {
            AI_PLAYANIBS(SELF, "R_OCEAN_RANDOM_01", BS_STAND);
        };
        if (((RANDOM) <= (17)) && ((RANDOM) >= (7))) {
            AI_PLAYANIBS(SELF, "R_OCEAN_RANDOM_02", BS_STAND);
        };
        if (((RANDOM) <= (24)) && ((RANDOM) >= (18))) {
            AI_PLAYANIBS(SELF, "R_OCEAN_RANDOM_03", BS_STAND);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_OCEAN_END() {
    AI_USEMOB(SELF, "CANONPUSH", -(1));
}

