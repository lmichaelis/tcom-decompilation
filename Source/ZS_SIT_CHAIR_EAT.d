func void ZS_SIT_CHAIR_EAT() {
    if (((NPC_HASITEMS(SELF, 36417)) >= (10)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 36417, NPC_HASITEMS(SELF, 36417));
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

func int ZS_SIT_CHAIR_EAT_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CHAIR"))) {
        MDL_APPLYOVERLAYMDS(SELF, "Humans_eatsit.mds");
        AI_USEMOB(SELF, "CHAIR", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        RANDOM = HLP_RANDOM(4);
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

func void REMOVEEATSITOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "Humans_eatsit.mds");
}

func void ZS_SIT_CHAIR_EAT_END() {
    AI_USEMOB(SELF, "CHAIR", -(1));
}

