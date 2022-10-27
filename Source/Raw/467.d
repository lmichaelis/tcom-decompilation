func void B_ASSESSMAGIC() {
    if ((NPC_GETLASTHITSPELLCAT(SELF)) == (SPELL_BAD)) {
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_WHIRLWIND)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab81, 0, "");
        return;
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_SUCKENERGY)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab77, 0, "");
        return;
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_GREENTENTACLE)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab34, 0, "");
        return;
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_SWARM)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab7c, 0, "");
        return;
    };
    if (((NPC_GETLASTHITSPELLID(SELF)) == (SPL_ICECUBE)) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_ICEWAVE))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab50, 0, "");
        return;
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_CHARGEZAP)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xab71, 0, "");
        return;
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_FEAR)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        NPC_SETTARGET(SELF, OTHER);
        if ((((SELF.GUILD) < (GIL_SEPERATOR_HUM)) && ((SELF.GUILD) != (GIL_KDF))) && ((SELF.GUILD) != (GIL_PAL))) {
            AI_STARTSTATE(SELF, 0xab4a, 0, "");
            return;
        };
        if (((((((SELF.GUILD) > (GIL_SEPERATOR_HUM)) && ((SELF.GUILD) != (GIL_DRAGON))) && ((SELF.GUILD) != (GIL_TROLL))) && ((SELF.GUILD) != (GIL_STONEGOLEM))) && ((SELF.GUILD) != (GIL_ICEGOLEM))) && ((SELF.GUILD) != (GIL_FIREGOLEM))) {
            AI_STARTSTATE(SELF, 0x16620, 0, "");
            return;
        };
    };
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_FIRERAIN)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 0xab46, 0, "");
        return;
    };
}

const int PLAYER_PERC_ASSESSMAGIC = 43309;
