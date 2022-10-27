func void ZS_STAND_EATING_PICKAXE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
    RANDOM = HLP_RANDOM(2);
    if ((RANDOM) == (0)) {
        if ((NPC_HASITEMS(SELF, 0x84ac)) == (0)) {
            CREATEINVITEM(SELF, 0x84ac);
        };
        SELF.AIVAR[18] = FOOD_APPLE;
    };
    if ((RANDOM) == (1)) {
        if ((NPC_HASITEMS(SELF, 0x85f4)) == (0)) {
            CREATEINVITEM(SELF, 0x85f4);
        };
        SELF.AIVAR[18] = FOOD_CHEESE;
    };
}

var int ZS_STAND_EATING_PICKAXE.RANDOM = 0;
func int ZS_STAND_EATING_PICKAXE_LOOP() {
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
        if ((SELF.AIVAR[18]) == (FOOD_APPLE)) {
            AI_USEITEMTOSTATE(SELF, 0x84ac, 0);
            AI_PLAYANIBS(SELF, "T_FOOD_RANDOM_2", BS_ITEMINTERACT);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((SELF.AIVAR[18]) == (FOOD_CHEESE)) {
            AI_USEITEMTOSTATE(SELF, 0x85f4, 0);
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        if ((SELF.AIVAR[18]) == (FOOD_APPLE)) {
            AI_PLAYANIBS(SELF, "T_FOOD_RANDOM_1", BS_ITEMINTERACT);
        } else {
            AI_PLAYANIBS(SELF, "T_FOOD_RANDOM_1", BS_ITEMINTERACT);
        } else {
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_EATING_PICKAXE_END() {
    if ((SELF.AIVAR[18]) == (FOOD_APPLE)) {
        AI_USEITEMTOSTATE(SELF, 0x84ac, -(1));
    };
    if ((SELF.AIVAR[18]) == (FOOD_CHEESE)) {
        AI_USEITEMTOSTATE(SELF, 0x85f4, -(1));
    };
}

