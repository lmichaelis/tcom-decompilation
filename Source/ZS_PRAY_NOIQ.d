func void ZS_PRAY_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PRAY_NOIQ_LOOP() {
    if (NPC_ISONFP(SELF, "PRAY")) {
        if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
            AI_ALIGNTOFP(SELF);
            AI_PLAYANIBS(SELF, "T_STAND_2_PRAY", BS_SIT);
        } else {
            AI_PLAYANIBS(SELF, "T_PRAY_RANDOM", BS_SIT);
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "PRAY")) {
        AI_GOTOFP(SELF, "PRAY");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_PRAY_NOIQ_END() {
    NPC_STOPANI(SELF, "T_PRAY_RANDOM");
    AI_PLAYANI(SELF, "T_PRAY_2_STAND");
}

