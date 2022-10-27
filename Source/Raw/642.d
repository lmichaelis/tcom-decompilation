func void ZS_PAITING() {
    if (((NPC_HASITEMS(SELF, 0x9063)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x9063, NPC_HASITEMS(SELF, 0x9063));
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
        if ((NPC_HASITEMS(SELF, 0x9062)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x9062);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x9062)) == (0)) {
        CREATEINVITEM(SELF, 0x9062);
    };
}

func int ZS_PAITING_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "PAITING"))) {
        AI_USEMOB(SELF, "PAITING", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (12)) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 0x3e99999a);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 0x3e4ccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 0x3e4ccccd);
        };
        if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 0x3e99999a);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (3)) {
            AI_WAIT(SELF, 0x3ecccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 0x3e4ccccd);
        };
        if ((RANDOM) == (4)) {
            AI_WAIT(SELF, 0x3dcccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (5)) {
            AI_WAIT(SELF, 0x3dcccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (6)) {
            AI_WAIT(SELF, 0x3ecccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 0x3ecccccd);
        };
        if ((RANDOM) == (7)) {
            AI_WAIT(SELF, 0x3e4ccccd);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_02");
            AI_WAIT(SELF, 0x3e4ccccd);
        };
        if ((RANDOM) == (8)) {
            AI_WAIT(SELF, 0x3e99999a);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_03");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (9)) {
            AI_WAIT(SELF, 0x3f000000);
            AI_PLAYANI(SELF, "R_PAITING_RANDOM_01");
            AI_WAIT(SELF, 0x3e4ccccd);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_PAITING_LOOP.RANDOM = 0;
func void ZS_PAITING_END() {
    AI_USEMOB(SELF, "PAITING", -(1));
}

