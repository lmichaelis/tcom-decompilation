func void ZS_SIT_BENCH_DRINK() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_BENCH_DRINK_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "BENCH"))) {
        MDL_APPLYOVERLAYMDS(SELF, "Humans_sitdrink.mds");
        AI_USEMOB(SELF, "BENCH", 1);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) == (1)) {
            AI_PLAYANIBS(SELF, "R_BENCH_RANDOM_1", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_SIT_BENCH_DRINK_LOOP.RANDOM = 0;
func void REMOVESITDRINKOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "Humans_sitdrink.mds");
}

func void ZS_SIT_BENCH_DRINK_END() {
    AI_USEMOB(SELF, "BENCH", -(1));
}

