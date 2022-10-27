func void B_MM_ASSESSOTHERSDAMAGE() {
    if (((NPC_GETDISTTONPC(SELF, VICTIM)) > (PERC_DIST_INTERMEDIAT)) && ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT))) {
        return;
    };
    if (!(NPC_CANSEENPCFREELOS(SELF, VICTIM))) {
        return;
    };
    if ((SELF.AIVAR[15]) == (TRUE)) {
        if (NPC_ISPLAYER(VICTIM)) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            NPC_SETTARGET(SELF, OTHER);
            AI_STARTSTATE(SELF, 0x1661a, 0, "");
            return;
        };
        if ((NPC_ISPLAYER(OTHER)) && (!(NPC_ISDEAD(VICTIM)))) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            NPC_SETTARGET(SELF, VICTIM);
            AI_STARTSTATE(SELF, 0x1661a, 0, "");
            return;
        };
    };
    if ((SELF.GUILD) == (GIL_WOLF)) {
        if (((((VICTIM.GUILD) == (GIL_WOLF)) && ((OTHER.GUILD) == (GIL_WOLF))) && (NPC_ISPLAYER(OTHER))) && (NPC_ISDEAD(VICTIM))) {
            NPC_CLEARAIQUEUE(SELF);
            B_CLEARPERCEPTIONS(SELF);
            SELF.START_AISTATE = ZS_MM_RTN_SUMMONED;
            AI_STARTSTATE(SELF, 0x1660a, 0, "");
            return;
        };
    };
    if (((WLD_GETGUILDATTITUDE(SELF.GUILD, VICTIM.GUILD)) == (ATT_FRIENDLY)) && ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) != (ATT_FRIENDLY))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        NPC_SETTARGET(SELF, OTHER);
        AI_STARTSTATE(SELF, 0x1661a, 0, "");
        return;
    };
    if ((((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_FRIENDLY)) && ((WLD_GETGUILDATTITUDE(SELF.GUILD, VICTIM.GUILD)) != (ATT_FRIENDLY))) && (!(NPC_ISDEAD(VICTIM)))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        NPC_SETTARGET(SELF, VICTIM);
        AI_STARTSTATE(SELF, 0x1661a, 0, "");
        return;
    };
}

