func void ZS_MM_RTN_ROAM() {
    PERCEPTION_SET_MONSTER_RTN();
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    B_MM_DESYNCHRONIZE();
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_MM_RTN_ROAM_LOOP() {
    if ((!(WLD_ISTIME(SELF.AIVAR[34], 0, SELF.AIVAR[35], 0))) && ((SELF.AIVAR[34]) != (ONLYROUTINE))) {
        AI_STARTSTATE(SELF, 0x16618, 1, "");
        return LOOP_END;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        WANDERTIME = HLP_RANDOM(5);
        NPC_SETSTATETIME(SELF, 0);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((NPC_GETSTATETIME(SELF)) > (WANDERTIME)) {
        if (WLD_ISNEXTFPAVAILABLE(SELF, "FP_ROAM")) {
            AI_GOTONEXTFP(SELF, "FP_ROAM");
        };
        SELF.AIVAR[19] = NOTINPOS;
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

var int ZS_MM_RTN_ROAM_LOOP.WANDERTIME = 0;
var int ZS_MM_RTN_ROAM_LOOP.RANDOMMOVE = 0;
func void ZS_MM_RTN_ROAM_END() {
}

