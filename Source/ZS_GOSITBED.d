func void ZS_GOSITBED() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, "HUMANS_SIT_BED.mds");
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_STARTSTATE(SELF, 46512, 0, "");
}

func void ZS_SIT_BED() {
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 41644);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 46675);
    AI_SETWALKMODE(SELF, NPC_WALK);
}

func int ZS_SIT_BED_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        if (WLD_ISMOBAVAILABLE(SELF, "BED")) {
        } else if (WLD_ISMOBAVAILABLE(SELF, "BEDHIGH")) {
        } else if ((((PLAYER_GETOUTOFMYBEDCOMMENT) == (FALSE)) && (C_BODYSTATECONTAINS(HERO, BS_SIT))) && ((NPC_GETDISTTONPC(SELF, HERO)) <= (500))) {
            B_TURNTONPC(SELF, HERO);
            B_SAY(SELF, OTHER, "$GETOUTOFMYBED");
            PLAYER_GETOUTOFMYBEDCOMMENT = TRUE;
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_BED_END() {
    AI_USEMOB(SELF, "BED", -(1));
}

func void RTN_REMOVESITBEDMDS() {
    MDL_REMOVEOVERLAYMDS(SELF, "HUMANS_SIT_BED.mds");
}

