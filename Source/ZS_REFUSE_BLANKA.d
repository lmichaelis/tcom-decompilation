func void ZS_REFUSE_BLANKA() {
    PERCEPTION_SET_NORMAL();
    NPC_PERCDISABLE(SELF, PERC_ASSESSMURDER);
    NPC_PERCDISABLE(SELF, PERC_DRAWWEAPON);
    NPC_PERCDISABLE(SELF, PERC_ASSESSFIGHTSOUND);
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_REFUSE_BLANKA_LOOP() {
    var int REFUSESTYLE;
    if (NPC_ISONFP(SELF, "REFUSE")) {
        AI_ALIGNTOFP(SELF);
        REFUSESTYLE = HLP_RANDOM(4);
        if ((REFUSESTYLE) == (0)) {
            AI_PLAYANI(SELF, T_NO);
            AI_WAIT(SELF, 1082130432);
        } else if ((REFUSESTYLE) == (1)) {
            AI_PLAYANI(SELF, "T_DONTKNOW");
            AI_WAIT(SELF, 1084227584);
        } else if ((REFUSESTYLE) == (2)) {
            AI_PLAYANI(SELF, T_NO);
            AI_WAIT(SELF, 1080033280);
        } else if ((REFUSESTYLE) == (3)) {
            AI_PLAYANI(SELF, T_CANNOTTAKE);
            AI_WAIT(SELF, 1086324736);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "REFUSE")) {
        AI_GOTOFP(SELF, "REFUSE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_REFUSE_BLANKA_END() {
    AI_STANDUP(SELF);
}

