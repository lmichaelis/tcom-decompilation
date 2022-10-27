func void ZS_ROAST_SCAVENGER() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_ROAST_SCAVENGER_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_MOBINTERACT_INTERRUPT))) && (WLD_ISMOBAVAILABLE(SELF, "BARBQ"))) {
        AI_USEMOB(SELF, "BARBQ", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_ROAST_SCAVENGER_END() {
    AI_USEMOB(SELF, "BARBQ", -(1));
}

