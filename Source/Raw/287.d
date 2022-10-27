func void B_SAY_ATTACKEND() {
    if ((OTHER.GUILD) == (GIL_MEATBUG)) {
        return;
    };
    if (((SELF.AIVAR[9]) == (AR_GUILDENEMY)) || ((SELF.AIVAR[9]) == (AR_MONSTERMURDEREDHUMAN))) {
        if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
            if (!(NPC_ISDEAD(OTHER))) {
                if ((SELF.AIVAR[7]) == (HLP_GETINSTANCEID(OTHER))) {
                    B_SAY(SELF, OTHER, "$KILLENEMY");
                } else {
                    B_SAY(SELF, OTHER, "$GOODKILL");
                } else {
                    /* set_instance(0) */;
                };
            };
            B_SAY(SELF, OTHER, "$ENEMYKILLED");
        } else if ((HLP_RANDOM(100)) > (50)) {
            return;
        };
        if ((OTHER.AIVAR[67]) == (FALSE)) {
            B_SAY(SELF, OTHER, "$MONSTERKILLED");
        } else {
            B_SAY(SELF, OTHER, "$GOODMONSTERKILL");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((SELF.AIVAR[9]) == (AR_THEFT)) {
        B_SAY(SELF, OTHER, "$THIEFDOWN");
    };
    if ((SELF.AIVAR[9]) == (AR_USEMOB)) {
        B_SAY(SELF, OTHER, "$RUMFUMMLERDOWN");
    };
    if ((SELF.AIVAR[9]) == (AR_SHEEPKILLER)) {
        if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
            B_SAY(SELF, OTHER, "$SHEEPATTACKERDOWN");
        } else {
            B_SAY(SELF, OTHER, "$MONSTERKILLED");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((SELF.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN)) {
        if (!(NPC_ISDEAD(OTHER))) {
            if ((SELF.AIVAR[7]) == (HLP_GETINSTANCEID(OTHER))) {
                B_SAY(SELF, OTHER, "$KILLMURDERER");
            } else {
                B_SAY(SELF, OTHER, "$GOODKILL");
            } else {
                /* set_instance(0) */;
            };
        };
        B_SAY(SELF, OTHER, "$ENEMYKILLED");
    };
    if ((SELF.AIVAR[9]) == (AR_MONSTERVSHUMAN)) {
        B_SAY(SELF, OTHER, "$MONSTERKILLED");
    };
    if ((SELF.AIVAR[9]) == (AR_MONSTERCLOSETOGATE)) {
        B_SAY(SELF, OTHER, "$STUPIDBEASTKILLED");
    };
    if ((SELF.AIVAR[9]) == (AR_REACTTODAMAGE)) {
        B_SAY(SELF, OTHER, "$NEVERHITMEAGAIN");
    };
    if ((SELF.AIVAR[9]) == (AR_REACTTOWEAPON)) {
        B_SAY(SELF, OTHER, "$YOUBETTERSHOULDHAVELISTENED");
    };
    if (((SELF.AIVAR[9]) == (AR_CLEARROOM)) || ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOROOM))) {
        if (C_NPCISBOTHEREDBYPLAYERROOMGUILD(SELF)) {
            B_SAY(SELF, OTHER, "$GETUPANDBEGONE");
        } else {
            B_SAY(SELF, OTHER, "$NEVERENTERROOMAGAIN");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((SELF.AIVAR[9]) == (AR_LEFTPORTALROOM)) {
        B_SAY(SELF, OTHER, "$NEVERENTERROOMAGAIN");
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER)) {
        B_SAY(SELF, OTHER, "$KILLENEMY");
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDSTOPSFIGHT)) {
        B_SAY(SELF, OTHER, "$THEREISNOFIGHTINGHERE");
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOTHIEF)) {
        B_SAY(SELF, OTHER, "$RUMFUMMLERDOWN");
    };
}

