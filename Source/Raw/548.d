func void B_STOPZAPPED() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        B_ASSESSDAMAGE();
        AI_CONTINUEROUTINE(SELF);
    };
    NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
    AI_CONTINUEROUTINE(SELF);
}

func int ZS_ZAPPED() {
    NPC_PERCENABLE(SELF, PERC_ASSESSSTOPMAGIC, 0xab84);
    if (!(NPC_HASBODYFLAG(SELF, BS_FLAG_INTERRUPTABLE))) {
        AI_STANDUP(SELF);
    };
    AI_STANDUPQUICK(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        AI_PLAYANI(SELF, "T_STAND_2_LIGHTNING_VICTIM");
    };
    return 0 /* !broken stack! */;
}

func int ZS_ZAPPED_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) >= (1)) {
        NPC_SETSTATETIME(SELF, 0);
        B_MAGICHURTNPC(OTHER, SELF, SPL_ZAPPED_DAMAGE_PER_SEC);
        if ((SELF.ATTRIBUTE[0]) <= (0)) {
            NPC_CLEARAIQUEUE(SELF);
            AI_STANDUP(SELF);
            return LOOP_END;
        };
        return LOOP_CONTINUE;
    };
    return 0 /* !broken stack! */;
}

func void ZS_ZAPPED_END() {
}

