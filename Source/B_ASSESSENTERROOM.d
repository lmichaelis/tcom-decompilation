func int B_ASSESSENTERROOM() {
    var int PORTALGUILD;
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
    if (NPC_ISINSTATE(SELF, 61615)) {
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
        if ((!(NPC_CANSEENPC(SELF, OTHER))) && (!(NPC_ISINSTATE(SELF, 61582)))) {
            return FALSE;
        };
    };
    if ((SELF.GUILD) == (GIL_NONE)) {
        return FALSE;
    };
    if ((!(NPC_ISINPLAYERSROOM(SELF))) && (NPC_ISINSTATE(SELF, 46676))) {
        return FALSE;
    };
    if (((PORTALGUILD) == (GIL_PUBLIC)) && (NPC_ISINPLAYERSROOM(SELF))) {
        if (NPC_ISINSTATE(SELF, 61582)) {
            return FALSE;
        };
        if (C_BODYSTATECONTAINS(SELF, BS_LIE)) {
            B_MM_DESYNCHRONIZE();
        };
        if (((((((((((((((((NPC_ISINSTATE(SELF, 46249)) || (NPC_ISINSTATE(SELF, 46382))) || (NPC_ISINSTATE(SELF, 46530))) || (NPC_ISINSTATE(SELF, 46541))) || (NPC_ISINSTATE(SELF, 46556))) || (NPC_ISINSTATE(SELF, 46564))) || (NPC_ISINSTATE(SELF, 46559))) || (NPC_ISINSTATE(SELF, 46645))) || (NPC_ISINSTATE(SELF, 46676))) || (NPC_ISINSTATE(SELF, 46687))) || (NPC_ISINSTATE(SELF, 46726))) || (NPC_ISINSTATE(SELF, 46812))) || (NPC_ISINSTATE(SELF, 46838))) || (NPC_ISINSTATE(SELF, 46857))) || (NPC_ISINSTATE(SELF, 46868))) || (NPC_ISINSTATE(SELF, 46891))) || (NPC_ISINSTATE(SELF, 46948))) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
                AI_STARTSTATE(SELF, 61582, 0, "");
            } else {
                AI_STARTSTATE(SELF, 61582, 1, "");
            };
            return TRUE;
        };
        return FALSE;
    };
    if (C_NPCISBOTHEREDBYPLAYERROOMGUILD(SELF)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 61569, 1, "");
        return TRUE;
    };
    return FALSE;
}

func void B_ASSESSPORTALCOLLISION() {
    var int FORMERPORTALGUILD;
    FORMERPORTALGUILD = WLD_GETFORMERPLAYERPORTALGUILD();
    if (B_ASSESSENTERROOM()) {
        return;
    };
    if ((!(NPC_CANSEENPC(SELF, OTHER))) && ((C_BODYSTATECONTAINS(OTHER, BS_SNEAK)) || (C_BODYSTATECONTAINS(OTHER, BS_STAND)))) {
        return;
    };
    NPC_PERCEIVEALL(SELF);
    if (WLD_DETECTNPCEX(SELF, -(1), 61569, -(1), FALSE)) {
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
        AI_STARTSTATE(SELF, 61582, 0, "");
        return;
    };
}

