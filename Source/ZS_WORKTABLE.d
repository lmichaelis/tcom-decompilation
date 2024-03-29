func void ZS_WORKTABLE() {
    if (((NPC_HASITEMS(SELF, 36107)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 36107, NPC_HASITEMS(SELF, 36107));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 34178)) == (0)) {
        CREATEINVITEM(SELF, 34178);
    };
}

func int ZS_WORKTABLE_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "WORKTABLE"))) {
        AI_USEMOB(SELF, "WORKTABLE", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_WORKTABLE_END() {
    AI_USEMOB(SELF, "WORKTABLE", -(1));
}

