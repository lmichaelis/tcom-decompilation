func void B_MM_ASSESSENEMY() {
    var C_NPC PCL;
    if ((SELF.GUILD) == (GIL_DRAGON)) {
        return;
    };
    if (((SELF.AIVAR[71]) == (TRUE)) || ((OTHER.AIVAR[71]) == (TRUE))) {
        return;
    };
    if (((SELF.AIVAR[61]) == (TRUE)) && ((OTHER.GUILD) < (GIL_SEPERATOR_HUM))) {
        return;
    };
    PCL = HLP_GETNPC(60259);
    if ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PCL))) {
        return;
    };
    if ((OTHER.AIVAR[4]) == (TRUE)) {
        return;
    };
    if (((C_BODYSTATECONTAINS(OTHER, BS_SWIM)) || (C_BODYSTATECONTAINS(OTHER, BS_DIVE))) && ((SELF.AIVAR[28]) == (FALSE))) {
        return;
    };
    if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) {
        return;
    };
    if ((NPC_ISPLAYER(OTHER)) && ((OTHER.GUILD) > (GIL_SEPERATOR_HUM))) {
        if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) != (ATT_HOSTILE)) {
            return;
        };
    };
    if ((SELF.SENSES_RANGE) > (PERC_DIST_MONSTER_ACTIVE_MAX)) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_MONSTER_ACTIVE_MAX)) {
            if (!(NPC_CANSEENPC(SELF, OTHER))) {
                return;
            };
        };
    };
    if (((SELF.GUILD) == (GIL_ORC)) || ((SELF.GUILD) == (GIL_FRIENDLY_ORC))) {
        if ((C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) || (C_BODYSTATECONTAINS(OTHER, BS_STAND))) {
            if (!(NPC_CANSEENPC(SELF, OTHER))) {
                return;
            };
        };
    };
    if (!(NPC_CANSEENPCFREELOS(SELF, OTHER))) {
        return;
    };
    if ((SELF.AIVAR[15]) == (TRUE)) {
        if (((OTHER.NPCTYPE) == (NPCTYPE_FRIEND)) || ((OTHER.AIVAR[15]) == (TRUE))) {
            return;
        };
        NPC_CLEARAIQUEUE(SELF);
        NPC_SETTARGET(SELF, OTHER);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 91674, 0, "");
        return;
    };
    if ((SELF.AIVAR[26]) == (FALSE)) {
        NPC_CLEARAIQUEUE(SELF);
        NPC_SETTARGET(SELF, OTHER);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 91674, 0, "");
        return;
    };
    if (NPC_ISINSTATE(SELF, 91677)) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (FIGHT_DIST_MONSTER_ATTACKRANGE)) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, OTHER);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 91674, 0, "");
            return;
        };
        return;
    };
    if (NPC_ISINSTATE(SELF, 91683)) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (FIGHT_DIST_MONSTER_ATTACKRANGE)) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, OTHER);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 91674, 0, "");
            return;
        };
        return;
    };
    if (C_PREDATORFOUNDPREY(SELF, OTHER)) {
        NPC_CLEARAIQUEUE(SELF);
        NPC_SETTARGET(SELF, OTHER);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 91683, 0, "");
        return;
    };
    if (C_PREDATORFOUNDPREY(OTHER, SELF)) {
        if ((!(NPC_ISINSTATE(OTHER, 91683))) && ((NPC_GETDISTTONPC(SELF, OTHER)) <= (FIGHT_DIST_MONSTER_FLEE))) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, OTHER);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 91680, 0, "");
            return;
        };
        return;
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 91686, 0, "");
}

