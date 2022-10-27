func void ZS_BANDIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_BANDIT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if ((!(NPC_ISONFP(SELF, "CAMPFIRE"))) && (WLD_ISFPAVAILABLE(SELF, "CAMPFIRE"))) {
            AI_GOTOFP(SELF, "CAMPFIRE");
            AI_ALIGNTOFP(SELF);
            AI_PLAYANIBS(SELF, T_STAND_2_SIT, BS_SIT);
        } else if ((!(NPC_ISONFP(SELF, "STAND"))) && (WLD_ISFPAVAILABLE(SELF, "STAND"))) {
            AI_GOTOFP(SELF, "STAND");
            AI_ALIGNTOFP(SELF);
            AI_PLAYANI(SELF, "T_STAND_2_HGUARD");
        } else {
            AI_ALIGNTOWP(SELF);
            AI_PLAYANI(SELF, "T_STAND_2_HGUARD");
        } else {
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if ((((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_HGUARD_LOOKAROUND");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_BANDIT_LOOP.RANDOM = 0;
func void ZS_BANDIT_END() {
    if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
        AI_PLAYANIBS(SELF, T_SIT_2_STAND, BS_STAND);
    };
    AI_PLAYANI(SELF, "T_HGUARD_2_STAND");
}

