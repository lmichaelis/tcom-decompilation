func void ZS_WATCHFIGHT_NODIALOGE_IDLE() {
    PERCEPTION_SET_INTROVERT();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_WATCHFIGHT_NODIALOGE_IDLE_LOOP() {
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
            AI_WAIT(SELF, 0x3f800000);
        } else if ((SEARCHSTYLE) == (1)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 0x400ccccd);
        } else if ((SEARCHSTYLE) == (2)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 0x3fa66666);
        } else if ((SEARCHSTYLE) == (3)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 0x3f333333);
        } else if ((SEARCHSTYLE) == (4)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 0x3fc00000);
        } else if ((SEARCHSTYLE) == (5)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 0x40000000);
        } else if ((SEARCHSTYLE) == (6)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 0x3e99999a);
        } else if ((SEARCHSTYLE) == (7)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            AI_WAIT(SELF, 0x3f666666);
        } else if ((SEARCHSTYLE) == (8)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            AI_WAIT(SELF, 0x40066666);
        } else if ((SEARCHSTYLE) == (9)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            AI_WAIT(SELF, 0x3f000000);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_WATCHFIGHT_NODIALOGE_IDLE_LOOP.SEARCHSTYLE = 0;
func void ZS_WATCHFIGHT_NODIALOGE_IDLE_END() {
    AI_PLAYANI(SELF, "T_WATCHFIGHT_2_STAND");
}

