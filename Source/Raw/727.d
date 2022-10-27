func void ZS_SIT_CHAIR_PLAY_LUTE() {
    PERCEPTION_SET_CHAIR();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, "Humans_Bard.mds");
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CHAIR_PLAY_LUTE_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CHAIR"))) {
        AI_USEMOB(SELF, "CHAIR", 1);
    };
    return 0 /* !broken stack! */;
}

func void REMOVEBARDOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "Humans_Bard.mds");
}

func void ZS_SIT_CHAIR_PLAY_LUTE_END() {
    AI_USEMOB(SELF, "CHAIR", -(1));
}

