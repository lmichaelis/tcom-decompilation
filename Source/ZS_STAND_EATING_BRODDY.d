func void ZS_STAND_EATING_BRODDY() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSSPRINTMDS);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_STANDUP(SELF);
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
    SELF.AIVAR[19] = NOTINPOS;
    if ((NPC_HASITEMS(SELF, 36682)) == (0)) {
        CREATEINVITEM(SELF, 36682);
    };
}

func int ZS_STAND_EATING_BRODDY_LOOP() {
    if (((SELF.AIVAR[19]) == (ISINPOS)) == (FALSE)) {
        AI_USEITEMTOSTATE(SELF, 36682, 0);
        AI_PLAYANIBS(SELF, "T_RICE_RANDOM_1", BS_ITEMINTERACT);
        SELF.AIVAR[19] = ISINPOS;
    };
    if (((NPC_GETSTATETIME(SELF)) > (5)) && ((SELF.AIVAR[19]) == (ISINPOS))) {
        AI_PLAYANIBS(SELF, "T_RICE_RANDOM_1", BS_ITEMINTERACT);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_STAND_EATING_BRODDY_END() {
    AI_PLAYANIBS(SELF, "T_POTION_RANDOM_2", BS_ITEMINTERACT);
    AI_USEITEMTOSTATE(SELF, 36682, -(1));
}

