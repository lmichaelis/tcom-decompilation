func void ZS_JEWELER() {
    if (((NPC_HASITEMS(SELF, 0x8d1e)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x8d1e, NPC_HASITEMS(SELF, 0x8d1e));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8582)) == (0)) {
        CREATEINVITEM(SELF, 0x8582);
    };
}

func int ZS_JEWELER_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "JEWELER"))) {
        AI_USEMOB(SELF, "JEWELER", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_JEWELER_END() {
    AI_USEMOB(SELF, "JEWELER", -(1));
}

