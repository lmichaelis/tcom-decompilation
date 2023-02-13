func void ZS_PAITING() {
    if (((NPC_HASITEMS(SELF, 36963)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 36963, NPC_HASITEMS(SELF, 36963));
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 36962)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 36962);
        };
    };
    if ((NPC_HASITEMS(SELF, 36962)) == (0)) {
        CREATEINVITEM(SELF, 36962);
    };
}

func int ZS_PAITING_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "PAITING"))) {
        AI_USEMOB(SELF, "PAITING", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (12)) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (3)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (4)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (5)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (6)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 1053609165);
        };
        if ((RANDOM) == (7)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (8)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (9)) {
            AI_WAIT(SELF, 1056964608);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 1045220557);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_PAITING_END() {
    AI_USEMOB(SELF, "PAITING", -(1));
}

