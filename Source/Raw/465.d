func void B_ASSESSPLAYER() {
    PCL = HLP_GETNPC(0xeb63);
    if ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PCL))) {
        return;
    };
    if ((OTHER.AIVAR[4]) == (TRUE)) {
        return;
    };
    if (C_NPCISDOWN(OTHER)) {
        return;
    };
    if ((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) {
        if (C_NPCISGATEGUARD(SELF)) {
            AI_STANDUPQUICK(SELF);
            B_ATTACK(SELF, OTHER, AR_MONSTERCLOSETOGATE, 0);
            return;
        };
        if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_HOSTILE)) {
            if (((SELF.AIVAR[15]) == (FALSE)) && ((SELF.NPCTYPE) != (NPCTYPE_FRIEND))) {
                B_ATTACK(SELF, OTHER, AR_GUILDENEMY, 0);
                return;
            };
        };
    };
    if ((SELF.GUILD) == (GIL_DMT)) {
        B_ATTACK(SELF, OTHER, AR_GUILDENEMY, 0);
    };
    if (B_ASSESSENEMY()) {
        return;
    };
    if ((((B_GETPLAYERCRIME(SELF)) == (CRIME_MURDER)) && (C_WANTTOATTACKMURDER(SELF, OTHER))) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (PERC_DIST_INTERMEDIAT))) {
        B_ATTACK(SELF, OTHER, AR_HUMANMURDEREDHUMAN, 0);
        return;
    };
    if (B_ASSESSENTERROOM()) {
        return;
    };
    if (B_ASSESSDRAWWEAPON()) {
        return;
    };
    PLAYER_DRAWWEAPONCOMMENT = FALSE;
    if (C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) {
        if ((!(NPC_ISINSTATE(SELF, 0xf08e))) && (C_WANTTOREACTTOSNEAKER(SELF, OTHER))) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 0xf08e, 1, "");
            return;
        };
    };
    if (!(C_BODYSTATECONTAINS(OTHER, BS_STAND))) {
        PLAYER_SNEAKERCOMMENT = FALSE;
    };
    if (!(C_BODYSTATECONTAINS(OTHER, BS_LIE))) {
        PLAYER_GETOUTOFMYBEDCOMMENT = FALSE;
    };
    B_ASSIGNAMBIENTINFOS(SELF, TRUE);
    if (((NPC_GETDISTTONPC(SELF, OTHER)) <= (PERC_DIST_DIALOG)) && (NPC_CHECKINFO(SELF, 1))) {
        if (C_NPCISGATEGUARD(SELF)) {
            SELF.AIVAR[3] = TRUE;
            B_ASSESSTALK();
            return;
        };
        if (((((!(C_BODYSTATECONTAINS(OTHER, BS_FALL))) && (!(C_BODYSTATECONTAINS(OTHER, BS_SWIM)))) && (!(C_BODYSTATECONTAINS(OTHER, BS_DIVE)))) && ((B_GETPLAYERCRIME(SELF)) == (CRIME_NONE))) && ((C_REFUSETALK(SELF, OTHER)) == (FALSE))) {
            SELF.AIVAR[3] = TRUE;
            B_ASSESSTALK();
            return;
        };
    };
    if (((((C_BODYSTATECONTAINS(SELF, BS_WALK)) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (PERC_DIST_DIALOG))) && ((NPC_REFUSETALK(OTHER)) == (FALSE))) && (!(C_NPCISGATEGUARD(SELF)))) && (!(ISINCAMERA))) {
        B_LOOKATNPC(SELF, OTHER);
        B_SAY_GUILDGREETINGS(SELF, OTHER);
        B_STOPLOOKAT(SELF);
        NPC_SETREFUSETALK(OTHER, 20);
    };
    if ((C_NPCISGATEGUARD(SELF)) && ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_DIALOG))) {
        SELF.AIVAR[12] = GP_NONE;
    };
}

instance B_ASSESSPLAYER.PCL(C_NPC)
