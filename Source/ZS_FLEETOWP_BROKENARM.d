func void ZS_FLEETOWP_BROKENARM() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    B_SAY_OVERLAY(SELF, OTHER, "$RUNAWAY");
    AI_SETWALKMODE(SELF, NPC_RUN);
    MDL_APPLYOVERLAYMDS(SELF, "HumanS_Broken_Flee.MDS");
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
}

func int ZS_FLEETOWP_BROKENARM_LOOP() {
    var int RANDOM;
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        RANDOM = HLP_RANDOM(2);
        if ((RANDOM) == (0)) {
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func int ZS_FLEETOWP_BROKENARM_END() {
    return 0 /* !broken stack! */;
}

