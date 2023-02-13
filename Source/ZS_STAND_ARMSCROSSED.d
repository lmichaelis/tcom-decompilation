func void ZS_STAND_ARMSCROSSED() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_ARMSCROSSED_LOOP() {
    var int EVENTRANDY;
    var int RANDOM;
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
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_PLAYANI(SELF, T_STAND_2_LGUARD);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
        };
        EVENTRANDY = HLP_RANDOM(200);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_ARMSCROSSED_END() {
    AI_PLAYANI(SELF, T_LGUARD_2_STAND);
}

func void ZS_STAND_ARMSCROSSED_Q602() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 41653);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 43306);
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 41644);
    if ((C_NPC_ICANTTALK(SELF)) == (FALSE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 41645);
    };
    if ((C_NPC_ICANTTALK(SELF)) == (TRUE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 41633);
        NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 41641);
    };
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_ARMSCROSSED_Q602_LOOP() {
    var int EVENTRANDY;
    var int RANDOM;
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
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_PLAYANI(SELF, T_STAND_2_LGUARD);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
        };
        EVENTRANDY = HLP_RANDOM(200);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_ARMSCROSSED_Q602_END() {
    AI_PLAYANI(SELF, T_LGUARD_2_STAND);
}

