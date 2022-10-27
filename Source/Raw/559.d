func void ZS_SIT_ARMORINSPECT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_ARMORINSPECT_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "ARMORINSPECT"))) {
        AI_USEMOB(SELF, "ARMORINSPECT", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_ARMORINSPECT_END() {
    AI_USEMOB(SELF, "ARMORINSPECT", -(1));
}

