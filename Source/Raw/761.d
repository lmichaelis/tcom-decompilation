func void ZS_SMITH_SHARP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SMITH_SHARP_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_MOBINTERACT_INTERRUPT))) && (WLD_ISMOBAVAILABLE(SELF, "BSSHARP"))) {
        AI_USEMOB(SELF, "BSSHARP", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_SMITH_SHARP_END() {
    AI_USEMOB(SELF, "BSSHARP", -(1));
}
