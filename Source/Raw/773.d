func void ZS_SQ415_RUNFIGHT() {
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

func int ZS_SQ415_RUNFIGHT_LOOP() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13342_KYLID))) {
        NPC_SETTARGET(SELF, DJG_13341_DEVIR);
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13341_DEVIR))) {
        NPC_SETTARGET(SELF, DJG_13342_KYLID);
    };
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3e99999a);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) {
            if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13342_KYLID))) {
                if ((NPC_GETDISTTOWP(DJG_13342_KYLID, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            } else if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13341_DEVIR))) {
                if ((NPC_GETDISTTOWP(DJG_13341_DEVIR, SELF.WP)) > (SELF.AIVAR[59])) {
                    SELF.FIGHT_TACTIC = FAI_NAILED;
                };
            };
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13342_KYLID))) {
        if ((HLP_ISVALIDNPC(DJG_13341_DEVIR)) && (!(C_NPCISDOWN(DJG_13341_DEVIR)))) {
            if ((DJG_13341_DEVIR.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(DJG_13341_DEVIR);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(DJG_13341_DEVIR)) && (!(C_NPCISDOWN(DJG_13341_DEVIR)))) && (((NPC_GETDISTTONPC(SELF, DJG_13341_DEVIR)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(DJG_13341_DEVIR)))) && ((DJG_13341_DEVIR.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(DJG_13341_DEVIR);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(DJG_13341_DEVIR))) {
        if ((HLP_ISVALIDNPC(DJG_13342_KYLID)) && (!(C_NPCISDOWN(DJG_13342_KYLID)))) {
            if ((DJG_13342_KYLID.AIVAR[4]) == (FALSE)) {
                AI_ATTACK(SELF);
            } else {
                NPC_CLEARAIQUEUE(SELF);
            } else {
                SELF.AIVAR[7] = HLP_GETINSTANCEID(DJG_13342_KYLID);
            } else {
                return LOOP_CONTINUE;
            } else {
                /* set_instance(0) */;
            };
        };
        NPC_PERCEIVEALL(SELF);
        if ((((HLP_ISVALIDNPC(DJG_13342_KYLID)) && (!(C_NPCISDOWN(DJG_13342_KYLID)))) && (((NPC_GETDISTTONPC(SELF, DJG_13342_KYLID)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(DJG_13342_KYLID)))) && ((DJG_13342_KYLID.AIVAR[4]) == (FALSE))) {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(DJG_13342_KYLID);
            return LOOP_CONTINUE;
        };
        NPC_GETNEXTTARGET(SELF);
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    return 0 /* !broken stack! */;
}

func void ZS_SQ415_RUNFIGHT_END() {
    if ((NPC_ISINSTATE(DJG_13342_KYLID, 0xf0a3)) || (NPC_ISINSTATE(DJG_13341_DEVIR, 0xf0a3))) {
        if (NPC_ISINSTATE(DJG_13342_KYLID, 0xf0a3)) {
            SQ415_FIGHTRESULT = 2;
        } else if (NPC_ISINSTATE(DJG_13341_DEVIR, 0xf0a3)) {
            SQ415_FIGHTRESULT = 1;
        };
        FF_APPLYONCEEXT(0xf44a, 75, 4);
        return;
    };
}

func void B_SQ415_FIGHT() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) <= (0x9c4)) {
        AI_STARTSTATE(SELF, 0xb6c8, 0, "");
        PRINTD("Walka!");
    };
}

func void ZS_SQ415_FIGHT() {
    SELF.SENSES = SENSE_SMELL;
    SELF.SENSES_RANGE = 0x7d0;
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSPLAYER, 0xb6cb);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SQ415_FIGHT_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, T_WARN);
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ415_FIGHT_END() {
}

