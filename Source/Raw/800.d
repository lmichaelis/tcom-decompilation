func void ZS_STOCKS() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_STOCKS_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "IMPRISONED"))) {
        AI_USEMOB(SELF, "IMPRISONED", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        LOOP_CONTINUE;
        return 0 /* !broken stack! */;
    };
    return LOOP_CONTINUE;
}

func void ZS_STOCKS_END() {
    AI_USEMOB(SELF, "IMPRISONED", -(1));
}

