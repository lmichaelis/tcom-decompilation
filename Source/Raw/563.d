func void ZS_BOWMAKING() {
    if (((NPC_HASITEMS(SELF, 0x8d0c)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x8d0c, NPC_HASITEMS(SELF, 0x8d0c));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x9a58)) == (0)) {
        CREATEINVITEM(SELF, 0x9a58);
    };
}

func int ZS_BOWMAKING_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BOWMAKING"))) {
        AI_USEMOB(SELF, "BOWMAKING", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_BOWMAKING_END() {
    AI_USEMOB(SELF, "BOWMAKING", -(1));
}

