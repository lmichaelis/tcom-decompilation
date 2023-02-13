func void ZS_GHOST() {
}

func int ZS_GHOST_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) >= (5)) {
        if ((NPC_GETDISTTONPC(SELF, HERO)) > (PERC_DIST_DIALOG)) {
            AI_ALIGNTOWP(SELF);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_GHOST_END() {
}

