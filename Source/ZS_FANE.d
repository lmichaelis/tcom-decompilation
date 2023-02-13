func void ZS_FANE() {
    PRINTDEBUGNPC(PD_TA_FRAME, "ZS_Fane");
    NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 61599);
    NPC_SETATTITUDE(SELF, ATT_FRIENDLY);
    NPC_SETTEMPATTITUDE(SELF, ATT_FRIENDLY);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func void ZS_FANE_LOOP() {
    PRINTDEBUGNPC(PD_TA_LOOP, "ZS_Fane_Loop");
    if (NPC_ISONFP(SELF, "FANESLEEP")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "FANESLEEP")) {
        AI_GOTOFP(SELF, "FANESLEEP");
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
        if ((SQ113_FANESTAND) == (0)) {
            AI_PLAYANIBS(SELF, "T_STAND_2_FANESLEEP", BS_SIT);
        };
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        AI_WAIT(SELF, 1065353216);
    };
}

func void ZS_FANE_END() {
    PRINTDEBUGNPC(PD_TA_FRAME, "ZS_Fane_End");
    if ((SQ113_FANESTAND) == (0)) {
        AI_PLAYANIBS(SELF, "T_FANESLEEP_2_STAND", BS_STAND);
    };
}

