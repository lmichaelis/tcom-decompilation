func void ZS_FLEETOWP_NOMONSTERS() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    B_SAY_OVERLAY(SELF, OTHER, "$RUNAWAY");
    AI_SETWALKMODE(SELF, NPC_RUN);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSFLEEMDS);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
}

func int ZS_FLEETOWP_NOMONSTERS_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        RANDOM = HLP_RANDOM(2);
        if ((RANDOM) == (0)) {
            SELF;
            0;
            NPC_SETSTATETIME(0, 0);
            LOOP_CONTINUE;
            return 0 /* !broken stack! */;
        } else {
            NPC_SETSTATETIME(SELF, 0);
            return LOOP_CONTINUE;
        };
        return 0 /* !broken stack! */;
    };
    return LOOP_CONTINUE;
}

var int ZS_FLEETOWP_NOMONSTERS_LOOP.RANDOM = 0;
func int ZS_FLEETOWP_NOMONSTERS_END() {
    return 0 /* !broken stack! */;
}

func void ZS_FLEETOWP_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_11288_GAMEMASTER))) {
        B_SAY_OVERLAY(SELF, OTHER, "$GAMEMASTER_BYEIDIOT");
    };
    if (((((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(PIR_1313_GETTER))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(PIR_1326_DAN)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(PIR_6322_GHOST)))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(BDT_11096_THIEF)))) {
        B_SAY_OVERLAY(SELF, OTHER, "$RUNAWAY");
    };
    AI_SETWALKMODE(SELF, NPC_RUN);
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_1004_HUUG))) && ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_11288_GAMEMASTER)))) {
        MDL_APPLYOVERLAYMDS(SELF, HUMANSSPRINTMDS);
    };
    MDL_APPLYOVERLAYMDS(SELF, HUMANSFLEEMDS);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    AI_ALIGNTOWP(SELF);
}

func int ZS_FLEETOWP_NOIQ_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        RANDOM = HLP_RANDOM(2);
        if ((RANDOM) == (0)) {
            SELF;
            0;
            NPC_SETSTATETIME(0, 0);
            LOOP_CONTINUE;
            return 0 /* !broken stack! */;
        } else {
            NPC_SETSTATETIME(SELF, 0);
            return LOOP_CONTINUE;
        };
        return 0 /* !broken stack! */;
    };
    return LOOP_CONTINUE;
}

var int ZS_FLEETOWP_NOIQ_LOOP.RANDOM = 0;
func int ZS_FLEETOWP_NOIQ_END() {
    return 0 /* !broken stack! */;
}

