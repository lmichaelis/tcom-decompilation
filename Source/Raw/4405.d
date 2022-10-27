func void B_MM_ASSESSBODY() {
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
    if (NPC_ISINSTATE(SELF, 0x1661a)) {
        STOERENFRIED = HLP_GETNPC(SELF.AIVAR[7]);
        if ((NPC_GETDISTTONPC(STOERENFRIED, OTHER)) <= (FIGHT_DIST_MONSTER_ATTACKRANGE)) {
            return;
        };
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 0x1661d, 0, "");
}

instance B_MM_ASSESSBODY.STOERENFRIED(C_NPC)
