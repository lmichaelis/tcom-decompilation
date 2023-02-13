func void ZS_SEARCH_ONLY() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_ONLY_LOOP() {
    var int SEARCHSTYLE;
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1065353216);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074580685);
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1067869798);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1060320051);
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1069547520);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1073741824);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1050253722);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1063675494);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074161254);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1075838976);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

func void ZS_SEARCH_ONLY_END() {
    AI_STANDUP(SELF);
}

func void ZS_SEARCH_ONLY_Q306() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SEARCH_ONLY_Q306_LOOP() {
    var int SEARCHSTYLE;
    SEARCHSTYLE = HLP_RANDOM(10);
    if ((SEARCHSTYLE) == (0)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1065353216);
    };
    if ((SEARCHSTYLE) == (1)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074580685);
    };
    if ((SEARCHSTYLE) == (2)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1067869798);
    };
    if ((SEARCHSTYLE) == (3)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1060320051);
    };
    if ((SEARCHSTYLE) == (4)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1069547520);
    };
    if ((SEARCHSTYLE) == (5)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1073741824);
    };
    if ((SEARCHSTYLE) == (6)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1050253722);
    };
    if ((SEARCHSTYLE) == (7)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1063675494);
    };
    if ((SEARCHSTYLE) == (8)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1074161254);
    };
    if ((SEARCHSTYLE) == (9)) {
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 1075838976);
    };
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
    return LOOP_CONTINUE;
}

func void ZS_SEARCH_ONLY_Q306_END() {
    AI_STANDUP(SELF);
}

