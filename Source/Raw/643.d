func void ZS_PEE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_PEE_LOOP() {
    if (NPC_ISONFP(SELF, "PEE")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "PEE")) {
        AI_GOTOFP(SELF, "PEE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if (((SELF.AIVAR[19]) == (NOTINPOS)) && (NPC_ISONFP(SELF, "PEE"))) {
        AI_ALIGNTOFP(SELF);
        AI_STANDUP(SELF);
        AI_PLAYANI(SELF, "T_STAND_2_PEE");
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_PEE_END() {
    AI_PLAYANI(SELF, "T_PEE_2_STAND");
}

