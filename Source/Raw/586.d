func void ZS_CRY_SPOOKYWOMAN() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_CRY_SPOOKYWOMAN_LOOP() {
    if (NPC_ISONFP(SELF, "CRY")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if ((WLD_ISFPAVAILABLE(SELF, "CRY")) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_GOTOFP(SELF, "CRY");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if (((SELF.AIVAR[19]) == (NOTINPOS)) && (!(C_BODYSTATECONTAINS(SELF, BS_SIT)))) {
        AI_STANDUP(SELF);
        AI_PLAYANIBS(SELF, "T_STAND_2_CRY", BS_SIT);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (4)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(3);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "R_CRY_RANDOM_01");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "R_CRY_RANDOM_02");
        } else if ((RANDOM) == (2)) {
            AI_PLAYANI(SELF, "R_CRY_RANDOM_03");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

var int ZS_CRY_SPOOKYWOMAN_LOOP.RANDOM = 0;
func void ZS_CRY_SPOOKYWOMAN_END() {
    AI_PLAYANIBS(SELF, "T_CRY_2_STAND", BS_STAND);
}

