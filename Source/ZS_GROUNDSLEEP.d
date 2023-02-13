func void ZS_GROUNDSLEEP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_GROUNDSLEEP_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        AI_ALIGNTOWP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_VICTIM_SLE", BS_LIE);
    };
    return LOOP_CONTINUE;
}

func void ZS_GROUNDSLEEP_END() {
    AI_PLAYANIBS(SELF, "T_VICTIM_SLE_2_STAND", BS_STAND);
}

func void ZS_GROUNDSLEEP_FLEX() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_GROUNDSLEEP_FLEX_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_ALIGNTOWP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_VICTIM_SLE", BS_SIT);
    };
    return LOOP_CONTINUE;
}

func void ZS_GROUNDSLEEP_FLEX_END() {
    AI_PLAYANIBS(SELF, "T_VICTIM_SLE_2_STAND", BS_STAND);
}

func void ZS_GROUNDSLEEP_SQ223() {
    PERCEPTION_SET_INTROVERT();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_GROUNDSLEEP_SQ223_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        AI_ALIGNTOWP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_VICTIM_SLE", BS_LIE);
    };
    return LOOP_CONTINUE;
}

func void ZS_GROUNDSLEEP_SQ223_END() {
    AI_PLAYANIBS(SELF, "T_VICTIM_SLE_2_STAND", BS_STAND);
}
