func void ZS_GAWK() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_STARTSTATE(SELF, 46044, 0, "");
}

func int ZS_GAWKSTATE() {
    AI_STANDUP(SELF);
    B_LOOKATNPC(SELF, HERO);
    B_TURNTONPC(SELF, HERO);
    return 0 /* !broken stack! */;
}

func int ZS_GAWKSTATE_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (1)) {
        B_TURNTONPC(SELF, HERO);
        NPC_SETSTATETIME(SELF, 0);
    };
    if ((NPC_GETDISTTONPC(SELF, HERO)) > (PERC_DIST_INTERMEDIAT)) {
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_GAWKSTATE_END() {
    B_STOPLOOKAT(SELF);
}

