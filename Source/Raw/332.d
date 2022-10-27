func void B_ASSESSFIGHTSOUND() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    if (!(HLP_ISVALIDNPC(VICTIM))) {
        return;
    };
    if ((((SELF.AIVAR[15]) == (TRUE)) && ((OTHER.AIVAR[15]) == (TRUE))) || (((SELF.AIVAR[15]) == (TRUE)) && ((VICTIM.AIVAR[15]) == (TRUE)))) {
        return;
    };
    if ((VICTIM.AIVAR[94]) == (TRUE)) {
        return;
    };
    if (((NPC_GETDISTTONPC(SELF, VICTIM)) > (PERC_DIST_INTERMEDIAT)) && ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT))) {
        return;
    };
    if ((SELF.AIVAR[28]) == (FALSE)) {
        if ((((C_BODYSTATECONTAINS(OTHER, BS_SWIM)) || (C_BODYSTATECONTAINS(OTHER, BS_DIVE))) || (C_BODYSTATECONTAINS(VICTIM, BS_SWIM))) || (C_BODYSTATECONTAINS(VICTIM, BS_DIVE))) {
            return;
        };
    };
    if (((OTHER.FIGHT_TACTIC) == (FAI_NAILED)) || ((VICTIM.FIGHT_TACTIC) == (FAI_NAILED))) {
        return;
    };
    if (((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) && ((NPC_GETHEIGHTTONPC(SELF, VICTIM)) > (PERC_DIST_HEIGHT))) {
        return;
    };
    if (((HLP_GETINSTANCEID(VICTIM)) == (HLP_GETINSTANCEID(SELF))) || ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(SELF)))) {
        return;
    };
    if ((VICTIM.GUILD) == (GIL_MEATBUG)) {
        return;
    };
    if (((VICTIM.GUILD) == (GIL_SHEEP)) && ((VICTIM.AIVAR[57]) == (FALSE))) {
        if (C_ISRATNOREACTION(VICTIM)) {
            return;
        };
        if (C_WANTTOATTACKSHEEPKILLER(SELF, OTHER)) {
            B_ATTACK(SELF, OTHER, AR_SHEEPKILLER, 0);
            return;
        };
        if (C_NPCISGATEGUARD(SELF)) {
            B_MEMORIZEPLAYERCRIME(SELF, OTHER, CRIME_SHEEPKILLER);
            return;
        };
        return;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return;
    };
    if (((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) && ((VICTIM.GUILD) > (GIL_SEPERATOR_HUM))) {
        return;
    };
    if (((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) && ((NPC_GETATTITUDE(SELF, VICTIM)) != (ATT_HOSTILE))) {
        if ((NPC_GETATTITUDE(OTHER, SELF)) == (ATT_FRIENDLY)) {
            B_ATTACK(SELF, VICTIM, AR_GUILDENEMY, 0);
        } else {
            B_ATTACK(SELF, OTHER, AR_MONSTERVSHUMAN, 0);
        } else {
            return;
        };
    };
    if ((((VICTIM.GUILD) > (GIL_SEPERATOR_HUM)) && ((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_HOSTILE))) && (!(NPC_ISDEAD(VICTIM)))) {
        if ((NPC_GETATTITUDE(VICTIM, SELF)) == (ATT_FRIENDLY)) {
            B_ATTACK(SELF, OTHER, AR_GUILDENEMY, 0);
        } else {
            B_ATTACK(SELF, VICTIM, AR_MONSTERVSHUMAN, 0);
        } else {
            return;
        };
    };
    if ((SELF.AIVAR[61]) == (TRUE)) {
        SELF.AIVAR[61] = FALSE;
        NPC_PERCEIVEALL(SELF);
        if ((HLP_ISVALIDNPC(OTHER)) && (!(C_NPCISDOWN(OTHER)))) {
            B_ATTACK(SELF, OTHER, AR_GUILDENEMY, 0);
            return;
        };
        NPC_GETNEXTTARGET(SELF);
        return;
    };
    if (((((((OTHER.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER)) || ((OTHER.AIVAR[9]) == (AR_MONSTERCLOSETOGATE))) || ((OTHER.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN))) || ((OTHER.AIVAR[9]) == (AR_GUILDENEMY))) || ((OTHER.AIVAR[9]) == (AR_GUARDCALLEDTOKILL))) && ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY))) {
        B_ATTACK(SELF, VICTIM, AR_GUARDCALLEDTOKILL, 0);
        return;
    };
    if (((((((VICTIM.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER)) || ((VICTIM.AIVAR[9]) == (AR_MONSTERCLOSETOGATE))) || ((VICTIM.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN))) || ((VICTIM.AIVAR[9]) == (AR_GUILDENEMY))) || ((VICTIM.AIVAR[9]) == (AR_GUARDCALLEDTOKILL))) && ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY))) {
        B_ATTACK(SELF, OTHER, AR_GUARDCALLEDTOKILL, 0);
        return;
    };
    if (((((OTHER.AIVAR[9]) == (AR_GUARDSTOPSFIGHT)) || ((OTHER.AIVAR[9]) == (AR_REACTTODAMAGE))) || ((OTHER.AIVAR[9]) == (AR_REACTTOWEAPON))) && ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY))) {
        if (((((OTHER.GUILD) == (GIL_SLD)) || ((OTHER.GUILD) == (GIL_DJG))) || ((OTHER.GUILD) == (GIL_NONE))) && ((((VICTIM.GUILD) == (GIL_SLD)) || ((VICTIM.GUILD) == (GIL_DJG))) || ((VICTIM.GUILD) == (GIL_NONE)))) {
        } else if ((!(NPC_ISPLAYER(OTHER))) && (!(NPC_ISPLAYER(VICTIM)))) {
        } else {
            B_ATTACK(SELF, VICTIM, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
    };
    if (((((VICTIM.AIVAR[9]) == (AR_GUARDSTOPSFIGHT)) || ((VICTIM.AIVAR[9]) == (AR_REACTTODAMAGE))) || ((VICTIM.AIVAR[9]) == (AR_REACTTOWEAPON))) && ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY))) {
        if (((((OTHER.GUILD) == (GIL_SLD)) || ((OTHER.GUILD) == (GIL_DJG))) || ((OTHER.GUILD) == (GIL_NONE))) && ((((VICTIM.GUILD) == (GIL_SLD)) || ((VICTIM.GUILD) == (GIL_DJG))) || ((VICTIM.GUILD) == (GIL_NONE)))) {
        } else if ((!(NPC_ISPLAYER(OTHER))) && (!(NPC_ISPLAYER(VICTIM)))) {
        } else {
            B_ATTACK(SELF, OTHER, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
    };
    if (((((OTHER.AIVAR[9]) == (AR_NONE)) || ((OTHER.AIVAR[9]) == (AR_KILL))) && (((VICTIM.AIVAR[9]) == (AR_NONE)) || ((VICTIM.AIVAR[9]) == (AR_KILL)))) && ((SELF.GUILD) == (GIL_MIL))) {
        if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) && ((NPC_GETATTITUDE(SELF, VICTIM)) != (ATT_FRIENDLY))) {
            B_ATTACK(SELF, VICTIM, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
        if (((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY)) && ((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_FRIENDLY))) {
            B_ATTACK(SELF, OTHER, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
        if (NPC_ISPLAYER(OTHER)) {
            B_ATTACK(SELF, VICTIM, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
        if (NPC_ISPLAYER(VICTIM)) {
            B_ATTACK(SELF, OTHER, AR_GUARDSTOPSFIGHT, 0);
            return;
        };
        B_ATTACK(SELF, OTHER, AR_GUARDSTOPSFIGHT, 0);
        return;
    };
    if (((((OTHER.AIVAR[9]) == (AR_USEMOB)) || ((OTHER.AIVAR[9]) == (AR_THEFT))) || ((OTHER.AIVAR[9]) == (AR_LEFTPORTALROOM))) && ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY))) {
        if (C_WANTTOATTACKTHIEF(SELF, VICTIM)) {
            B_ATTACK(SELF, VICTIM, AR_GUARDCALLEDTOTHIEF, 0);
        };
        return;
    };
    if (((((VICTIM.AIVAR[9]) == (AR_USEMOB)) || ((VICTIM.AIVAR[9]) == (AR_THEFT))) || ((VICTIM.AIVAR[9]) == (AR_LEFTPORTALROOM))) && ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY))) {
        if (C_WANTTOATTACKTHIEF(SELF, OTHER)) {
            B_ATTACK(SELF, OTHER, AR_GUARDCALLEDTOTHIEF, 0);
        };
        return;
    };
    if (((OTHER.AIVAR[9]) == (AR_CLEARROOM)) && ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY))) {
        B_ATTACK(SELF, VICTIM, AR_GUARDCALLEDTOROOM, 0);
        return;
    };
    if (((VICTIM.AIVAR[9]) == (AR_CLEARROOM)) && ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY))) {
        B_ATTACK(SELF, OTHER, AR_GUARDCALLEDTOROOM, 0);
        return;
    };
    if (((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT)) && ((NPC_GETDISTTONPC(SELF, VICTIM)) > (PERC_DIST_INTERMEDIAT))) {
        return;
    };
    if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE)) || ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_HOSTILE))) {
        return;
    };
    if (!(NPC_CANSEENPCFREELOS(SELF, VICTIM))) {
        return;
    };
    if ((SELF.GUILD) != (GIL_BDT)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xf0ab, 0, "");
        return;
    };
}

