func void ZS_SWORDTRAINING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 39506)) == (0)) {
        CREATEINVITEM(SELF, 39506);
    };
}

func int ZS_SWORDTRAINING_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "SWORDTRAINING"))) {
        AI_USEMOB(SELF, "SWORDTRAINING", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (12)) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_01");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_02");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_03");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (3)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_04");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (4)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_05");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (5)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_01");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (6)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_02");
            AI_WAIT(SELF, 1053609165);
        };
        if ((RANDOM) == (7)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_03");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (8)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_04");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (9)) {
            AI_WAIT(SELF, 1056964608);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_05");
            AI_WAIT(SELF, 1045220557);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SWORDTRAINING_END() {
    AI_USEMOB(SELF, "SWORDTRAINING", -(1));
}

func void ZS_SWORDTRAINING_Q306() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((NPC_HASITEMS(SELF, 39506)) == (0)) {
        CREATEINVITEM(SELF, 39506);
    };
}

func int ZS_SWORDTRAINING_Q306_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "SWORDTRAINING"))) {
        AI_USEMOB(SELF, "SWORDTRAINING", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (12)) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_01");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_02");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_03");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (3)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_04");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (4)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_05");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (5)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_01");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (6)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_02");
            AI_WAIT(SELF, 1053609165);
        };
        if ((RANDOM) == (7)) {
            AI_WAIT(SELF, 1045220557);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_03");
            AI_WAIT(SELF, 1045220557);
        };
        if ((RANDOM) == (8)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_04");
            AI_WAIT(SELF, 1036831949);
        };
        if ((RANDOM) == (9)) {
            AI_WAIT(SELF, 1056964608);
            AI_PLAYANI(SELF, "R_SWORDTRAINING_RANDOM_05");
            AI_WAIT(SELF, 1045220557);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SWORDTRAINING_Q306_END() {
    AI_USEMOB(SELF, "SWORDTRAINING", -(1));
}

