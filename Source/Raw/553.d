func void ZS_ANGRYMOB_KQ406() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    B_TURNTONPC(SELF, RAT_KQ406);
    MDL_STARTFACEANI(SELF, S_ANGRY, 0x3f800000, -1082130432);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
        SELF.AIVAR[19] = NOTINPOS;
    };
}

func int ZS_ANGRYMOB_KQ406_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        B_TURNTONPC(SELF, RAT_KQ406);
        AI_ALIGNTOWP(SELF);
        MDL_STARTFACEANI(SELF, S_ANGRY, 0x3f800000, -1082130432);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        SEARCHSTYLE = HLP_RANDOM(10);
        if ((SEARCHSTYLE) == (0)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 0x3f800000);
        } else if ((SEARCHSTYLE) == (1)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 0x400ccccd);
        } else if ((SEARCHSTYLE) == (2)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 0x3fa66666);
        } else if ((SEARCHSTYLE) == (3)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 0x3f333333);
        } else if ((SEARCHSTYLE) == (4)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 0x3fc00000);
        } else if ((SEARCHSTYLE) == (5)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 0x40000000);
        } else if ((SEARCHSTYLE) == (6)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 0x3e99999a);
        } else if ((SEARCHSTYLE) == (7)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_02);
            AI_WAIT(SELF, 0x3f666666);
        } else if ((SEARCHSTYLE) == (8)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_03);
            AI_WAIT(SELF, 0x40066666);
        } else if ((SEARCHSTYLE) == (9)) {
            AI_PLAYANI(SELF, T_ANGRYMOB_01);
            AI_WAIT(SELF, 0x3f000000);
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_ANGRYMOB_KQ406_LOOP.SEARCHSTYLE = 0;
func void ZS_ANGRYMOB_KQ406_END() {
    AI_STANDUP(SELF);
    MDL_STARTFACEANI(SELF, S_NEUTRAL, 0x3f800000, -1082130432);
}

