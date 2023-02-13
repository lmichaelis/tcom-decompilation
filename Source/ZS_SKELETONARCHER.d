func void ZS_SKELETONARCHER() {
    PERCEPTION_SET_MONSTER_RTN();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SKELETONARCHER_LOOP() {
    var int RANDOM;
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((((NPC_GETSTATETIME(SELF)) > (7)) && ((SELF.AIVAR[19]) == (ISINPOS))) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, R_SCRATCHHEAD);
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((RANDOM) == (3)) {
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((RANDOM) == (4)) {
            AI_PLAYANI(SELF, "T_BORINGKICK");
        } else if ((RANDOM) == (5)) {
            AI_PLAYANI(SELF, T_SEARCH);
        } else if ((RANDOM) == (6)) {
            AI_PLAYANI(SELF, "T_DONTKNOW");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SKELETONARCHER_END() {
}

