func void ZS_SEARCH_SCARED_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    MDL_STARTFACEANI(SELF, S_FRIGHTENED, 1065353216, -1082130432);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SEARCH_SCARED_NOIQ_LOOP() {
    if ((NPC_ISONFP(SELF, "SEARCH")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANI(SELF, T_SEARCH_SCARED);
        AI_WAIT(SELF, 1071225242);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "SEARCH")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "SEARCH");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SEARCH_SCARED_NOIQ_END() {
}

