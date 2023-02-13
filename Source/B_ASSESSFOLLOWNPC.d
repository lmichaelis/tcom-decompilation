func void B_ASSESSFOLLOWNPC(var C_NPC NPC) {
}

func void ZS_FOLLOW_NPC_STAND_LOOP() {
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
        NPC_SETSTATETIME(SELF, 0);
    };
}

func int ZS_FOLLOW_NPC_LOOP(var C_NPC NPC) {
    if ((NPC_GETDISTTONPC(SELF, NPC)) > (SELF.AIVAR[80])) {
        if (!(C_BODYSTATECONTAINS(SELF, BS_SWIM))) {
            if (((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(SLD_1009_CARAMON))) && ((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING))) && ((QA302_FOLLOWCITIZEN) > (0))) && ((QA302_FOLLOWCITIZEN) < (3))) {
                AI_SETWALKMODE(SELF, NPC_WALK);
            } else if ((SELF.AIVAR[75]) == (WALKMODE_WALK)) {
                AI_SETWALKMODE(SELF, NPC_WALK);
            } else {
                AI_SETWALKMODE(SELF, NPC_RUN);
            };
        };
        AI_GOTOWP(SELF, NPC_GETNEARESTWP(NPC));
        SELF.AIVAR[19] = FALSE;
    };
    ZS_FOLLOW_NPC_STAND_LOOP();
    return LOOP_CONTINUE;
}

func void FOLLOW_SENSE_SEARCHFIGHT() {
    SELF.SENSES = (SENSE_HEAR) | (SENSE_SEE);
    SELF.SENSES_RANGE = PERC_DIST_ACTIVE_SEARCHFIGHT;
}

func void ZS_FOLLOW_JORN() {
    ZS_FOLLOW_NPC();
}

func int ZS_FOLLOW_JORN_LOOP() {
    return ZS_FOLLOW_NPC_LOOP(NONE_1_JORN);
}

func void ZS_FOLLOW_JORN_END() {
    ZS_FOLLOW_NPC_END();
}

func void ZS_FOLLOW_TRADER02() {
    ZS_FOLLOW_NPC();
}

func int ZS_FOLLOW_TRADER02_LOOP() {
    return ZS_FOLLOW_NPC_LOOP(NONE_13330_TRADER);
}

func void ZS_FOLLOW_TRADER02_END() {
    ZS_FOLLOW_NPC_END();
}

func void ZS_FOLLOW_QA302_CITIZEN() {
    ZS_FOLLOW_NPC();
}

func int ZS_FOLLOW_QA302_CITIZEN_LOOP() {
    return ZS_FOLLOW_NPC_LOOP(NONE_13499_QA302_BANDIT);
}

func void ZS_FOLLOW_QA302_CITIZEN_END() {
    ZS_FOLLOW_NPC_END();
}

func void ZS_FOLLOW_SQ207_BRADLOCK() {
    ZS_FOLLOW_NPC();
}

func int ZS_FOLLOW_SQ207_BRADLOCK_LOOP() {
    return ZS_FOLLOW_NPC_LOOP(NONE_2246_BRADLOCK);
}

func void ZS_FOLLOW_SQ207_BRADLOCK_END() {
    ZS_FOLLOW_NPC_END();
}

func void ZS_FOLLOW_11103_THUG() {
    ZS_FOLLOW_NPC();
}

func int ZS_FOLLOW_11103_THUG_LOOP() {
    return ZS_FOLLOW_NPC_LOOP(NONE_11103_THUG);
}

func void ZS_FOLLOW_11103_THUG_END() {
    ZS_FOLLOW_NPC_END();
}

