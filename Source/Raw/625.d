func void ZS_RUNTOJORN() {
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSBODY, 0x165ea);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0x165ec);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0x165f1);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_RUNTOJORN_LOOP() {
    NPC_SETTARGET(SELF, NONE_1_JORN);
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3e99999a);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(NONE_1_JORN, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(NONE_1_JORN)) && (!(C_NPCISDOWN(NONE_1_JORN)))) {
        if ((NONE_1_JORN.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        } else {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(NONE_1_JORN);
        } else {
            return LOOP_CONTINUE;
        } else {
            /* set_instance(0) */;
        };
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(NONE_1_JORN)) && (!(C_NPCISDOWN(NONE_1_JORN)))) && (((NPC_GETDISTTONPC(SELF, NONE_1_JORN)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(NONE_1_JORN)))) && ((NONE_1_JORN.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(NONE_1_JORN);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_RUNTOJORN_END() {
    if (NPC_ISDEAD(NONE_1_JORN)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 0x1661a, 0, "");
        return;
    };
}

func void B_KILLJORN() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb428, 0, "");
        PRINTD("Chc� zabi� Jorna!");
    };
    PRINTD("Nie spe�niasz warunk�w");
}

func void ZS_JORNATTACK() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb42b);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_JORNATTACK_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_JORNATTACK_END() {
}

