func void ZS_WOLF_RUNTOWP() {
    PERCEPTION_SET_MONSTER_RTN();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
}

func int ZS_WOLF_RUNTOWP_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
    };
    return LOOP_CONTINUE;
}

func int ZS_WOLF_RUNTOWP_END() {
    return 0 /* !broken stack! */;
}

