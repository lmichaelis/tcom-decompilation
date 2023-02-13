func void ZS_CROSSBOWTRAINING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, "HUMANS_CROSSBOW_DIALOGUE.mds");
    CREATEINVITEMS(SELF, 34384, 2);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_CROSSBOWTRAINING_LOOP() {
    var int RANDOM;
    if (NPC_ISONFP(SELF, "CROSSBOW")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "CROSSBOW")) {
        AI_GOTOFP(SELF, "CROSSBOW");
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
            if ((((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_4040_RECRUIT))) || ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_4041_RECRUIT)))) || ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_4042_RECRUIT)))) {
                CREATEINVITEMS(SELF, 39718, 1);
            } else {
                CREATEINVITEMS(SELF, 34420, 1);
            };
            AI_EQUIPBESTRANGEDWEAPON(SELF);
        };
        AI_SETWALKMODE(SELF, NPC_RUN);
        AI_READYRANGEDWEAPON(SELF);
        SELF.AIVAR[19] = ISINPOS;
    };
    if ((NPC_GETSTATETIME(SELF)) > (3)) {
        RANDOM = HLP_RANDOM(4);
        if ((RANDOM) == (0)) {
            AI_PLAYANI(SELF, "T_CROSSBOW_SHOOT");
        };
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_CROSSBOWTRAINING_END() {
    AI_REMOVEWEAPON(SELF);
}

