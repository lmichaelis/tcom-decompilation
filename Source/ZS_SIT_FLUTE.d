func void ZS_SIT_FLUTE() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    CREATEINVITEM(SELF, 36969);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SIT_FLUTE_LOOP() {
    var int SONG;
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
        AI_USEITEMTOSTATE(SELF, 36969, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        if ((NPC_GETDISTTONPC(SELF, HERO)) <= (2000)) {
            NPC_INITAMBIENTS(SELF, 22);
            SONG = NPC_GETLASTAMBIENT(SELF);
            if ((SONG) == (1)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_01");
                AI_WAIT(SELF, 1107296256);
            } else if ((SONG) == (2)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_02");
                AI_WAIT(SELF, 1106247680);
            } else if ((SONG) == (3)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_03");
                AI_WAIT(SELF, 1107820544);
            } else if ((SONG) == (4)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_04");
                AI_WAIT(SELF, 1105199104);
            } else if ((SONG) == (5)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_05");
                AI_WAIT(SELF, 1099431936);
            } else if ((SONG) == (6)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_06");
                AI_WAIT(SELF, 1110441984);
            } else if ((SONG) == (7)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_07");
                AI_WAIT(SELF, 1104674816);
            } else if ((SONG) == (8)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_08");
                AI_WAIT(SELF, 1112276992);
            } else if ((SONG) == (9)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_09");
                AI_WAIT(SELF, 1109655552);
            } else if ((SONG) == (10)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_10");
                AI_WAIT(SELF, 1111490560);
            } else if ((SONG) == (11)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_11");
                AI_WAIT(SELF, 1110966272);
            } else if ((SONG) == (12)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_12");
                AI_WAIT(SELF, 1111228416);
            } else if ((SONG) == (13)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_13");
                AI_WAIT(SELF, 1108869120);
            } else if ((SONG) == (14)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_14");
                AI_WAIT(SELF, 1106771968);
            } else if ((SONG) == (15)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_15");
                AI_WAIT(SELF, 1098907648);
            } else if ((SONG) == (16)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_16");
                AI_WAIT(SELF, 1108869120);
            } else if ((SONG) == (17)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_17");
                AI_WAIT(SELF, 1106771968);
            } else if ((SONG) == (18)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_18");
                AI_WAIT(SELF, 1115947008);
            } else if ((SONG) == (19)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_19");
                AI_WAIT(SELF, 1106771968);
            } else if ((SONG) == (20)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_20");
                AI_WAIT(SELF, 1103101952);
            } else if ((SONG) == (21)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_21");
                AI_WAIT(SELF, 1100480512);
            } else if ((SONG) == (22)) {
                AI_PLAYANI(SELF, "R_FLUTE_SONG_22");
                AI_WAIT(SELF, 1111228416);
            };
            AI_PLAYANI(SELF, "R_FLUTE_BREAK");
        } else {
            PRINTD("Nie gram na flecie, bo jesteœ za daleko bohaterze");
            AI_PLAYANI(SELF, "R_FLUTE_BREAK");
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_FLUTE_END() {
    AI_USEITEMTOSTATE(SELF, 36969, -(1));
}

