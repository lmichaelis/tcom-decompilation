func void ZS_PLUNDER() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_13504_FULKO))) || ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_13505_WORKER)))) {
        AI_SETWALKMODE(SELF, NPC_RUN);
    };
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PLUNDER_LOOP() {
    if (NPC_ISONFP(SELF, "PLUNDER")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "PLUNDER")) {
        AI_GOTOFP(SELF, "PLUNDER");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        PLUNDER = HLP_RANDOM(10);
        if ((PLUNDER) == (0)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x40000000);
        } else if ((PLUNDER) == (1)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f000000);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (2)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x40266666);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((PLUNDER) == (3)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f800000);
        } else if ((PLUNDER) == (4)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_WAIT(SELF, 0x3f000000);
        } else if ((PLUNDER) == (5)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3fb33333);
        } else if ((PLUNDER) == (6)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f99999a);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (7)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
            AI_WAIT(SELF, 0x400ccccd);
        } else if ((PLUNDER) == (8)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f4ccccd);
        } else if ((PLUNDER) == (9)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3fa66666);
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_PLUNDER_LOOP.PLUNDER = 0;
func void ZS_PLUNDER_END() {
}

func void ZS_PLUNDER_Q602() {
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0xa2b5);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xa92a);
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 0xa2ac);
    if ((C_NPC_ICANTTALK(SELF)) == (FALSE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 0xa2ad);
    };
    if ((C_NPC_ICANTTALK(SELF)) == (TRUE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
        NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xa2a9);
    };
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PLUNDER_Q602_LOOP() {
    if (NPC_ISONFP(SELF, "PLUNDER")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "PLUNDER")) {
        AI_GOTOFP(SELF, "PLUNDER");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        PLUNDER = HLP_RANDOM(10);
        if ((PLUNDER) == (0)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x40000000);
        } else if ((PLUNDER) == (1)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f000000);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (2)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x40266666);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((PLUNDER) == (3)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f800000);
        } else if ((PLUNDER) == (4)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_WAIT(SELF, 0x3f000000);
        } else if ((PLUNDER) == (5)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3fb33333);
        } else if ((PLUNDER) == (6)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f99999a);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (7)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
            AI_WAIT(SELF, 0x400ccccd);
        } else if ((PLUNDER) == (8)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3f4ccccd);
        } else if ((PLUNDER) == (9)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 0x3fa66666);
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_PLUNDER_Q602_LOOP.PLUNDER = 0;
func void ZS_PLUNDER_Q602_END() {
}

