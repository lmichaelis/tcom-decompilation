func void ZS_MM_RTN_FOLLOW_SHEEP() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 91632);
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 41645);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
}

func int ZS_MM_RTN_FOLLOW_SHEEP_LOOP() {
    var int RANDOMMOVE;
    if ((SELF.AIVAR[15]) == (TRUE)) {
        if ((NPC_GETDISTTONPC(SELF, HERO)) > (500)) {
            if (!(C_BODYSTATECONTAINS(SELF, BS_SWIM))) {
                AI_SETWALKMODE(SELF, NPC_RUN);
            };
            AI_GOTONPC(SELF, HERO);
        } else {
            AI_TURNTONPC(SELF, HERO);
            SELF.WP = NPC_GETNEARESTWP(SELF);
        };
    };
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
    return LOOP_CONTINUE;
}

func void ZS_MM_RTN_FOLLOW_SHEEP_END() {
}

