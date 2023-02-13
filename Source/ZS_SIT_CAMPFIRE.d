func void ZS_SIT_CAMPFIRE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CAMPFIRE_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, T_STAND_2_SIT, BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_CAMPFIRE_END() {
    AI_PLAYANIBS(SELF, T_SIT_2_STAND, BS_STAND);
}

func void ZS_SIT_CAMPFIRE_FLEX() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_SETWALKMODE(SELF, NPC_WALK);
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CAMPFIRE_FLEX_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_ALIGNTOWP(SELF);
        AI_PLAYANIBS(SELF, T_STAND_2_SIT, BS_SIT);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_CAMPFIRE_FLEX_END() {
    AI_PLAYANIBS(SELF, T_SIT_2_STAND, BS_STAND);
}

func void ZS_SIT_CAMPFIRE_Q602() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 41653);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 43306);
    NPC_PERCENABLE(SELF, PERC_ASSESSQUIETSOUND, 41644);
    if ((C_NPC_ICANTTALK(SELF)) == (FALSE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 41645);
    };
    if ((C_NPC_ICANTTALK(SELF)) == (TRUE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 41633);
        NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 41641);
    };
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CAMPFIRE_Q602_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, T_STAND_2_SIT, BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_CAMPFIRE_Q602_END() {
    AI_PLAYANIBS(SELF, T_SIT_2_STAND, BS_STAND);
}

