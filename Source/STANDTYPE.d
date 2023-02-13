var int STANDTYPE;
var int RANDOMSTAND;
func void ZS_RECRUIT() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_RECRUIT_LOOP() {
    var int RANDOM2;
    var int RANDOM;
    if (NPC_ISONFP(SELF, "RECRUIT")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "RECRUIT")) {
        AI_GOTOFP(SELF, "RECRUIT");
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
        RANDOMSTAND = HLP_RANDOM(2);
        if ((RANDOMSTAND) == (0)) {
            STANDTYPE = 1;
        };
        if ((RANDOMSTAND) == (1)) {
            STANDTYPE = 2;
        };
        if ((STANDTYPE) == (1)) {
            AI_PLAYANI(SELF, T_STAND_2_LGUARD);
            STANDTYPE = 3;
        } else if ((STANDTYPE) == (2)) {
            AI_PLAYANI(SELF, "T_STAND_2_HGUARD");
            STANDTYPE = 4;
        };
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(7);
        RANDOM2 = HLP_RANDOM(7);
        if (((STANDTYPE) == (3)) && ((STANDTYPE) != (4))) {
            if ((RANDOM) == (0)) {
                AI_PLAYANI(SELF, "T_LGUARD_SCRATCH");
            } else if ((RANDOM) == (1)) {
                AI_PLAYANI(SELF, "T_LGUARD_STRETCH");
            } else if ((RANDOM) == (2)) {
                AI_PLAYANI(SELF, "T_LGUARD_CHANGELEG");
            };
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_RECRUIT_END() {
    if ((STANDTYPE) == (3)) {
        AI_PLAYANI(SELF, T_LGUARD_2_STAND);
        STANDTYPE = 0;
    };
    if ((STANDTYPE) == (4)) {
        AI_PLAYANI(SELF, "T_HGUARD_2_STAND");
        STANDTYPE = 0;
    };
}

