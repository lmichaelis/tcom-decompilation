func void ZS_SCYTHE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 0x8cd2)) == (0)) {
        CREATEINVITEM(SELF, 0x8cd2);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SCYTHE_LOOP() {
    if (NPC_ISONFP(SELF, "SCYTHE")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "SCYTHE")) {
        AI_GOTOFP(SELF, "SCYTHE");
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
        AI_USEITEMTOSTATE(SELF, 0x8cd2, 1);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SCYTHE_END() {
    AI_USEITEMTOSTATE(SELF, 0x8cd2, -(1));
}

func void ZS_SCYTHE_USEMOB() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if ((NPC_HASITEMS(SELF, 0x8cd2)) == (0)) {
        CREATEINVITEM(SELF, 0x8cd2);
    };
}

func int ZS_SCYTHE_USEMOB_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "SCYTHE"))) {
        AI_USEMOB(SELF, "SCYTHE", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_SCYTHE_USEMOB_END() {
    AI_USEMOB(SELF, "SCYTHE", -(1));
}

