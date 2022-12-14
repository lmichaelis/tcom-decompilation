func void ZS_SIT_THRONE_READING() {
    PERCEPTION_SET_CHAIR();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_THRONE_READING_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "THRONE"))) {
        MDL_APPLYOVERLAYMDS(SELF, "HumanS_Throne_Read.mds");
        AI_USEMOB(SELF, "THRONE", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_THRONE_READING_END() {
    AI_USEMOB(SELF, "THRONE", -(1));
}

func void REMOVETHRONEREADOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "Humans_Throne_Read.mds");
}

