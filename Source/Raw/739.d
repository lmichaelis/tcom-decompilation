func void ZS_SIT_SLAVSQUAT() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BDT_8010_PUMA_HUMAN))) {
        PERCEPTION_SET_WANTEDPOSTER();
    };
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_SLAVSQUAT_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_SLAV", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void REMOVESLAVSQUATOVERLAY() {
}

func void ZS_SIT_SLAVSQUAT_END() {
    AI_PLAYANIBS(SELF, "T_SLAV_2_STAND", BS_STAND);
}

func void ZS_SIT_SLAVSQUAT_NOTALK() {
    PERCEPTION_SET_INTROVERT();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_SLAVSQUAT_NOTALK_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_SLAV", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_SLAVSQUAT_NOTALK_END() {
    AI_PLAYANIBS(SELF, "T_SLAV_2_STAND", BS_STAND);
}

func void ZS_SIT_SLAVSQUAT_Q602() {
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0xa2b5);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xa92a);
    if ((C_NPC_ICANTTALK(SELF)) == (FALSE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSTALK, 0xa2ad);
    };
    if ((C_NPC_ICANTTALK(SELF)) == (TRUE)) {
        NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
        NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xa2a9);
    };
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_SLAVSQUAT_Q602_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_SLAV", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_SLAVSQUAT_Q602_END() {
    AI_PLAYANIBS(SELF, "T_SLAV_2_STAND", BS_STAND);
}

func void ZS_SIT_SLAVSQUAT_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_SLAVSQUAT_NOIQ_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_SLAV", BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_SLAVSQUAT_NOIQ_END() {
    AI_PLAYANIBS(SELF, "T_SLAV_2_STAND", BS_STAND);
}

