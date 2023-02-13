func void ZS_SEARCH() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_LOOP() {
    var int SEARCHSTYLE;
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, "T_DONTKNOW");
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, R_SCRATCHHEAD);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, "T_COMEOVERHERE");
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

func void ZS_SEARCH_END() {
    AI_STANDUP(SELF);
}

