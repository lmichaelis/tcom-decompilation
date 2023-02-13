func void ZS_QA304_BARREL() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_HASITEMS(SELF, 36084)) >= (0)) {
        CREATEINVITEMS(SELF, 36084, 1);
    };
    AI_EQUIPBESTMELEEWEAPON(SELF);
    AI_DRAWWEAPON(SELF);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_QA304_BARREL_LOOP() {
    return LOOP_CONTINUE;
}

func void ZS_QA304_BARREL_END() {
}

