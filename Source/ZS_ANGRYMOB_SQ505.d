func void ZS_ANGRYMOB_SQ505() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
        SELF.AIVAR[19] = NOTINPOS;
    };
}

func int ZS_ANGRYMOB_SQ505_LOOP() {
    var int SEARCHSTYLE;
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        B_TURNTONPC(SELF, NONE_13398_VOLKERGUARD);
        MDL_STARTFACEANI(SELF, S_ANGRY, 1065353216, -1082130432);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        SEARCHSTYLE = HLP_RANDOM(10);
        if ((SEARCHSTYLE) == (0)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 1065353216);
        } else if ((SEARCHSTYLE) == (1)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 1074580685);
        } else if ((SEARCHSTYLE) == (2)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 1067869798);
        } else if ((SEARCHSTYLE) == (3)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 1060320051);
        } else if ((SEARCHSTYLE) == (4)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 1069547520);
        } else if ((SEARCHSTYLE) == (5)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 1073741824);
        } else if ((SEARCHSTYLE) == (6)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 1050253722);
        } else if ((SEARCHSTYLE) == (7)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 1063675494);
        } else if ((SEARCHSTYLE) == (8)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 1074161254);
        } else if ((SEARCHSTYLE) == (9)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 1056964608);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_ANGRYMOB_SQ505_END() {
    AI_STANDUP(SELF);
    MDL_STARTFACEANI(SELF, S_NEUTRAL, 1065353216, -1082130432);
}

