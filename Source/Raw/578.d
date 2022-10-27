func void ZS_CONCERT_WATCH() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_CONCERT_WATCH_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_ALIGNTOWP(SELF);
        B_TURNTONPC(SELF, NONE_1393_INEXTREMO_UNICORN);
        MDL_STARTFACEANI(SELF, S_SMILE, 0x3f800000, -1082130432);
        AI_PLAYANIBS(SELF, "T_STAND_2_CLAPHANDS", BS_SIT);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_CONCERT_WATCH_END() {
    AI_PLAYANIBS(SELF, "T_CLAPHANDS_2_STAND", BS_STAND);
    MDL_STARTFACEANI(SELF, S_NEUTRAL, 0x3f800000, -1082130432);
}

