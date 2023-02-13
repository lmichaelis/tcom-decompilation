func void ZS_PREACH_TERRY() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 34190)) == (0)) {
        CREATEINVITEM(SELF, 34190);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_PREACH_TERRY_LOOP() {
    if (NPC_ISONFP(SELF, "PREACH")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "PREACH")) {
        AI_GOTOFP(SELF, "PREACH");
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
        NPC_SETSTATETIME(SELF, 0);
        SELF.AIVAR[19] = ISINPOS;
        AI_USEITEMTOSTATE(SELF, 34190, 1);
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        if ((NPC_GETSTATETIME(SELF)) >= (8)) {
            PRINTD("IsInPos");
            if (((SQ116_TERRYCUTSCENEENABLE) != (2)) || (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_SUCCESS)) && ((SQ116_TERRYCUTSCENEENABLE) == (2)))) {
                if ((SELF.AIVAR[97]) > (7)) {
                    SELF.AIVAR[97] = 0;
                };
                B_PREACH_TERRY(SELF.AIVAR[97]);
                SELF.AIVAR[97] = (SELF.AIVAR[97]) + (1);
                NPC_SETSTATETIME(SELF, 0);
            };
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_PREACH_TERRY_END() {
    AI_USEITEMTOSTATE(SELF, 34190, -(1));
}

