func void ZS_IDLE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_IDLE_LOOP() {
    var int IDLESTYLE;
    if (NPC_ISONFP(SELF, "IDLE")) {
        AI_ALIGNTOFP(SELF);
        IDLESTYLE = HLP_RANDOM(7);
        if ((IDLESTYLE) == (0)) {
            AI_PLAYANI(SELF, R_SCRATCHHEAD);
            AI_WAIT(SELF, 1082130432);
        } else if ((IDLESTYLE) == (1)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_WAIT(SELF, 1084227584);
        } else if ((IDLESTYLE) == (2)) {
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
            AI_WAIT(SELF, 1080033280);
        } else if ((IDLESTYLE) == (3)) {
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
            AI_WAIT(SELF, 1086324736);
        } else if ((IDLESTYLE) == (4)) {
            AI_PLAYANI(SELF, "T_BORINGKICK");
            AI_WAIT(SELF, 1083598438);
        } else if ((IDLESTYLE) == (5)) {
            AI_PLAYANI(SELF, T_SEARCH);
            AI_WAIT(SELF, 1084647014);
        } else if ((IDLESTYLE) == (6)) {
            AI_PLAYANI(SELF, "T_DONTKNOW");
            AI_WAIT(SELF, 1086534451);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "IDLE")) {
        AI_GOTOFP(SELF, "IDLE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_IDLE_END() {
    AI_STANDUP(SELF);
}

