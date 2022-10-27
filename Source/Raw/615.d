func void ZS_GUARD_PASSAGE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    NPC_SETPERCTIME(SELF, 0x3dcccccd);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    if ((NPC_GETDISTTONPC(SELF, HERO)) > (PERC_DIST_DIALOG)) {
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_GUARD_PASSAGE_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) >= (3)) {
        if ((NPC_GETDISTTONPC(SELF, HERO)) > (PERC_DIST_DIALOG)) {
            AI_ALIGNTOWP(SELF);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_GUARD_PASSAGE_END() {
}
