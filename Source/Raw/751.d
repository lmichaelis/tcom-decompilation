func void ZS_GOTOBED_DEEP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_STARTSTATE(SELF, 0xb658, 0, "");
}

func void ZS_SLEEP_DEEP() {
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 0xb653);
    AI_SETWALKMODE(SELF, NPC_WALK);
}

func int ZS_SLEEP_DEEP_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        if (WLD_ISMOBAVAILABLE(SELF, "BEDHIGH")) {
        } else if ((((PLAYER_GETOUTOFMYBEDCOMMENT) == (FALSE)) && (C_BODYSTATECONTAINS(HERO, BS_LIE))) && ((NPC_GETDISTTONPC(SELF, HERO)) <= (500))) {
            B_TURNTONPC(SELF, HERO);
            B_SAY(SELF, OTHER, "$GETOUTOFMYBED");
            PLAYER_GETOUTOFMYBEDCOMMENT = TRUE;
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SLEEP_DEEP_END() {
    if (!(NPC_ISINPLAYERSROOM(SELF))) {
        B_SAY(SELF, SELF, "$AWAKE");
    };
    AI_USEMOB(SELF, "BEDHIGH", -(1));
}

