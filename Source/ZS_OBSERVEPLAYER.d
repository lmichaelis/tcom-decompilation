func void ZS_OBSERVEPLAYER() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    PERCEPTION_SET_NORMAL();
    if ((OTHER.GUILD) == (GIL_MEATBUG)) {
        return;
    };
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_STANDUP(SELF);
        B_LOOKATNPC(SELF, OTHER);
        B_TURNTONPC(SELF, OTHER);
    };
    B_LOOKATNPC(SELF, OTHER);
    if ((SELF.NPCTYPE) == (NPCTYPE_FRIEND)) {
        return;
    };
    if (NPC_WASINSTATE(SELF, 46676)) {
        B_SAY(SELF, OTHER, "$YOUDISTURBEDMYSLUMBER");
    };
    if (((SELF.AIVAR[21]) == (TRUE)) && (NPC_ISPLAYER(OTHER))) {
        SELF.AIVAR[21] = FALSE;
        if ((PLAYER_LEFTROOMCOMMENT) == (FALSE)) {
            B_SAY(SELF, OTHER, "$WHATDIDYOUDOINTHERE");
            PLAYER_LEFTROOMCOMMENT = TRUE;
        };
    };
    SELF.AIVAR[68] = (HLP_RANDOM(2)) + (1);
}

func int ZS_OBSERVEPLAYER_LOOP() {
    if ((SELF.AIVAR[15]) == (TRUE)) {
        return LOOP_END;
    };
    if (ISHEROINVISIBLE()) {
        return LOOP_END;
    };
    if ((OTHER.GUILD) == (GIL_MEATBUG)) {
        return LOOP_END;
    };
    if ((C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) && ((PLAYER_SNEAKERCOMMENT) == (FALSE))) {
        PLAYER_SNEAKERCOMMENT = TRUE;
        AI_POINTATNPC(SELF, OTHER);
        B_SAY(SELF, OTHER, "$WHATSTHISSUPPOSEDTOBE");
        AI_STOPPOINTAT(SELF);
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSWARN, SELF, OTHER);
    };
    if ((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[68])) {
        if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
            B_TURNTONPC(SELF, OTHER);
        };
        SELF.AIVAR[68] = (HLP_RANDOM(2)) + (1);
        NPC_SETSTATETIME(SELF, 0);
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT)) {
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_OBSERVEPLAYER_END() {
    B_STOPLOOKAT(SELF);
}

