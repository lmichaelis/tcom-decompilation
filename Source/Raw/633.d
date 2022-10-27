func void ZS_LOOKOUT_VOLKERGUARD() {
    PERCEPTION_SET_VOLKERGUARD();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_LOOKOUT_VOLKERGUARD_LOOP() {
    if (NPC_ISONFP(SELF, "LOOKOUT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "LOOKOUT")) {
        AI_GOTOFP(SELF, "LOOKOUT");
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
        AI_PLAYANIBS(SELF, "T_STAND_2_LOOKOUT", BS_STAND);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((SELF.AIVAR[19]) == (ISINPOS)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        RANDOM = HLP_RANDOM(4);
        if ((RANDOM) == (1)) {
            AI_PLAYANIBS(SELF, "R_LOOKOUT_RANDOM_01", BS_STAND);
        };
        if ((RANDOM) == (3)) {
            AI_PLAYANIBS(SELF, "R_LOOKOUT_RANDOM_02", BS_STAND);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_LOOKOUT_VOLKERGUARD_LOOP.RANDOM = 0;
func void ZS_LOOKOUT_VOLKERGUARD_END() {
    AI_PLAYANIBS(SELF, "T_LOOKOUT_2_STAND", BS_STAND);
}

