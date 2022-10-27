func void ZS_SIT_FLUTE_SILBACH() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    CREATEINVITEM(SELF, 0x9069);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SIT_FLUTE_SILBACH_LOOP() {
    if (NPC_ISONFP(SELF, "CAMPFIRE")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_USEITEMTOSTATE(SELF, 0x9069, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x7d0)) {
            NPC_INITAMBIENTS(SELF, 3);
            SONG = NPC_GETLASTAMBIENT(SELF);
            if ((SONG) == (1)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_03");
                AI_WAIT(SELF, 0x42080000);
            } else if ((SONG) == (2)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_19");
                AI_WAIT(SELF, 0x41f80000);
            } else if ((SONG) == (3)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_20");
                AI_WAIT(SELF, 0x41c00000);
            };
            AI_PLAYANI(SELF, "R_FLUTE_BREAK");
        } else {
            PRINTD("Nie gram na flecie, bo jesteœ za daleko bohaterze");
            AI_PLAYANI(SELF, "R_FLUTE_BREAK");
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_SIT_FLUTE_SILBACH_LOOP.SONG = 0;
func void ZS_SIT_FLUTE_SILBACH_END() {
    AI_USEITEMTOSTATE(SELF, 0x9069, -(1));
}

