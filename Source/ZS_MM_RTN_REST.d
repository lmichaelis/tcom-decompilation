func void ZS_MM_RTN_REST() {
    PERCEPTION_SET_MONSTER_RTN();
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    B_MM_DESYNCHRONIZE();
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_MM_RTN_REST_LOOP() {
    var int RANDOMMOVE;
    if ((!(WLD_ISTIME(SELF.AIVAR[32], 0, SELF.AIVAR[33], 0))) && ((SELF.AIVAR[32]) != (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 91672, 1, "");
        return LOOP_END;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if (WLD_ISFPAVAILABLE(SELF, "FP_ROAM")) {
            AI_GOTOFP(SELF, "FP_ROAM");
        };
        if (NPC_ISONFP(SELF, "FP_ROAM")) {
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if ((HLP_RANDOM(1000)) <= (5)) {
        RANDOMMOVE = HLP_RANDOM(3);
        if ((RANDOMMOVE) == (0)) {
            AI_PLAYANI(SELF, "R_ROAM1");
        };
        if ((RANDOMMOVE) == (1)) {
            AI_PLAYANI(SELF, "R_ROAM2");
        };
        if ((RANDOMMOVE) == (2)) {
            AI_PLAYANI(SELF, "R_ROAM3");
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_REST_END() {
}

