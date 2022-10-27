func void ZS_RUNTOREFUGEE03() {
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xa92a);
    NPC_PERCENABLE(SELF, PERC_ASSESSENEMY, 0xa2a1);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0xa2b5);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_RUNTOREFUGEE03_LOOP() {
    NPC_SETTARGET(SELF, BDT_11248_REFUGEE);
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3e99999a);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(BDT_11248_REFUGEE, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(BDT_11248_REFUGEE)) && (!(C_NPCISDOWN(BDT_11248_REFUGEE)))) {
        if ((BDT_11248_REFUGEE.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        } else {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(BDT_11248_REFUGEE);
        } else {
            return LOOP_CONTINUE;
        } else {
            /* set_instance(0) */;
        };
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(BDT_11248_REFUGEE)) && (!(C_NPCISDOWN(BDT_11248_REFUGEE)))) && (((NPC_GETDISTTONPC(SELF, BDT_11248_REFUGEE)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(BDT_11248_REFUGEE)))) && ((BDT_11248_REFUGEE.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(BDT_11248_REFUGEE);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_RUNTOREFUGEE03_END() {
    if (NPC_ISDEAD(BDT_11248_REFUGEE)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 0x1661a, 0, "");
        return;
    };
}

func void B_REFUGEE03ATTACK() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb549, 0, "");
        PRINTD("Bije najemnika!");
    };
    PRINTD("Nie spe�niasz warunk�w");
}

func void ZS_REFUGEE03ATTACK() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb54c);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_REFUGEE03ATTACK_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_REFUGEE03ATTACK_END() {
}

