func void ZS_INN() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS)) && (C_BODYSTATECONTAINS(SELF, BS_DEAD))) {
        if ((NPC_HASITEMS(SELF, 0x8cbb)) == (1)) {
            NPC_REMOVEINVITEM(SELF, 0x8cbb);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8cbb)) == (0)) {
        CREATEINVITEM(SELF, 0x8cbb);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_INN_LOOP() {
    if (NPC_ISONFP(SELF, "INN")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "INN")) {
        AI_GOTOFP(SELF, "INN");
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
        AI_USEITEMTOSTATE(SELF, 0x8cbb, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "R_INN_RANDOM_01");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "R_INN_RANDOM_02");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_INN_LOOP.RANDOM = 0;
func void ZS_INN_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cbb, -(1));
}

