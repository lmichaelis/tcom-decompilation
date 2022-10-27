func void ZS_RUNTOWP_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
}

func int ZS_RUNTOWP_NOIQ_LOOP() {
    return LOOP_CONTINUE;
}

func int ZS_RUNTOWP_NOIQ_END() {
    return 0 /* !broken stack! */;
}

