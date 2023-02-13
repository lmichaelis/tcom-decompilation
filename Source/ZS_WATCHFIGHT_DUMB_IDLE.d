func void ZS_WATCHFIGHT_DUMB_IDLE() {
    PERCEPTION_SET_ULTRADUMB();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_WATCHFIGHT_DUMB_IDLE_LOOP() {
    var int SEARCHSTYLE;
    if (NPC_ISONFP(SELF, "WATCHFIGHT2")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "WATCHFIGHT2")) {
        AI_GOTOFP(SELF, "WATCHFIGHT2");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
        SELF.AIVAR[19] = ISINPOS;
    };
    (NPC_GETSTATETIME(SELF)) > (6);
    SELF.AIVAR[19] = ISINPOS;
    if ((0) && (0)) {
        SEARCHSTYLE = HLP_RANDOM(10);
        if ((SEARCHSTYLE) == (0)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 1065353216);
        } else if ((SEARCHSTYLE) == (1)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 1074580685);
        } else if ((SEARCHSTYLE) == (2)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 1067869798);
        } else if ((SEARCHSTYLE) == (3)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 1060320051);
        } else if ((SEARCHSTYLE) == (4)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 1069547520);
        } else if ((SEARCHSTYLE) == (5)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 1073741824);
        } else if ((SEARCHSTYLE) == (6)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 1050253722);
        } else if ((SEARCHSTYLE) == (7)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 1063675494);
        } else if ((SEARCHSTYLE) == (8)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 1074161254);
        } else if ((SEARCHSTYLE) == (9)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 1056964608);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_WATCHFIGHT_DUMB_IDLE_END() {
    AI_PLAYANI(SELF, "T_WATCHFIGHT_2_STAND");
}

