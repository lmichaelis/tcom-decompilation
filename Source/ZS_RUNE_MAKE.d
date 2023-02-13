func void ZS_RUNE_MAKE() {
    if (((NPC_HASITEMS(SELF, 34176)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 34176, NPC_HASITEMS(SELF, 34176));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 34175)) == (0)) {
        CREATEINVITEM(SELF, 34175);
    };
}

func int ZS_RUNE_MAKE_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_MOBINTERACT_INTERRUPT))) && (WLD_ISMOBAVAILABLE(SELF, "RMAKER"))) {
        AI_USEMOB(SELF, "RMAKER", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_RUNE_MAKE_END() {
    AI_USEMOB(SELF, "RMAKER", -(1));
}

