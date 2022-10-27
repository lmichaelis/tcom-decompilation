func int B_ASSESSENEMY() {
    PCL = HLP_GETNPC(0xeb63);
    if ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PCL))) {
        return FALSE;
    };
    if (((((HLP_GETINSTANCEID(OTHER)) != (HLP_GETINSTANCEID(HERO))) && ((OTHER.GUILD) < (GIL_SEPERATOR_HUM))) && (((SELF.AIVAR[71]) == (TRUE)) || ((OTHER.AIVAR[71]) == (TRUE)))) || (((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) && ((OTHER.AIVAR[71]) == (TRUE)))) {
        return FALSE;
    };
    if (((C_BODYSTATECONTAINS(OTHER, BS_SWIM)) || (C_BODYSTATECONTAINS(OTHER, BS_DIVE))) && ((SELF.AIVAR[28]) == (FALSE))) {
        return FALSE;
    };
    if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) {
        return FALSE;
    };
    if ((SELF.AIVAR[15]) == (TRUE)) {
        if ((Q602_PARTYMEMBERSEEENEMY) == (FALSE)) {
            if ((NPC_GETDISTTONPC(SELF, OTHER)) > (0x5dc)) {
                return FALSE;
            };
            if (!(NPC_CANSEENPC(SELF, OTHER))) {
                return FALSE;
            };
        };
    };
    if ((((SELF.AIVAR[15]) == (TRUE)) && ((OTHER.GUILD) > (GIL_SEPERATOR_HUM))) && ((OTHER.AIVAR[15]) == (TRUE))) {
        return FALSE;
    };
    if (((OTHER.GUILD) == (GIL_MEATBUG)) && ((SELF.GUILD) == (GIL_BDT))) {
        return FALSE;
    };
    if ((((SELF.AIVAR[61]) == (TRUE)) || ((OTHER.AIVAR[61]) == (TRUE))) && ((OTHER.GUILD) < (GIL_SEPERATOR_HUM))) {
        return FALSE;
    };
    if ((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_HOSTILE)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return FALSE;
    };
    if ((NPC_ISPLAYER(OTHER)) && ((SELF.NPCTYPE) == (NPCTYPE_FRIEND))) {
        return FALSE;
    };
    if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) != (ATT_HOSTILE)) {
        if ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE)) {
            if ((SELF.AIVAR[99]) > (0)) {
                B_ATTACK(SELF, OTHER, (SELF.AIVAR[99]) - (1), 0);
                SELF.AIVAR[99] = 0;
                return TRUE;
            };
            if ((((NPC_GETSTATETIME(SELF)) > (2)) || (NPC_ISINSTATE(SELF, 0xf08e))) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (PERC_DIST_INTERMEDIAT))) {
                B_ATTACK(SELF, OTHER, SELF.AIVAR[47], 0);
                return TRUE;
            };
        } else {
            return FALSE;
        };
    };
    B_ATTACK(SELF, OTHER, AR_GUILDENEMY, 0);
    return TRUE;
}

instance B_ASSESSENEMY.PCL(C_NPC)
