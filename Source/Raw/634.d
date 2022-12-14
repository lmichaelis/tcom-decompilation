func void ZS_M5_PUB_RUNFIGHT() {
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

func int ZS_M5_PUB_RUNFIGHT_LOOP() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11292_DRUNKENCITIZEN))) {
        NPC_SETTARGET(SELF, VLK_11293_DRUNKENCITIZEN);
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11293_DRUNKENCITIZEN))) {
        NPC_SETTARGET(SELF, VLK_11292_DRUNKENCITIZEN);
    };
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3e99999a);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) {
            if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11292_DRUNKENCITIZEN))) {
                if ((NPC_GETDISTTOWP(VLK_11292_DRUNKENCITIZEN, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11293_DRUNKENCITIZEN))) {
                if ((NPC_GETDISTTOWP(VLK_11293_DRUNKENCITIZEN, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            };
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11292_DRUNKENCITIZEN))) {
        if ((HLP_ISVALIDNPC(VLK_11293_DRUNKENCITIZEN)) && (!(C_NPCISDOWN(VLK_11293_DRUNKENCITIZEN)))) {
            if ((VLK_11293_DRUNKENCITIZEN.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_11293_DRUNKENCITIZEN);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(VLK_11293_DRUNKENCITIZEN)) && (!(C_NPCISDOWN(VLK_11293_DRUNKENCITIZEN)))) && (((NPC_GETDISTTONPC(SELF, VLK_11293_DRUNKENCITIZEN)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(VLK_11293_DRUNKENCITIZEN)))) && ((VLK_11293_DRUNKENCITIZEN.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_11293_DRUNKENCITIZEN);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(VLK_11293_DRUNKENCITIZEN))) {
        if ((HLP_ISVALIDNPC(VLK_11292_DRUNKENCITIZEN)) && (!(C_NPCISDOWN(VLK_11292_DRUNKENCITIZEN)))) {
            if ((VLK_11292_DRUNKENCITIZEN.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_11292_DRUNKENCITIZEN);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(VLK_11292_DRUNKENCITIZEN)) && (!(C_NPCISDOWN(VLK_11292_DRUNKENCITIZEN)))) && (((NPC_GETDISTTONPC(SELF, VLK_11292_DRUNKENCITIZEN)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(VLK_11292_DRUNKENCITIZEN)))) && ((VLK_11292_DRUNKENCITIZEN.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(VLK_11292_DRUNKENCITIZEN);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    return 0 /* !broken stack! */;
}

func void ZS_M5_PUB_RUNFIGHT_END() {
    if ((NPC_ISINSTATE(VLK_11292_DRUNKENCITIZEN, 0xf0a3)) || (NPC_ISINSTATE(VLK_11293_DRUNKENCITIZEN, 0xf0a3))) {
        NPC_CLEARAIQUEUE(VLK_11293_DRUNKENCITIZEN);
        return;
    };
}

func void B_M5_PUB_FIGHT() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb45e, 0, "");
        PRINTD("Walka!");
    };
}

func void ZS_M5_PUB_FIGHT() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb461);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_M5_PUB_FIGHT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_M5_PUB_FIGHT_END() {
}

