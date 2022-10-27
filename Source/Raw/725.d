func void ZS_SIT_CHAIR_MILITIA() {
    PERCEPTION_SET_CHAIR();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CHAIR_MILITIA_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CHAIR"))) {
        MDL_APPLYOVERLAYMDS(SELF, "HUMANS_SIT_MILITIA_CHAIR.mds");
        AI_USEMOB(SELF, "CHAIR", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        LOOP_CONTINUE;
        return 0 /* !broken stack! */;
    };
    return LOOP_CONTINUE;
}

func void REMOVEMILITIASITOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "HUMANS_SIT_MILITIA_CHAIR.mds");
}

func void ZS_SIT_CHAIR_MILITIA_END() {
    AI_USEMOB(SELF, "CHAIR", -(1));
}

