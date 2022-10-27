func void B_MM_ASSESSPLAYER() {
    if ((OTHER.AIVAR[4]) == (TRUE)) {
        return;
    };
    if (C_NPCISDOWN(OTHER)) {
        return;
    };
    if (((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) && (NPC_CHECKINFO(SELF, 1))) {
        if (((SELF.GUILD) == (GIL_DRAGON)) || (((SELF.GUILD) != (GIL_DRAGON)) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (PERC_DIST_DIALOG)))) {
            if (((!(C_BODYSTATECONTAINS(OTHER, BS_FALL))) && (!(C_BODYSTATECONTAINS(OTHER, BS_SWIM)))) && (!(C_BODYSTATECONTAINS(OTHER, BS_DIVE)))) {
                SELF.AIVAR[3] = TRUE;
                B_ASSESSTALK();
                return;
            };
        };
    };
    if ((SELF.AIVAR[15]) == (TRUE)) {
        if (((NPC_GETDISTTONPC(SELF, HERO)) < (500)) && (!(C_BODYSTATECONTAINS(SELF, BS_STAND)))) {
            NPC_CLEARAIQUEUE(SELF);
            AI_STANDUP(SELF);
            AI_TURNTONPC(SELF, HERO);
        };
    };
}

