func void ZS_TABLEBOOK() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_TABLEBOOK_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "TABLEBOOK"))) {
        AI_USEMOB(SELF, "TABLEBOOK", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_TABLEBOOK_END() {
    AI_USEMOB(SELF, "TABLEBOOK", -(1));
}

