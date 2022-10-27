func void ZS_STAND_EATING() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    SELF.AIVAR[19] = NOTINPOS;
    RANDOM = HLP_RANDOM(5);
    if ((RANDOM) == (0)) {
        if ((NPC_HASITEMS(SELF, 0x8e3f)) == (0)) {
            CREATEINVITEM(SELF, 0x8e3f);
        };
        SELF.AIVAR[18] = FOOD_BACON;
    };
    if ((RANDOM) == (1)) {
        if ((NPC_HASITEMS(SELF, 0x84ba)) == (0)) {
            CREATEINVITEM(SELF, 0x84ba);
        };
        SELF.AIVAR[18] = FOOD_BREAD;
    };
    if ((RANDOM) == (2)) {
        if ((NPC_HASITEMS(SELF, 0x84ac)) == (0)) {
            CREATEINVITEM(SELF, 0x84ac);
        };
        SELF.AIVAR[18] = FOOD_APPLE;
    };
    if ((RANDOM) == (3)) {
        if ((NPC_HASITEMS(SELF, 0x84ae)) == (0)) {
            CREATEINVITEM(SELF, 0x84ae);
        };
        SELF.AIVAR[18] = FOOD_CHEESE;
    };
    if ((RANDOM) == (4)) {
        if ((NPC_HASITEMS(SELF, 0x8e01)) == (0)) {
            CREATEINVITEM(SELF, 0x8e01);
        };
        SELF.AIVAR[18] = FOOD_SOUP;
    };
}

var int ZS_STAND_EATING.RANDOM = 0;
func int ZS_STAND_EATING_LOOP() {
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
            AI_USEITEMTOSTATE(SELF, 0x84ae, 0);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((SELF.AIVAR[18]) == (FOOD_BACON)) {
            AI_USEITEMTOSTATE(SELF, 0x8e3f, 0);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((SELF.AIVAR[18]) == (FOOD_BREAD)) {
            AI_USEITEMTOSTATE(SELF, 0x84ba, 0);
            SELF.AIVAR[19] = ISINPOS;
        } else if ((SELF.AIVAR[18]) == (FOOD_SOUP)) {
            AI_USEITEMTOSTATE(SELF, 0x8e01, 0);
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        if ((SELF.AIVAR[18]) == (FOOD_APPLE)) {
            AI_PLAYANIBS(SELF, "T_FOOD_RANDOM_1", BS_ITEMINTERACT);
        } else if ((SELF.AIVAR[18]) == (FOOD_BACON)) {
            AI_PLAYANIBS(SELF, "T_MEAT_RANDOM_1", BS_ITEMINTERACT);
        } else if ((SELF.AIVAR[18]) == (FOOD_SOUP)) {
            AI_PLAYANIBS(SELF, "T_RICE_RANDOM_1", BS_ITEMINTERACT);
        } else {
            AI_PLAYANIBS(SELF, "T_FOODHUGE_RANDOM_1", BS_ITEMINTERACT);
        } else {
            NPC_SETSTATETIME(SELF, 0);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_EATING_END() {
    AI_PLAYANIBS(SELF, "T_POTION_RANDOM_2", BS_ITEMINTERACT);
    if ((SELF.AIVAR[18]) == (FOOD_APPLE)) {
        AI_USEITEMTOSTATE(SELF, 0x84ac, -(1));
    };
    if ((SELF.AIVAR[18]) == (FOOD_CHEESE)) {
        AI_USEITEMTOSTATE(SELF, 0x84ae, -(1));
    };
    if ((SELF.AIVAR[18]) == (FOOD_BACON)) {
        AI_USEITEMTOSTATE(SELF, 0x8e3f, -(1));
    };
    if ((SELF.AIVAR[18]) == (FOOD_BREAD)) {
        AI_USEITEMTOSTATE(SELF, 0x84ba, -(1));
    };
    if ((SELF.AIVAR[18]) == (FOOD_SOUP)) {
        AI_USEITEMTOSTATE(SELF, 0x8e01, -(1));
    };
}

