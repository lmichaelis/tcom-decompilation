func void B_ASSESSTHREAT() {
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT)) {
        return;
    };
    if (!(NPC_CANSEENPC(SELF, OTHER))) {
        return;
    };
    if (!(C_NPCISBOTHEREDBYWEAPON(SELF, OTHER))) {
        return;
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 61594, 0, "");
}

