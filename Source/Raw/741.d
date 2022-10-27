func void ZS_SIT_SOFA() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_SOFA_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "SOFA"))) {
        AI_USEMOB(SELF, "SOFA", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        RANDOM = HLP_RANDOM(8);
        if ((RANDOM) <= (0)) {
            AI_PLAYANIBS(SELF, "R_SOFA_RANDOM_1", BS_SIT);
        };
        if ((RANDOM) <= (1)) {
            AI_PLAYANIBS(SELF, "R_SOFA_RANDOM_2", BS_SIT);
        };
        if ((RANDOM) <= (2)) {
            AI_PLAYANIBS(SELF, "R_SOFA_RANDOM_3", BS_SIT);
        };
        if ((RANDOM) <= (3)) {
            AI_PLAYANIBS(SELF, "R_SOFA_RANDOM_4", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_SIT_SOFA_LOOP.RANDOM = 0;
func void ZS_SIT_SOFA_END() {
    AI_USEMOB(SELF, "SOFA", -(1));
}

