func int C_WANTTOCALLGUARDS(var C_NPC SLF) {
    if ((SELF.AIVAR[15]) == (FALSE)) {
        if ((((((SLF.GUILD) == (GIL_PAL)) || ((SLF.GUILD) == (GIL_MIL))) || ((SLF.GUILD) == (GIL_VLK))) || ((SLF.GUILD) == (GIL_SLD))) || ((SLF.GUILD) == (GIL_BAU))) {
            return TRUE;
        };
    };
    return FALSE;
}

func void B_CALLGUARDS() {
    if (!(C_WANTTOCALLGUARDS(SELF))) {
        return;
    };
    if (((((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOKILL)) || ((SELF.AIVAR[9]) == (AR_GUARDSTOPSFIGHT))) || ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOTHIEF))) || ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOROOM))) {
        B_SAY_OVERLAY(SELF, OTHER, "$ALARM");
        return;
    };
    if (((SELF.AIVAR[9]) == (AR_GUILDENEMY)) || ((SELF.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN))) {
        if ((((SELF.GUILD) == (GIL_MIL)) || ((SELF.GUILD) == (GIL_PAL))) || ((SELF.GUILD) == (GIL_SLD))) {
            B_SAY_OVERLAY(SELF, OTHER, "$ALARM");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
            return;
        };
        if (!(C_NPCISTOUGHGUY(SELF))) {
            B_SAY_OVERLAY(SELF, OTHER, "$GUARDS");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
            return;
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER)) {
        B_SAY_OVERLAY(SELF, OTHER, "$ALARM");
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        return;
    };
    if (((SELF.AIVAR[9]) == (AR_THEFT)) || ((SELF.AIVAR[9]) == (AR_USEMOB))) {
        if (!(C_NPCISTOUGHGUY(SELF))) {
            B_SAY_OVERLAY(SELF, OTHER, "$GUARDS");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_REACTTOWEAPON)) {
        if (!(C_NPCISTOUGHGUY(SELF))) {
            B_SAY_OVERLAY(SELF, OTHER, "$GUARDS");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_CLEARROOM)) {
        if ((((SELF.GUILD) == (GIL_MIL)) || ((SELF.GUILD) == (GIL_PAL))) || ((SELF.GUILD) == (GIL_SLD))) {
            B_SAY_OVERLAY(SELF, OTHER, "$ALARM");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
            return;
        };
        if (!(C_NPCISTOUGHGUY(SELF))) {
            B_SAY_OVERLAY(SELF, OTHER, "$GUARDS");
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
            return;
        };
        return;
    };
}

