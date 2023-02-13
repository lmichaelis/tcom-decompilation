func void ZS_PLUNDER_CHEST() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PLUNDER_CHEST_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_MOBINTERACT_INTERRUPT))) {
        if (WLD_ISMOBAVAILABLE(SELF, "CHESTSMALL")) {
        } else if (WLD_ISMOBAVAILABLE(SELF, "CHESTBIG")) {
            AI_USEMOB(SELF, "CHESTBIG", 1);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_PLUNDER_CHEST_END() {
    AI_USEMOB(SELF, "CHESTBIG", 1);
}
