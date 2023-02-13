func void B_ASSESSMURDER() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(OTHER))) {
        return;
    };
    if (((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT)) && ((NPC_GETDISTTONPC(SELF, VICTIM)) > (PERC_DIST_INTERMEDIAT))) {
        return;
    };
    if (((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) && ((NPC_GETHEIGHTTONPC(SELF, VICTIM)) > (PERC_DIST_HEIGHT))) {
        return;
    };
    if ((!(NPC_CANSEENPCFREELOS(SELF, OTHER))) && (!(NPC_CANSEENPCFREELOS(SELF, VICTIM)))) {
        return;
    };
    if (B_ASSESSENEMY()) {
        return;
    };
    if (((VICTIM.GUILD) == (GIL_NONE)) && ((SELF.GUILD) != (GIL_NONE))) {
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
        };
    };
    if (((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) && ((VICTIM.GUILD) > (GIL_SEPERATOR_HUM))) {
        return;
    };
    if ((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) {
        B_ATTACK(SELF, OTHER, AR_MONSTERMURDEREDHUMAN, 0);
        return;
    };
    if ((VICTIM.GUILD) > (GIL_SEPERATOR_HUM)) {
        return;
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
    if ((((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_HOSTILE)) || ((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_ANGRY))) && (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) || ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_NEUTRAL)))) {
        return;
    };
    if ((NPC_ISPLAYER(OTHER)) && ((SELF.NPCTYPE) == (NPCTYPE_FRIEND))) {
        return;
    };
    if (!(C_WANTTOATTACKMURDER(SELF, OTHER))) {
        if (C_NPCISGATEGUARD(SELF)) {
            B_MEMORIZEPLAYERCRIME(SELF, OTHER, CRIME_MURDER);
        };
        return;
    };
    if (((OTHER.AIVAR[52]) == (TRUE)) || ((VICTIM.AIVAR[52]) == (TRUE))) {
        return;
    };
    if (((VICTIM.GUILD) == (GIL_DMT)) || ((VICTIM.GUILD) == (GIL_BDT))) {
        return;
    };
    B_ATTACK(SELF, OTHER, AR_HUMANMURDEREDHUMAN, 0);
}

