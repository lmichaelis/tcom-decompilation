func void B_RESTARTSWARM() {
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_SWARM)) {
        NPC_SETSTATETIME(SELF, 0);
    };
}

func void B_STOPSWARM() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        B_ASSESSDAMAGE();
    };
    NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
}

func int ZS_SWARM() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43898);
    NPC_STOPANI(SELF, "S_SWARM_VICTIM");
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS))) {
        AI_PLAYANIBS(SELF, "T_STAND_2_SWARM_VICTIM", BS_UNCONSCIOUS);
    };
    SELF.AIVAR[78] = 0;
    return 0 /* !broken stack! */;
}

func int ZS_SWARM_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (SPL_TIME_SWARM)) {
        B_STOPSWARM();
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) != (SELF.AIVAR[78])) {
        if ((NPC_GETSTATETIME(SELF)) == (2)) {
            B_SAY(SELF, OTHER, "$RunAway");
        } else if ((NPC_GETSTATETIME(SELF)) == (6)) {
            B_SAY(SELF, OTHER, "$Aargh_2");
        } else if ((NPC_GETSTATETIME(SELF)) == (7)) {
            B_SAY(SELF, OTHER, "$Aargh_3");
        } else if ((NPC_GETSTATETIME(SELF)) == (8)) {
            B_SAY(SELF, OTHER, "$Aargh_1");
        };
        SELF.AIVAR[78] = NPC_GETSTATETIME(SELF);
        if ((SELF.ATTRIBUTE[0]) > (SPL_SWARM_DAMAGE)) {
            B_MAGICHURTNPC(OTHER, SELF, SPL_SWARM_DAMAGE);
        } else {
            B_MAGICHURTNPC(OTHER, SELF, (SELF.ATTRIBUTE[0]) - (1));
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_SWARM_END() {
}

