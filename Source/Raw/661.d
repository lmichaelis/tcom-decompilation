func void ZS_PRAY_BODY(var C_NPC NPC) {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_TURNTONPC(SELF, NPC);
}

func int ZS_PRAY_BODY_LOOP(var C_NPC NPC) {
    AI_TURNTONPC(SELF, NPC);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_PLAYANIBS(SELF, "T_STAND_2_PRAY", BS_SIT);
    };
    AI_PLAYANIBS(SELF, "T_PRAY_RANDOM", BS_SIT);
    return LOOP_CONTINUE;
}

func void ZS_PRAY_BODY_END() {
    NPC_STOPANI(SELF, "T_PRAY_RANDOM");
    AI_PLAYANI(SELF, "T_PRAY_2_STAND");
}

func void ZS_PRAY_BODY_DARRYL() {
    ZS_PRAY_BODY(NONE_100010_DARRYL);
}

func int ZS_PRAY_BODY_DARRYL_LOOP() {
    ZS_PRAY_BODY_LOOP(NONE_100010_DARRYL);
    return LOOP_CONTINUE;
}

func void ZS_PRAY_BODY_DARRYL_END() {
    ZS_PRAY_BODY_END();
}

