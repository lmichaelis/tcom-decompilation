func void ZS_STAND_GUARDING2() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_GUARDING2_LOOP() {
    if (NPC_ISONFP(SELF, "GUARD")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "GUARD")) {
        AI_GOTOFP(SELF, "GUARD");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if (!(NPC_HASEQUIPPEDMELEEWEAPON(SELF))) {
            CREATEINVITEMS(SELF, 0x9a8c, 1);
            AI_EQUIPBESTMELEEWEAPON(SELF);
        };
        WPN = NPC_GETEQUIPPEDMELEEWEAPON(SELF);
        AI_PLAYANI(SELF, "T_STAND_2_HGUARD");
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        RANDOM = HLP_RANDOM(10);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_HGUARD_SEARCH");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

instance ZS_STAND_GUARDING2_LOOP.WPN(C_ITEM)
var int ZS_STAND_GUARDING2_LOOP.RANDOM = 0;
func void ZS_STAND_GUARDING2_END() {
    AI_PLAYANI(SELF, "T_HGUARD_2_STAND");
}

