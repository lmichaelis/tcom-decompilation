func void B_MM_ASSESSWARN() {
    if ((SELF.GUILD) > (GIL_SEPERATOR_ORC)) {
        if (NPC_ISINSTATE(SELF, 91674)) {
            return;
        };
        if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_FRIENDLY)) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, VICTIM);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 91674, 0, "");
            return;
        };
        return;
    };
    if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
        return;
    };
    if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_HEIGHT)) {
        return;
    };
    if (NPC_ISINSTATE(SELF, 91674)) {
        if ((C_PREDATORFOUNDPREY(SELF, OTHER)) && ((SELF.AIVAR[29]) == (PRIO_EAT))) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, OTHER);
        } else {
            OTHER = HLP_GETNPC(SELF.AIVAR[7]);
        };
        return;
    };
    if (((SELF.GUILD) == (OTHER.GUILD)) && ((SELF.AIVAR[50]) == (TRUE))) {
        if ((((SELF.GUILD) == (GIL_WOLF)) && ((VICTIM.GUILD) == (GIL_WOLF))) && (NPC_ISPLAYER(VICTIM))) {
            return;
        };
        if (NPC_ISINSTATE(OTHER, 91674)) {
            NPC_CLEARAIQUEUE(SELF);
            NPC_SETTARGET(SELF, VICTIM);
            B_CLEARPERCEPTIONS(SELF);
            AI_STARTSTATE(SELF, 91674, 0, "");
            return;
        };
        if (NPC_ISINSTATE(OTHER, 91686)) {
            AI_SETWALKMODE(SELF, NPC_RUN);
            AI_GOTONPC(SELF, VICTIM);
            return;
        };
    };
}

