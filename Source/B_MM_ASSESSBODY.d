func void B_MM_ASSESSBODY() {
    var C_NPC STOERENFRIED;
    if ((SELF.GUILD) > (GIL_SEPERATOR_ORC)) {
        return;
    };
    if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) {
        return;
    };
    if ((SELF.AIVAR[29]) == (PRIO_ATTACK)) {
        return;
    };
    if (!(C_WANTTOEAT(SELF, OTHER))) {
        return;
    };
    if (NPC_ISINSTATE(SELF, 91674)) {
        STOERENFRIED = HLP_GETNPC(SELF.AIVAR[7]);
        if ((NPC_GETDISTTONPC(STOERENFRIED, OTHER)) <= (FIGHT_DIST_MONSTER_ATTACKRANGE)) {
            return;
        };
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 91677, 0, "");
}

