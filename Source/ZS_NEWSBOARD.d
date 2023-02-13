func void ZS_NEWSBOARD() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_NEWSBOARD_LOOP() {
    var int RANDOM;
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BOOKSHELF"))) {
        AI_USEMOB(SELF, "BOOKSHELF", 1);
    };
    if (((SELF.AIVAR[19]) == (ISINPOS)) && ((NPC_GETSTATETIME(SELF)) > (7))) {
        RANDOM = HLP_RANDOM(40);
        if (((RANDOM) >= (6)) && ((RANDOM) <= (12))) {
            AI_PLAYANI(SELF, "R_BOOKSHELF_RANDOM_01");
        };
        if (((RANDOM) >= (13)) && ((RANDOM) <= (22))) {
            AI_PLAYANI(SELF, "R_BOOKSHELF_RANDOM_04");
        };
        if (((RANDOM) >= (23)) && ((RANDOM) <= (30))) {
            AI_PLAYANI(SELF, "R_BOOKSHELF_RANDOM_03");
        };
        if (((RANDOM) >= (31)) && ((RANDOM) <= (36))) {
            AI_PLAYANI(SELF, "R_BOOKSHELF_RANDOM_02");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_NEWSBOARD_END() {
    AI_USEMOB(SELF, "BOOKSHELF", -(1));
}

