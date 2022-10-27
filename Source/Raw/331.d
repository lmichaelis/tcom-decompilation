func int B_ASSESSENTERROOM() {
    PORTALGUILD = WLD_GETPLAYERPORTALGUILD();
    if ((((NPC_ISPLAYER(OTHER)) && ((PLAYER_LEFTROOMCOMMENT) == (TRUE))) && ((PORTALGUILD) > (GIL_NONE))) && ((PORTALGUILD) != (GIL_PUBLIC))) {
        PLAYER_LEFTROOMCOMMENT = FALSE;
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (1000)) {
        return FALSE;
    };
    if ((!(NPC_ISINPLAYERSROOM(SELF))) && (!((NPC_GETPORTALGUILD(SELF)) < (GIL_NONE)))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf0af)) {
        return FALSE;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return FALSE;
    };
    if (!(NPC_ISPLAYER(OTHER))) {
        return FALSE;
    };
    if ((SELF.NPCTYPE) == (NPCTYPE_FRIEND)) {
        return FALSE;
    };
    if ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) {
        return FALSE;
    };
    if ((C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) || (C_BODYSTATECONTAINS(OTHER, BS_STAND))) {
        if ((!(NPC_CANSEENPC(SELF, OTHER))) && (!(NPC_ISINSTATE(SELF, 0xf08e)))) {
            return FALSE;
        };
    };
    if ((SELF.GUILD) == (GIL_NONE)) {
        return FALSE;
    };
    if ((!(NPC_ISINPLAYERSROOM(SELF))) && (NPC_ISINSTATE(SELF, 0xb654))) {
        return FALSE;
    };
    if (((PORTALGUILD) == (GIL_PUBLIC)) && (NPC_ISINPLAYERSROOM(SELF))) {
        if (NPC_ISINSTATE(SELF, 0xf08e)) {
            return FALSE;
        };
        if (C_BODYSTATECONTAINS(SELF, BS_LIE)) {
            B_MM_DESYNCHRONIZE();
        };
        if (((((((((((((((((NPC_ISINSTATE(SELF, 0xb4a9)) || (NPC_ISINSTATE(SELF, 0xb52e))) || (NPC_ISINSTATE(SELF, 0xb5c2))) || (NPC_ISINSTATE(SELF, 0xb5cd))) || (NPC_ISINSTATE(SELF, 0xb5dc))) || (NPC_ISINSTATE(SELF, 0xb5e4))) || (NPC_ISINSTATE(SELF, 0xb5df))) || (NPC_ISINSTATE(SELF, 0xb635))) || (NPC_ISINSTATE(SELF, 0xb654))) || (NPC_ISINSTATE(SELF, 0xb65f))) || (NPC_ISINSTATE(SELF, 0xb686))) || (NPC_ISINSTATE(SELF, 0xb6dc))) || (NPC_ISINSTATE(SELF, 0xb6f6))) || (NPC_ISINSTATE(SELF, 0xb709))) || (NPC_ISINSTATE(SELF, 0xb714))) || (NPC_ISINSTATE(SELF, 0xb72b))) || (NPC_ISINSTATE(SELF, 0xb764))) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
                AI_STARTSTATE(SELF, 0xf08e, 0, "");
            } else {
                AI_STARTSTATE(SELF, 0xf08e, 1, "");
            } else {
                return TRUE;
            } else {
                /* set_instance(0) */;
            };
        };
        return FALSE;
    };
    if (C_NPCISBOTHEREDBYPLAYERROOMGUILD(SELF)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xf081, 1, "");
        return TRUE;
    };
    return FALSE;
}

var int B_ASSESSENTERROOM.PORTALGUILD = 0;
func void B_ASSESSPORTALCOLLISION() {
    FORMERPORTALGUILD = WLD_GETFORMERPLAYERPORTALGUILD();
    if (B_ASSESSENTERROOM()) {
        return;
    };
    if ((!(NPC_CANSEENPC(SELF, OTHER))) && ((C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) || (C_BODYSTATECONTAINS(OTHER, BS_STAND)))) {
        return;
    };
    NPC_PERCEIVEALL(SELF);
    if (WLD_DETECTNPCEX(SELF, -(1), 0xf081, -(1), FALSE)) {
        return;
    };
    if (((SELF.GUILD) == (FORMERPORTALGUILD)) || ((WLD_GETGUILDATTITUDE(SELF.GUILD, FORMERPORTALGUILD)) == (ATT_FRIENDLY))) {
        if ((SELF.GUILD) == (GIL_NONE)) {
            return;
        };
        if ((((FORMERPORTALGUILD) == (GIL_MIL)) || ((FORMERPORTALGUILD) == (GIL_SLD))) && ((WLD_GETGUILDATTITUDE(SELF.GUILD, FORMERPORTALGUILD)) == (ATT_FRIENDLY))) {
            B_ATTACK(SELF, OTHER, AR_LEFTPORTALROOM, 0);
            return;
        };
        SELF.AIVAR[21] = TRUE;
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xf08e, 0, "");
        return;
    };
}

var int B_ASSESSPORTALCOLLISION.FORMERPORTALGUILD = 0;
