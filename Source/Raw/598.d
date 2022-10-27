func void ZS_FIREPLACE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_FIREPLACE_LOOP() {
    if (NPC_ISONFP(SELF, "CAMPFIRE")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if (((SELF.AIVAR[19]) == (NOTINPOS)) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_STANDUP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_FIREPLACE", BS_SIT);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "R_FIREPLACE_RANDOM_01");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "R_FIREPLACE_RANDOM_02");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "R_FIREPLACE_RANDOM_03");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_FIREPLACE_LOOP.RANDOM = 0;
func void ZS_FIREPLACE_END() {
    AI_PLAYANIBS(SELF, "T_FIREPLACE_2_STAND", BS_STAND);
}

