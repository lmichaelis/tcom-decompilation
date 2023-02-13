func void ZS_SQ506_NOVICE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if ((NPC_HASITEMS(SELF, 38182)) == (0)) {
        CREATEINVITEMS(SELF, 38182, 1);
    };
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SQ506_NOVICE_LOOP() {
    var int SEARCHSTYLE;
    B_READYSPELL(SELF, SPL_TELEKINESIS, SPL_COST_TELEPORT);
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        SEARCHSTYLE = HLP_RANDOM(4);
        if ((SEARCHSTYLE) == (0)) {
            AI_GOTOWP(SELF, "PART8_SQ506_SEARCH_01");
        } else if ((SEARCHSTYLE) == (2)) {
            AI_GOTOWP(SELF, "PART8_SQ506_SEARCH_02");
        } else if ((SEARCHSTYLE) == (3)) {
            AI_GOTOWP(SELF, "PART8_SQ506_SEARCH_03");
        } else if ((SEARCHSTYLE) == (4)) {
            AI_GOTOWP(SELF, "PART8_SQ506_SEARCH_04");
        };
        AI_PLAYANI(SELF, T_SEARCH);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ506_NOVICE_END() {
    AI_UNREADYSPELL(SELF);
}

func void ZS_SQ506_NOVICE_DUMB() {
    PERCEPTION_SET_DUMB();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SQ506_NOVICE_DUMB_LOOP() {
    if ((NPC_ISONFP(SELF, "LEAN")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_LEAN", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "LEAN")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "LEAN");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ506_NOVICE_DUMB_END() {
    AI_PLAYANIBS(SELF, "T_LEAN_2_STAND", BS_STAND);
}
