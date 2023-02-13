func void ZS_STAND_CROSSBOWGUARD() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_CROSSBOWGUARD_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if ((NPC_HASEQUIPPEDRANGEDWEAPON(SELF)) == (FALSE)) {
            if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(SLD_1018_DOCAN))) {
                CREATEINVITEMS(SELF, 37227, 1);
            } else if ((SELF.GUILD) == (GIL_MIL)) {
                CREATEINVITEMS(SELF, 34386, 1);
            } else {
                CREATEINVITEMS(SELF, 34420, 1);
            };
            AI_EQUIPBESTRANGEDWEAPON(SELF);
        };
        if ((NPC_HASITEMS(SELF, 34384)) < (2)) {
            CREATEINVITEMS(SELF, 34384, 2);
        };
        AI_READYRANGEDWEAPON(SELF);
        AI_PLAYANI(SELF, "T_STAND_2_CROSSBOWGUARD");
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((NPC_GETSTATETIME(SELF)) > (3)) {
        RANDOM = HLP_RANDOM(7);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_CROSSBOWGUARD_SCRATCH");
        } else if ((RANDOM) == (1)) {
            AI_PLAYANI(SELF, "T_CROSSBOWGUARD_STRETCH");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_CROSSBOWGUARD_END() {
    AI_PLAYANI(SELF, "T_CROSSBOWGUARD_2_STAND");
    AI_REMOVEWEAPON(SELF);
}

