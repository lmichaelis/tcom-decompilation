func void ZS_RUNTOMARVIN() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_RUNTOMARVIN_LOOP() {
    NPC_SETTARGET(SELF, HERO);
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 1050253722);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(HERO, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(HERO)) && (!(C_NPCISDOWN(HERO)))) {
        if ((HERO.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        };
        SELF.AIVAR[7] = HLP_GETINSTANCEID(HERO);
        return LOOP_CONTINUE;
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(HERO)) && (!(C_NPCISDOWN(HERO)))) && (((NPC_GETDISTTONPC(SELF, HERO)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(HERO)))) && ((HERO.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(HERO);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_RUNTOMARVIN_END() {
    if (NPC_ISDEAD(HERO)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 61615, 0, "");
        return;
    };
}

func void B_KILLMARVIN() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (2500)) {
        AI_STARTSTATE(SELF, 46127, 0, "");
        PRINTD("Chc¹ ciê zabiæ!");
    };
    PRINTD("Nie spe³niasz warunków");
}

func void ZS_KILLMARVIN() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 2000;
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 46130);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_KILLMARVIN_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_KILLMARVIN_END() {
}

