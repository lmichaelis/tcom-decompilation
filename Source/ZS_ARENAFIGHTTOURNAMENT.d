func void ZS_ARENAFIGHTTOURNAMENT() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_ARENAFIGHTTOURNAMENT_LOOP() {
    var int RANDOM;
    var int RANDOM2;
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_LOOKATNPC(SELF, HERO);
        RANDOM2 = HLP_RANDOM(3);
        if ((RANDOM2) == (0)) {
            AI_WAIT(SELF, 1053609165);
            AI_PLAYANI(SELF, "T_STAND_2_WATCHFIGHT");
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
        } else if ((RANDOM2) == (1)) {
            AI_PLAYANI(SELF, "T_STAND_2_WATCHFIGHT");
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
        } else if ((RANDOM2) == (2)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "T_STAND_2_WATCHFIGHT");
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
        };
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (6)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(18);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
        } else if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 1065353216);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
        } else if ((RANDOM) == (2)) {
            AI_WAIT(SELF, 1056964608);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
        } else if ((RANDOM) == (3)) {
            AI_WAIT(SELF, 1066192077);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO");
        } else if ((RANDOM) == (4)) {
            AI_WAIT(SELF, 1061997773);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_02");
        } else if ((RANDOM) == (5)) {
            AI_WAIT(SELF, 1068708659);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_03");
        } else if ((RANDOM) == (6)) {
            AI_WAIT(SELF, 1069547520);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
        } else if ((RANDOM) == (7)) {
            AI_WAIT(SELF, 1072064102);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
        } else if ((RANDOM) == (8)) {
            AI_WAIT(SELF, 1074161254);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
        } else if ((RANDOM) == (9)) {
            AI_WAIT(SELF, 1070386381);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO");
        } else if ((RANDOM) == (10)) {
            AI_WAIT(SELF, 1074580685);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_02");
        } else if ((RANDOM) == (11)) {
            AI_WAIT(SELF, 1075419546);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_03");
        } else if ((RANDOM) == (12)) {
            AI_WAIT(SELF, 1060320051);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
        } else if ((RANDOM) == (13)) {
            AI_WAIT(SELF, 1036831949);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
        } else if ((RANDOM) == (14)) {
            AI_WAIT(SELF, 1063675494);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
        } else if ((RANDOM) == (15)) {
            AI_WAIT(SELF, 1050253722);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO");
        } else if ((RANDOM) == (16)) {
            AI_WAIT(SELF, 1069547520);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_02");
        } else if ((RANDOM) == (17)) {
            AI_WAIT(SELF, 1072902963);
            AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_03");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_ARENAFIGHTTOURNAMENT_END() {
    AI_PLAYANI(SELF, "T_WATCHFIGHT_2_STAND");
}

