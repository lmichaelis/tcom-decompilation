func void ZS_TREASURE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 34015)) == (0)) {
        CREATEINVITEM(SELF, 34015);
    };
    EQUIPITEM(SELF, 34015);
}

func int ZS_TREASURE_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_MOBINTERACT_INTERRUPT))) && (WLD_ISMOBAVAILABLE(SELF, "TREASURERTN"))) {
        AI_USEMOB(SELF, "TREASURERTN", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_TREASURE_END() {
    AI_USEMOB(SELF, "TREASURERTN", -(1));
}

