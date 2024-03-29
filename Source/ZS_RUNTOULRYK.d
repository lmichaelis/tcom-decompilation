func void ZS_RUNTOULRYK() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 43306);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 41633);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 41635);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 41653);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_RUNTOULRYK_LOOP() {
    NPC_SETTARGET(SELF, NONE_15_ULRYK_Q602);
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 1050253722);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(NONE_15_ULRYK_Q602, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(NONE_15_ULRYK_Q602)) && (!(C_NPCISDOWN(NONE_15_ULRYK_Q602)))) {
        if ((NONE_15_ULRYK_Q602.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        };
        SELF.AIVAR[7] = HLP_GETINSTANCEID(NONE_15_ULRYK_Q602);
        return LOOP_CONTINUE;
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(NONE_15_ULRYK_Q602)) && (!(C_NPCISDOWN(NONE_15_ULRYK_Q602)))) && (((NPC_GETDISTTONPC(SELF, NONE_15_ULRYK_Q602)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(NONE_15_ULRYK_Q602)))) && ((NONE_15_ULRYK_Q602.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(NONE_15_ULRYK_Q602);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_RUNTOULRYK_END() {
    if ((NPC_ISINSTATE(NONE_15_ULRYK_Q602, 61603)) && ((NPC_ISINSTATE(MIL_4000_RODERICH_Q602, 61599)) == (FALSE))) {
        if ((NPC_ISINSTATE(MIL_4000_RODERICH_Q602, 61603)) == (FALSE)) {
            B_STARTOTHERROUTINE(MIL_4000_RODERICH_Q602, "Q602_TIRED");
            NPC_REFRESH(MIL_4000_RODERICH_Q602);
            NPC_EXCHANGEROUTINE(NONE_15_ULRYK_Q602, "Q602_OBSERVE");
            return;
        };
    };
}

func void B_Q602_RODERICHFIGHT() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (5000)) {
        AI_STARTSTATE(SELF, 46346, 0, "");
        PRINTD("Bije Ulryka!");
    };
    PRINTD("Nie spe�niasz warunk�w");
}

func void ZS_Q602_RODERICHFIGHT() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 2500;
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 46349);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_Q602_RODERICHFIGHT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_Q602_RODERICHFIGHT_END() {
}

