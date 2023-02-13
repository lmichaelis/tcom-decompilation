func void B_ASSESSQUIETSOUND() {
    if (!(HLP_ISVALIDNPC(OTHER))) {
        return;
    };
    if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) {
        return;
    };
    if (((WLD_GETPLAYERPORTALGUILD()) >= (GIL_NONE)) && ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_INDOOR_HEIGHT))) {
        return;
    };
    if (B_ASSESSENTERROOM()) {
        return;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return;
    };
    if (((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_HOSTILE)) && ((NPC_CHECKINFO(SELF, 1)) == (FALSE))) {
        return;
    };
    if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE)) && ((SELF.AIVAR[61]) == (TRUE))) {
        return;
    };
    if (NPC_CANSEESOURCE(SELF)) {
        return;
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 61582, 1, "");
}

