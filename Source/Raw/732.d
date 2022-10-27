func void ZS_SIT_DEPRESSION_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_DEPRESSION_NOIQ_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_DEPRESSION", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_DEPRESSION_NOIQ_END() {
    AI_PLAYANIBS(SELF, "T_DEPRESSIONSIT_2_STAND", BS_STAND);
}

