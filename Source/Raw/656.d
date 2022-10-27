func void ZS_PRACTICE_MAGIC() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PRACTICE_MAGIC_LOOP() {
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (7)) && ((SELF.AIVAR[19]) == (NOTINPOS))) {
        ZUFALL = HLP_RANDOM(100);
        if ((ZUFALL) <= (25)) {
            AI_PLAYANI(SELF, "T_PRACTICEMAGIC");
        } else if ((ZUFALL) <= (50)) {
            AI_PLAYANI(SELF, "T_PRACTICEMAGIC2");
        } else if ((ZUFALL) <= (70)) {
            AI_PLAYANI(SELF, "T_PRACTICEMAGIC3");
        } else if ((ZUFALL) <= (90)) {
            AI_PLAYANI(SELF, "T_PRACTICEMAGIC4");
        } else {
            AI_PLAYANI(SELF, R_SCRATCHHEAD);
        } else {
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_PRACTICE_MAGIC_LOOP.ZUFALL = 0;
func void ZS_PRACTICE_MAGIC_END() {
}

