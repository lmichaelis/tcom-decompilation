func void ZS_DANCE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_DANCE_LOOP() {
    var int DANCESTYLE;
    DANCESTYLE = HLP_RANDOM(9);
    if ((DANCESTYLE) == (0)) {
        AI_PLAYANI(SELF, "T_DANCE_01");
    };
    if ((DANCESTYLE) == (1)) {
        AI_PLAYANI(SELF, "T_DANCE_02");
    };
    if ((DANCESTYLE) == (2)) {
        AI_PLAYANI(SELF, "T_DANCE_03");
    };
    if ((DANCESTYLE) == (3)) {
        AI_PLAYANI(SELF, "T_DANCE_04");
    };
    if ((DANCESTYLE) == (4)) {
        AI_PLAYANI(SELF, "T_DANCE_05");
    };
    if ((DANCESTYLE) == (5)) {
        AI_PLAYANI(SELF, "T_DANCE_06");
    };
    if ((DANCESTYLE) == (6)) {
        AI_PLAYANI(SELF, "T_DANCE_07");
    };
    if ((DANCESTYLE) == (7)) {
        AI_PLAYANI(SELF, "T_DANCE_08");
    };
    if ((DANCESTYLE) == (8)) {
        AI_PLAYANI(SELF, "T_DANCE_09");
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

func void ZS_DANCE_END() {
    AI_STANDUP(SELF);
}

