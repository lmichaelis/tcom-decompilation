func void ZS_VOMIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_VOMIT_LOOP() {
    if (NPC_ISONFP(SELF, "VOMIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "VOMIT")) {
        AI_GOTOFP(SELF, "VOMIT");
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
        AI_PLAYANIBS(SELF, "T_STAND_2_VOMIT", BS_STAND);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((SELF.AIVAR[19]) == (ISINPOS)) && ((NPC_GETSTATETIME(SELF)) > (7))) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) == (1)) {
            AI_PLAYANIBS(SELF, "R_VOMIT_RANDOM_01", BS_STAND);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_VOMIT_LOOP.RANDOM = 0;
func void ZS_VOMIT_END() {
    AI_PLAYANIBS(SELF, "T_VOMIT_2_STAND", BS_STAND);
}

