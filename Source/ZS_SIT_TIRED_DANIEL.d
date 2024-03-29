func void ZS_SIT_TIRED_DANIEL() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_13382_HUXLAY))) {
        if (NPC_KNOWSINFO(HERO, 65938)) {
            PERCEPTION_SET_ONLYDIALOGUE();
        } else {
            PERCEPTION_SET_NONE();
        };
    };
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_TIRED_DANIEL_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_TIREDSIT", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_TIRED_DANIEL_END() {
    AI_PLAYANIBS(SELF, "T_TIREDSIT_2_STAND", BS_STAND);
}

