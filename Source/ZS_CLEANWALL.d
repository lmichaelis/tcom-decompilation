func void ZS_CLEANWALL() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_CLEANWALL_LOOP() {
    if ((NPC_HASITEMS(SELF, 34192)) == (0)) {
        CREATEINVITEM(SELF, 34192);
    };
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CleanWall"))) {
        AI_USEMOB(SELF, "CleanWall", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_CLEANWALL_END() {
    AI_USEMOB(SELF, "CleanWall", -(1));
}

