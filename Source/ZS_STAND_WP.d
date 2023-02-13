func void ZS_STAND_WP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_WP_LOOP() {
    var int RANDOM;
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, "T_STAND_2_LGUARD");
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_WP_END() {
    AI_PLAYANI(SELF, "T_LGUARD_2_STAND");
}

func void ZS_STAND_WP_NODIALOGE() {
    PERCEPTION_SET_INTROVERT();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_WP_NODIALOGE_LOOP() {
    var int RANDOM;
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, "T_STAND_2_LGUARD");
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_WP_NODIALOGE_END() {
    AI_PLAYANI(SELF, "T_LGUARD_2_STAND");
}

