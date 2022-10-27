func void ZS_WOLF_SIT() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0x165ec);
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_WOLF_SIT_LOOP() {
    if ((NPC_ISONFP(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_ALIGNTOFP(SELF);
        AI_PLAYANIBS(SELF, T_STAND_2_SIT, BS_SIT);
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CAMPFIRE")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CAMPFIRE");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_SIT)) && ((NPC_GETSTATETIME(SELF)) > (3))) {
        RANDOM = HLP_RANDOM(2);
        if ((RANDOM) == (0)) {
            AI_WAIT(SELF, 0x3dcccccd);
            AI_PLAYANIBS(SELF, "R_HOWL", BS_SIT);
        } else if ((RANDOM) == (1)) {
            AI_WAIT(SELF, 0x3e4ccccd);
            AI_PLAYANIBS(SELF, "R_HOWL", BS_SIT);
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_WOLF_SIT_LOOP.RANDOM = 0;
func void ZS_WOLF_SIT_END() {
    AI_PLAYANIBS(SELF, T_SIT_2_STAND, BS_STAND);
}

