func void ZS_SQ204_RUNTODETLOW() {
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSBODY, 91626);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 91628);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 91633);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_SQ204_RUNTODETLOW_LOOP() {
    NPC_SETTARGET(SELF, VLK_3015_DETLOW);
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(VLK_3015_DETLOW, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_ISVALIDNPC(VLK_3015_DETLOW)) && (!(C_NPCISDOWN(VLK_3015_DETLOW)))) {
        if ((VLK_3015_DETLOW.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        };
        SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_3015_DETLOW);
        return LOOP_CONTINUE;
    };
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(VLK_3015_DETLOW)) && (!(C_NPCISDOWN(VLK_3015_DETLOW)))) && (((NPC_GETDISTTONPC(SELF, VLK_3015_DETLOW)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(VLK_3015_DETLOW)))) && ((VLK_3015_DETLOW.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_3015_DETLOW);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_SQ204_RUNTODETLOW_END() {
    if (NPC_ISDEAD(VLK_3015_DETLOW)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 91674, 0, "");
        return;
    };
}

func void B_SQ204_KILLDETLOW() {
    AI_STARTSTATE(SELF, 46771, 0, "");
}

func void ZS_SQ204_DETLOWATTACK() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 4500;
    NPC_SETPERCTIME(SELF, 1065353216);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 46774);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SQ204_DETLOWATTACK_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ204_DETLOWATTACK_END() {
}

