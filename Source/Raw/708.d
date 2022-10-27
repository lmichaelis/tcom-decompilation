func void ZS_SEARCH_ONLY_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_ONLY_NOIQ_LOOP() {
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f800000);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x400ccccd);
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3fa66666);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f333333);
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3fc00000);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40000000);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3e99999a);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3f666666);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40066666);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x40200000);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

var int ZS_SEARCH_ONLY_NOIQ_LOOP.SEARCHSTYLE = 0;
func void ZS_SEARCH_ONLY_NOIQ_END() {
    AI_STANDUP(SELF);
}

