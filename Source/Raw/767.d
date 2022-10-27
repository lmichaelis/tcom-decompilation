func void ZS_SPIT_FIRE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 0x87b9)) == (0)) {
        CREATEINVITEM(SELF, 0x87b9);
    };
}

func int ZS_SPIT_FIRE_LOOP() {
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_ALIGNTOFP(SELF);
    };
    AI_ALIGNTOWP(SELF);
    if ((NPC_GETSTATETIME(SELF)) > (10)) {
        AI_USEITEMTOSTATE(SELF, 0x87b9, 4);
        AI_USEITEMTOSTATE(SELF, 0x87b9, 0);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SPIT_FIRE_END() {
    AI_USEITEMTOSTATE(SELF, 0x87b9, -(1));
}
