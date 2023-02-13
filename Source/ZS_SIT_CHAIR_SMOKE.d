func void ZS_SIT_CHAIR_SMOKE() {
    if (((NPC_HASITEMS(SELF, 34194)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 34194, NPC_HASITEMS(SELF, 34194));
    };
    PERCEPTION_SET_CHAIR();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CHAIR_SMOKE_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CHAIR"))) {
        MDL_APPLYOVERLAYMDS(SELF, "HumanS_Sit_Smoke.mds");
        AI_USEMOB(SELF, "CHAIR", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) <= (0)) {
            AI_PLAYANIBS(SELF, "R_CHAIR_RANDOM_1", BS_SIT);
        } else if ((RANDOM) <= (1)) {
            AI_PLAYANIBS(SELF, "R_CHAIR_RANDOM_2", BS_SIT);
        } else if ((RANDOM) <= (2)) {
            AI_PLAYANIBS(SELF, "R_CHAIR_RANDOM_3", BS_SIT);
        } else if ((RANDOM) <= (3)) {
            AI_PLAYANIBS(SELF, "R_CHAIR_RANDOM_4", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_CHAIR_SMOKE_END() {
    AI_USEMOB(SELF, "CHAIR", -(1));
}

func void REMOVESITSMOKEOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "HumanS_Sit_Smoke.mds");
}

