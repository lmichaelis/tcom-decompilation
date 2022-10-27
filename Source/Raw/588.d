func void ZS_DANCE_KM() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_DANCE_KM_LOOP() {
    DANCESTYLE = HLP_RANDOM(11);
    if ((DANCESTYLE) == (0)) {
        AI_PLAYANI(SELF, "T_DANCE_4");
    };
    if ((DANCESTYLE) == (1)) {
        AI_PLAYANI(SELF, "T_CHICK");
    };
    if ((DANCESTYLE) == (2)) {
        AI_PLAYANI(SELF, "T_GANGAM");
    };
    if ((DANCESTYLE) == (3)) {
        AI_PLAYANI(SELF, "T_JAZZ");
    };
    if ((DANCESTYLE) == (4)) {
        AI_PLAYANI(SELF, "T_SILLY_1");
    };
    if ((DANCESTYLE) == (5)) {
        AI_PLAYANI(SELF, "T_SILLY_2");
    };
    if ((DANCESTYLE) == (6)) {
        AI_PLAYANI(SELF, "T_TWIST");
    };
    if ((DANCESTYLE) == (7)) {
        AI_PLAYANI(SELF, "T_YMCA");
    };
    if ((DANCESTYLE) == (8)) {
        AI_PLAYANI(SELF, "T_SWING_1");
    };
    if ((DANCESTYLE) == (9)) {
        AI_PLAYANI(SELF, "T_SWING_2");
    };
    if ((DANCESTYLE) == (10)) {
        AI_PLAYANI(SELF, "T_SWING_3");
    };
    AI_WAIT(SELF, 0x41700000);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

var int ZS_DANCE_KM_LOOP.DANCESTYLE = 0;
func void ZS_DANCE_KM_END() {
    AI_STANDUP(SELF);
}

