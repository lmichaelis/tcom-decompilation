func void ZS_WRITING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8ce2)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8ce2);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8ce2)) == (0)) {
        CREATEINVITEM(SELF, 0x8ce2);
    };
}

func int ZS_WRITING_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "WRITING"))) {
        AI_USEMOB(SELF, "WRITING", 1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (15)) {
        RANDOM = HLP_RANDOM(4);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 0x3e4ccccd);
            AI_PLAYANI(SELF, "R_WRITING_RANDOM_01");
            AI_WAIT(SELF, 0x3e4ccccd);
        };
        if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 0x3e99999a);
            AI_PLAYANI(SELF, "R_WRITING_RANDOM_02");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 0x3e99999a);
            AI_PLAYANI(SELF, "R_WRITING_RANDOM_03");
            AI_WAIT(SELF, 0x3dcccccd);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_WRITING_LOOP.RANDOM = 0;
func void ZS_WRITING_END() {
    AI_USEMOB(SELF, "WRITING", -(1));
}

