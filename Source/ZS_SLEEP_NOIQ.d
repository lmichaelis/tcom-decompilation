func void ZS_SLEEP_NOIQ() {
    NPC_PERCENABLE(SELF, PERC_MOVEMOB, 41654);
    SELF.SENSES = (SENSE_HEAR) | (SENSE_SEE);
    SELF.SENSES_RANGE = 1;
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
}

func int ZS_SLEEP_NOIQ_LOOP() {
    if (!(C_BODYSTATECONTAINS(SELF, BS_LIE))) {
        if (WLD_ISMOBAVAILABLE(SELF, "BEDLOW")) {
        } else if (WLD_ISMOBAVAILABLE(SELF, "BED")) {
        } else if (WLD_ISMOBAVAILABLE(SELF, "BEDHIGH")) {
        } else if (WLD_ISMOBAVAILABLE(SELF, "HAMMOCK")) {
            AI_USEMOB(SELF, "HAMMOCK", 1);
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SLEEP_NOIQ_END() {
    AI_USEMOB(SELF, "HAMMOCK", -(1));
}

