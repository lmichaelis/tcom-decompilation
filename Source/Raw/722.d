func void ZS_SIT_CHAIR() {
    if (((NPC_HASITEMS(SELF, 0x9a58)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x9a58, NPC_HASITEMS(SELF, 0x9a58));
    };
    if (((NPC_HASITEMS(SELF, 0x8d1b)) >= (5)) && ((SELF.FLAGS) != (2))) {
        NPC_REMOVEINVITEMS(SELF, 0x8d1b, NPC_HASITEMS(SELF, 0x8d1b));
    };
    PERCEPTION_SET_CHAIR();
    B_RESETALL(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        AI_SETWALKMODE(SELF, NPC_WALK);
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
            AI_GOTOWP(SELF, SELF.WP);
        };
    };
}

func int ZS_SIT_CHAIR_LOOP() {
    if ((!(C_BODYSTATECONTAINS(SELF, BS_SIT))) && (WLD_ISMOBAVAILABLE(SELF, "CHAIR"))) {
        AI_USEMOB(SELF, "CHAIR", 1);
    };
    return LOOP_CONTINUE;
}

func void ZS_SIT_CHAIR_END() {
    AI_USEMOB(SELF, "CHAIR", -(1));
}

