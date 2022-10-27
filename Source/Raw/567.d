func void ZS_BUTCHER() {
    if (((NPC_HASITEMS(SELF, 0x9abd)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x9abd, NPC_HASITEMS(SELF, 0x9abd));
    };
    if (((NPC_HASITEMS(SELF, 0x8e43)) >= (10)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x8e43, NPC_HASITEMS(SELF, 0x8e43));
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

func int ZS_BUTCHER_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BUTCHER"))) {
        AI_USEMOB(SELF, "BUTCHER", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_BUTCHER_END() {
    AI_USEMOB(SELF, "BUTCHER", -(1));
}

