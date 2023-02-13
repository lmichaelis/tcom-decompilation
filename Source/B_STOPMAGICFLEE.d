func int B_STOPMAGICFLEE() {
    NPC_PERCDISABLE(SELF, PERC_ASSESSDAMAGE);
    NPC_SETTARGET(SELF, OTHER);
    AI_STARTSTATE(SELF, 61575, 0, "");
    return 0 /* !broken stack! */;
}

func void ZS_MAGICFLEE() {
    var int RANDY;
    if ((SELF.GUILD) == (GIL_DRAGON)) {
        AI_CONTINUEROUTINE(SELF);
    };
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 43849);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    SELF.AIVAR[12] = GP_NONE;
    NPC_SETREFUSETALK(SELF, 0);
    NPC_SETTEMPATTITUDE(SELF, NPC_GETPERMATTITUDE(SELF, HERO));
    B_STOPLOOKAT(SELF);
    AI_STOPPOINTAT(SELF);
    if (!(NPC_HASBODYFLAG(SELF, BS_FLAG_INTERRUPTABLE))) {
        AI_STANDUP(SELF);
    };
    AI_STANDUPQUICK(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        RANDY = HLP_RANDOM(3);
        if ((RANDY) == (0)) {
            AI_PLAYANIBS(SELF, "T_STAND_2_FEAR_VICTIM1", BS_STAND);
        };
        if ((RANDY) == (1)) {
            AI_PLAYANIBS(SELF, "T_STAND_2_FEAR_VICTIM2", BS_STAND);
        };
        if ((RANDY) == (2)) {
            AI_PLAYANIBS(SELF, "T_STAND_2_FEAR_VICTIM3", BS_STAND);
        };
    };
}

func int ZS_MAGICFLEE_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (SPL_TIME_FEAR)) {
        NPC_CLEARAIQUEUE(SELF);
        B_STOPMAGICFLEE();
    };
    return 0 /* !broken stack! */;
}

func void ZS_MAGICFLEE_END() {
}

