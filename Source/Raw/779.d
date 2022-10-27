func void ZS_STAND_CROSSBOWGUARD_NOIQ() {
    PERCEPTION_SET_NONE();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, "HUMANS_CROSSBOW_DIALOGUE.mds");
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_STAND_CROSSBOWGUARD_NOIQ_LOOP() {
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
        if (!(NPC_HASEQUIPPEDRANGEDWEAPON(SELF))) {
            if (((NPC_HASITEMS(SELF, 0x8a97)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8a96)) >= (1))) {
                CREATEINVITEMS(SELF, 0x9b1e, 1);
            } else if ((((NPC_HASITEMS(SELF, 0x8ac0)) >= (1)) || ((NPC_HASITEMS(SELF, 0x8ab8)) >= (1))) || ((NPC_HASITEMS(SELF, 0x8abe)) >= (1))) {
                CREATEINVITEMS(SELF, 0x8652, 1);
            } else {
                CREATEINVITEMS(SELF, 0x8652, 1);
            } else {
                AI_EQUIPBESTRANGEDWEAPON(SELF);
            };
        };
        WPN = NPC_GETEQUIPPEDRANGEDWEAPON(SELF);
        if ((NPC_HASITEMS(SELF, 0x8650)) == (0)) {
            CREATEINVITEMS(SELF, 0x8650, 10);
        };
        if (NPC_HASEQUIPPEDRANGEDWEAPON(SELF)) {
            AI_READYRANGEDWEAPON(SELF);
        };
        AI_TURNTONPC(SELF, HERO);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

instance ZS_STAND_CROSSBOWGUARD_NOIQ_LOOP.WPN(C_ITEM)
func void ZS_STAND_CROSSBOWGUARD_NOIQ_END() {
    MDL_REMOVEOVERLAYMDS(SELF, "HUMANS_CROSSBOW_DIALOGUE.mds");
    AI_REMOVEWEAPON(SELF);
}

