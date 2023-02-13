const int SPL_MAGICBURN_DAMAGE_PER_SEC = 1;
func void B_STOPMAGICBURN() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        B_ASSESSDAMAGE();
        AI_CONTINUEROUTINE(SELF);
    };
    NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
    AI_CONTINUEROUTINE(SELF);
}

func void B_RESTARTBURN() {
    if ((((((NPC_GETLASTHITSPELLID(SELF)) == (SPL_FIRERAIN)) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_CHARGEFIREBALL))) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_INSTANTFIREBALL))) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_FIREBOLT))) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_FIREWAVE))) {
        NPC_SETSTATETIME(SELF, 0);
        return;
    };
    if (((NPC_GETLASTHITSPELLID(SELF)) == (SPL_ICEWAVE)) || ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_ICECUBE))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 43856, 0, "");
    };
}

func int ZS_MAGICBURN() {
    NPC_PERCENABLE(SELF, PERC_ASSESSSTOPMAGIC, 43838);
    if (!(NPC_HASBODYFLAG(SELF, BS_FLAG_INTERRUPTABLE))) {
        AI_STANDUP(SELF);
    };
    AI_STANDUPQUICK(SELF);
    return 0 /* !broken stack! */;
}

func int ZS_MAGICBURN_LOOP() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43839);
    if ((NPC_GETSTATETIME(SELF)) == (1)) {
        NPC_SETSTATETIME(SELF, 0);
        B_MAGICHURTNPC(OTHER, SELF, SPL_MAGICBURN_DAMAGE_PER_SEC);
    };
    if ((SELF.ATTRIBUTE[0]) <= (0)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_MAGICBURN_END() {
}
