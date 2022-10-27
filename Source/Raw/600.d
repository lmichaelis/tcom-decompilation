func void ZS_FISHTABLE() {
    if (((NPC_HASITEMS(SELF, 0x9abd)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x9abd, NPC_HASITEMS(SELF, 0x9abd));
    };
    if (((NPC_HASITEMS(SELF, 0x84b4)) >= (10)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x84b4, NPC_HASITEMS(SELF, 0x84b4));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_FISHTABLE_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "FISHTABLE"))) {
        AI_USEMOB(SELF, "FISHTABLE", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_FISHTABLE_END() {
    AI_USEMOB(SELF, "FISHTABLE", -(1));
}

