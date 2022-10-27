func void ZS_RUNTOMARVIN() {
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
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
        AI_WAIT(SELF, 0x3e99999a);
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
        } else {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(HERO);
        } else {
            return LOOP_CONTINUE;
        } else {
            /* set_instance(0) */;
        };
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
        AI_STARTSTATE(SELF, 0xf0af, 0, "");
        return;
    };
}

func void B_KILLMARVIN() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb42f, 0, "");
        PRINTD("Chc¹ ciê zabiæ!");
    };
    PRINTD("Nie spe³niasz warunków");
}

func void ZS_KILLMARVIN() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb432);
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

