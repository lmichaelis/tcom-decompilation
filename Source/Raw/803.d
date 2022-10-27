func void ZS_SWEEP_FP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (0)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 0x8590)) == (0)) {
        CREATEINVITEM(SELF, 0x8590);
    };
}

func int ZS_SWEEP_FP_LOOP() {
    if (NPC_ISONFP(SELF, "SWEEP")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SWEEP")) {
        AI_GOTOFP(SELF, "SWEEP");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_USEITEMTOSTATE(SELF, 0x8590, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SWEEP_FP_END() {
    AI_USEITEMTOSTATE(SELF, 0x8590, -(1));
}

