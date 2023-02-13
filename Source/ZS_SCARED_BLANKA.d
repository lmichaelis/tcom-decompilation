func void ZS_SCARED_BLANKA() {
    PERCEPTION_SET_ONLYDIALOGUE();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
        SELF.AIVAR[19] = NOTINPOS;
    };
}

func int ZS_SCARED_BLANKA_LOOP() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_STANDUP(SELF);
        AI_TURNTONPC(SELF, HERO);
        AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SCARED_BLANKA_END() {
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
}

