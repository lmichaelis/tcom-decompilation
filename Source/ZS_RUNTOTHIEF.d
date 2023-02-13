func void ZS_RUNTOTHIEF() {
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

func int ZS_RUNTOTHIEF_LOOP() {
    NPC_SETTARGET(SELF, VLK_6235_THIEF);
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 1050253722);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(VLK_6235_THIEF, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(VLK_6235_THIEF)) && (!(C_NPCISDOWN(VLK_6235_THIEF)))) {
        if ((VLK_6235_THIEF.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        };
        SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_6235_THIEF);
        return LOOP_CONTINUE;
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(VLK_6235_THIEF)) && (!(C_NPCISDOWN(VLK_6235_THIEF)))) && (((NPC_GETDISTTONPC(SELF, VLK_6235_THIEF)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(VLK_6235_THIEF)))) && ((VLK_6235_THIEF.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_6235_THIEF);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_RUNTOTHIEF_END() {
    if ((NPC_ISINSTATE(VLK_6235_THIEF, 61603)) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 61599)) == (FALSE))) {
        B_STARTOTHERROUTINE(MIL_4016_WEGAR, "ChurchWait");
        NPC_REFRESH(MIL_4016_WEGAR);
        return;
    };
}

func void B_FMQ003_WEIGARFIGHT() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (2500)) {
        AI_STARTSTATE(SELF, 45998, 0, "");
        PRINTD("Bije z�odzieja!");
    };
    PRINTD("Nie spe�niasz warunk�w");
}

func void ZS_FMQ003_WEIGARFIGHT() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 2000;
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 46001);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_FMQ003_WEIGARFIGHT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_FMQ003_WEIGARFIGHT_END() {
}
