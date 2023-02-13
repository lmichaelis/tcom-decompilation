func void ZS_PREPAREFORFIGHT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_PREPAREFORFIGHT_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_SETWALKMODE(SELF, NPC_RUN);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(6);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((RANDOM) == (3)) {
            AI_PLAYANI(SELF, T_SEARCH);
        } else if ((RANDOM) == (4)) {
            AI_PLAYANI(SELF, "R_STRETCH_RANDOM_01");
        } else if ((RANDOM) == (5)) {
            AI_PLAYANI(SELF, "R_STRETCH_RANDOM_02");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_PREPAREFORFIGHT_END() {
}

func void ZS_PREPAREFORFIGHT_Q306() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_PREPAREFORFIGHT_Q306_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_SETWALKMODE(SELF, NPC_RUN);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(6);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((RANDOM) == (3)) {
            AI_PLAYANI(SELF, T_SEARCH);
        } else if ((RANDOM) == (4)) {
            AI_PLAYANI(SELF, "R_STRETCH_RANDOM_01");
        } else if ((RANDOM) == (5)) {
            AI_PLAYANI(SELF, "R_STRETCH_RANDOM_02");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_PREPAREFORFIGHT_Q306_END() {
}

