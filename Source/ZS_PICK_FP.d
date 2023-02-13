func void ZS_PICK_FP() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_PICK_FP_LOOP() {
    if (((NPC_GETSTATETIME(SELF)) >= (7)) && (HLP_RANDOM(2))) {
        if ((NPC_ISONFP(SELF, "PICK")) && (WLD_ISFPAVAILABLE(SELF, "PICK"))) {
            AI_GOTONEXTFP(SELF, "PICK");
            AI_PLAYANI(SELF, T_PLUNDER);
            NPC_SETSTATETIME(SELF, 0);
        } else if (NPC_ISONFP(SELF, "PICK")) {
            AI_PLAYANI(SELF, T_PLUNDER);
            NPC_SETSTATETIME(SELF, 0);
        };
        AI_SETWALKMODE(SELF, NPC_WALK);
    };
    if ((NPC_GETSTATETIME(SELF)) >= (7)) {
        if (NPC_ISONFP(SELF, "PICK")) {
            AI_PLAYANI(SELF, T_PLUNDER);
        };
        AI_SETWALKMODE(SELF, NPC_WALK);
    };
    if ((!(NPC_ISONFP(SELF, "PICK"))) && (WLD_ISFPAVAILABLE(SELF, "PICK"))) {
        AI_GOTOFP(SELF, "PICK");
    };
    return LOOP_CONTINUE;
}

func void ZS_PICK_FP_END() {
}

