func void ZS_PREACH_LAUDUS() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_PREACH_LAUDUS_LOOP() {
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
        MDL_APPLYOVERLAYMDS(SELF, "HumanS_MageSpeech.mds");
        AI_PLAYANI(SELF, T_STAND_2_LGUARD);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((ISINCAMERA) == (FALSE)) && (INFOMANAGER_HASFINISHED())) {
        if ((NPC_GETSTATETIME(SELF)) >= (13)) {
            if ((SELF.AIVAR[97]) > (21)) {
                SELF.AIVAR[97] = 0;
            };
            B_PREACH_LAUDUS(SELF.AIVAR[97]);
            SELF.AIVAR[97] = (SELF.AIVAR[97]) + (1);
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_PREACH_LAUDUS_END() {
    AI_PLAYANI(SELF, T_LGUARD_2_STAND);
}

func void REMOVELAUDUSPREACHMDS() {
    MDL_REMOVEOVERLAYMDS(SELF, "HumanS_MageSpeech.mds");
}

