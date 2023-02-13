func void ZS_SIT_FLUTE_INEXTREMO() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    CREATEINVITEM(SELF, 36118);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SIT_FLUTE_INEXTREMO_LOOP() {
    if (NPC_ISONFP(SELF, "CAMPFIRE")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_USEITEMTOSTATE(SELF, 36118, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_FLUTE_INEXTREMO_END() {
    AI_USEITEMTOSTATE(SELF, 36118, -(1));
}

