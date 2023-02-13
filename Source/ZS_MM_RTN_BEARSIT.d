func void ZS_MM_RTN_BEARSIT() {
    PERCEPTION_SET_MONSTER_RTN();
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    B_MM_DESYNCHRONIZE();
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_MM_RTN_BEARSIT_LOOP() {
    var int RANDOM;
    if ((!(WLD_ISTIME(SELF.AIVAR[45], 0, SELF.AIVAR[46], 0))) && ((SELF.AIVAR[45]) != (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 91672, 1, "");
        return LOOP_END;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if (WLD_ISFPAVAILABLE(SELF, "FP_ROAM")) {
            AI_GOTOFP(SELF, "FP_ROAM");
            AI_PLAYANIBS(SELF, "T_STAND_2_SIT", BS_SIT);
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if ((NPC_GETSTATETIME(SELF)) >= (5)) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) == (1)) {
            AI_PLAYANIBS(SELF, "T_SIT_ROAR", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_BEARSIT_END() {
    AI_PLAYANIBS(SELF, "T_SIT_2_STAND", BS_STAND);
}

