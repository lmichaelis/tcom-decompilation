func int B_ASSESSDRAWWEAPON() {
    if (ISHEROINVISIBLE()) {
        return FALSE;
    };
    if (NPC_ISINFIGHTMODE(OTHER, FMODE_NONE)) {
        return FALSE;
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_DIALOG)) {
        return FALSE;
    };
    if (!(C_NPCISBOTHEREDBYWEAPON(SELF, OTHER))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09a)) {
        return FALSE;
    };
    if ((NPC_ISINSTATE(SELF, 0xf08e)) && (NPC_WASINSTATE(SELF, 0xf0ab))) {
        return FALSE;
    };
    if (!(NPC_CANSEENPC(SELF, OTHER))) {
        return FALSE;
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 0xf09a, 0, "");
    return TRUE;
}

