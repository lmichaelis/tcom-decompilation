func void ZS_COUNTING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_COUNTING_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "COUNT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "COUNT")) {
        AI_GOTOFP(SELF, "COUNT");
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
        AI_PLAYANIBS(SELF, T_STAND_2_COUNTING, BS_STAND);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((SELF.AIVAR[19]) == (ISINPOS)) && ((NPC_GETSTATETIME(SELF)) > (7))) {
        RANDOM = HLP_RANDOM(40);
        if (((RANDOM) >= (6)) && ((RANDOM) <= (12))) {
            AI_PLAYANIBS(SELF, "R_COUNTING_RANDOM_01", BS_STAND);
        };
        if (((RANDOM) >= (13)) && ((RANDOM) <= (22))) {
            AI_PLAYANIBS(SELF, "R_COUNTING_RANDOM_04", BS_STAND);
        };
        if (((RANDOM) >= (23)) && ((RANDOM) <= (30))) {
            AI_PLAYANIBS(SELF, "R_COUNTING_RANDOM_03", BS_STAND);
        };
        if (((RANDOM) >= (31)) && ((RANDOM) <= (36))) {
            AI_PLAYANIBS(SELF, "R_COUNTING_RANDOM_02", BS_STAND);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_COUNTING_END() {
    AI_PLAYANIBS(SELF, T_COUNTING_2_STAND, BS_STAND);
}

