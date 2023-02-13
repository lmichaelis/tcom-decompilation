func void ZS_PLUNDER_RAMHA() {
    B_RESETALL(SELF);
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 41653);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 43306);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PLUNDER_RAMHA_LOOP() {
    var int PLUNDER;
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
            AI_WAIT(SELF, 1073741824);
        } else if ((PLUNDER) == (1)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1056964608);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (2)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1076258406);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
        } else if ((PLUNDER) == (3)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1065353216);
        } else if ((PLUNDER) == (4)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_WAIT(SELF, 1056964608);
        } else if ((PLUNDER) == (5)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1068708659);
        } else if ((PLUNDER) == (6)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1067030938);
            AI_PLAYANI(SELF, R_SCRATCHRSHOULDER);
        } else if ((PLUNDER) == (7)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_PLAYANI(SELF, R_SCRATCHLSHOULDER);
            AI_WAIT(SELF, 1074580685);
        } else if ((PLUNDER) == (8)) {
            AI_PLAYANI(SELF, R_LEGSHAKE);
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1061997773);
        } else if ((PLUNDER) == (9)) {
            AI_PLAYANI(SELF, T_PLUNDER);
            AI_WAIT(SELF, 1067869798);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_PLUNDER_RAMHA_END() {
}

