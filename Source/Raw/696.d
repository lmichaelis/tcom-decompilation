func void ZS_RUNTOWP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
    AI_PLAYANI(SELF, "T_STAND_2_HGUARD");
}

func int ZS_RUNTOWP_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        RANDOM = HLP_RANDOM(2);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_HGUARD_LOOKAROUND");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_RUNTOWP_LOOP.RANDOM = 0;
func int ZS_RUNTOWP_END() {
    return 0 /* !broken stack! */;
}

