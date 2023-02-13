func void ZS_TANNING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 39512)) == (0)) {
        CREATEINVITEM(SELF, 39512);
    };
}

func int ZS_TANNING_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "TANNING"))) {
        AI_USEMOB(SELF, "TANNING", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_TANNING_END() {
    AI_USEMOB(SELF, "TANNING", -(1));
}

