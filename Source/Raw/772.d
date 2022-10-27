func void ZS_SQ410_RUNFIGHT() {
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

func int ZS_SQ410_RUNFIGHT_LOOP() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BAU_702_VIKTOR))) {
        NPC_SETTARGET(SELF, MIL_6318_LUTZ);
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_6318_LUTZ))) {
        NPC_SETTARGET(SELF, BAU_702_VIKTOR);
    };
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3e99999a);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) {
            if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BAU_702_VIKTOR))) {
                if ((NPC_GETDISTTOWP(BAU_702_VIKTOR, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_6318_LUTZ))) {
                if ((NPC_GETDISTTOWP(MIL_6318_LUTZ, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            };
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(BAU_702_VIKTOR))) {
        if ((HLP_ISVALIDNPC(MIL_6318_LUTZ)) && (!(C_NPCISDOWN(MIL_6318_LUTZ)))) {
            if ((MIL_6318_LUTZ.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(MIL_6318_LUTZ);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(MIL_6318_LUTZ)) && (!(C_NPCISDOWN(MIL_6318_LUTZ)))) && (((NPC_GETDISTTONPC(SELF, MIL_6318_LUTZ)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(MIL_6318_LUTZ)))) && ((MIL_6318_LUTZ.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(MIL_6318_LUTZ);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_6318_LUTZ))) {
        if ((HLP_ISVALIDNPC(BAU_702_VIKTOR)) && (!(C_NPCISDOWN(BAU_702_VIKTOR)))) {
            if ((BAU_702_VIKTOR.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(BAU_702_VIKTOR);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(BAU_702_VIKTOR)) && (!(C_NPCISDOWN(BAU_702_VIKTOR)))) && (((NPC_GETDISTTONPC(SELF, BAU_702_VIKTOR)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(BAU_702_VIKTOR)))) && ((BAU_702_VIKTOR.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(BAU_702_VIKTOR);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    return 0 /* !broken stack! */;
}

func void ZS_SQ410_RUNFIGHT_END() {
    if ((NPC_ISINSTATE(BAU_702_VIKTOR, 0xf0a3)) || (NPC_ISINSTATE(MIL_6318_LUTZ, 0xf0a3))) {
        FF_APPLYONCEEXT(0xf425, 75, 4);
        NPC_CLEARAIQUEUE(MIL_6318_LUTZ);
        return;
    };
}

func void B_SQ410_FIGHT() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb6c1, 0, "");
        PRINTD("Walka!");
    };
}

func void ZS_SQ410_FIGHT() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb6c4);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SQ410_FIGHT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ410_FIGHT_END() {
}

