func void ZS_SPYGLASS() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x9060)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x9060);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x9060)) == (0)) {
        CREATEINVITEM(SELF, 0x9060);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SPYGLASS_LOOP() {
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
        AI_USEITEMTOSTATE(SELF, 0x9060, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (15)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(5);
        if (((RANDOM) == (0)) || ((RANDOM) == (2))) {
            AI_PLAYANI(SELF, "R_SPYGLASS_RANDOM_01");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_SPYGLASS_LOOP.RANDOM = 0;
func void ZS_SPYGLASS_END() {
    AI_USEITEMTOSTATE(SELF, 0x9060, -(1));
}

