func void ZS_SEARCH_SCARED_MAIWEN() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, "HumanS_Scared.mds");
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SEARCH_SCARED_MAIWEN_LOOP() {
    if ((NPC_ISONFP(SELF, "SEARCH")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANI(SELF, T_SEARCH);
        AI_WAIT(SELF, 0x3fd9999a);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "SEARCH")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "SEARCH");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void REMOVESEARCHMAIWENOVERLAY() {
    MDL_REMOVEOVERLAYMDS(SELF, "HumanS_Scared.mds");
}

func void ZS_SEARCH_SCARED_MAIWEN_END() {
}

