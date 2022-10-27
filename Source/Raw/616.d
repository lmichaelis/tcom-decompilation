func void B_ASSESSGUIDEPLAYER() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) > (800)) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) < (NPC_GETDISTTOWP(HERO, SELF.WP))) {
            NPC_CLEARAIQUEUE(SELF);
            AI_STANDUP(SELF);
            B_TURNTONPC(SELF, HERO);
        };
        if ((((NPC_GETDISTTONPC(SELF, HERO)) > (0x4b0)) && ((SELF.AIVAR[61]) == (TRUE))) && ((NPC_GETATTITUDE(SELF, HERO)) == (ATT_HOSTILE))) {
            SELF.AIVAR[61] = FALSE;
        };
    };
    B_ASSESSPLAYER();
}

func void B_ASSESSGUIDEFIGHTSOUND() {
    if ((NPC_ISPLAYER(OTHER)) || (NPC_ISPLAYER(VICTIM))) {
        B_ASSESSFIGHTSOUND();
    };
}

func void ZS_GUIDE_PLAYER() {
    PERCEPTION_SET_MINIMAL();
    B_RESETALL(SELF);
    SELF.SENSES = ((SENSE_SEE) | (SENSE_HEAR)) | (SENSE_SMELL);
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb3fa);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 0xa2ad);
    NPC_PERCENABLE(SELF, PERC_MOVEMOB, 0xa2b6);
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xb3fb);
}

func int ZS_GUIDE_PLAYER_LOOP() {
    if (((NPC_GETDISTTONPC(SELF, HERO)) > (800)) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) < (NPC_GETDISTTOWP(HERO, SELF.WP)))) {
        B_ASSESSGUIDEPLAYER();
    };
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (300)) {
        if (!(C_BODYSTATECONTAINS(SELF, BS_SWIM))) {
            if ((SELF.AIVAR[75]) == (WALKMODE_WALK)) {
                if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_10015_BAES))) && ((LOG_GETSTATUS(MIS_Q403)) == (LOG_RUNNING))) {
                    AI_SETWALKMODE(SELF, NPC_RUN);
                } else {
                    AI_SETWALKMODE(SELF, NPC_WALK);
                } else {
                    /* set_instance(0) */;
                };
            };
            AI_SETWALKMODE(SELF, NPC_RUN);
        };
        AI_GOTOWP(SELF, SELF.WP);
    };
    B_TURNTONPC(SELF, HERO);
    return LOOP_CONTINUE;
}

func int ZS_GUIDE_PLAYER_END() {
    return 0 /* !broken stack! */;
}

func void ZS_GUIDE_PLAYER_NOTALK() {
    PERCEPTION_SET_MINIMAL();
    B_RESETALL(SELF);
    SELF.SENSES = ((SENSE_SEE) | (SENSE_HEAR)) | (SENSE_SMELL);
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb3fa);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
    NPC_PERCENABLE(SELF, PERC_MOVEMOB, 0xa2b6);
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xb3fb);
    B_RESETALL(SELF);
}

func int ZS_GUIDE_PLAYER_NOTALK_LOOP() {
    if (((NPC_GETDISTTONPC(SELF, HERO)) > (800)) && ((NPC_GETDISTTOWP(SELF, SELF.WP)) < (NPC_GETDISTTOWP(HERO, SELF.WP)))) {
        B_ASSESSGUIDEPLAYER();
    };
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (300)) {
        if (!(C_BODYSTATECONTAINS(SELF, BS_SWIM))) {
            if ((SELF.AIVAR[75]) == (WALKMODE_WALK)) {
                if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_10015_BAES))) && ((LOG_GETSTATUS(MIS_Q403)) == (LOG_RUNNING))) {
                    AI_SETWALKMODE(SELF, NPC_RUN);
                } else {
                    AI_SETWALKMODE(SELF, NPC_WALK);
                } else {
                    /* set_instance(0) */;
                };
            };
            AI_SETWALKMODE(SELF, NPC_RUN);
        };
        AI_GOTOWP(SELF, SELF.WP);
    };
    B_TURNTONPC(SELF, HERO);
    return LOOP_CONTINUE;
}

func int ZS_GUIDE_PLAYER_NOTALK_END() {
    return 0 /* !broken stack! */;
}

