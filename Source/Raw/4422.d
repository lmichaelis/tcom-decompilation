func void B_MM_ASSESSSURPRISE() {
    NPC_SETTARGET(SELF, OTHER);
}

func void ZS_MM_ATTACK() {
    if (((SELF.GUILD) == (GIL_DRACONIAN)) || ((SELF.GUILD) == (GIL_ORC))) {
        B_RESETALL(SELF);
    };
    NPC_SETPERCTIME(SELF, 0x3f800000);
    NPC_PERCENABLE(SELF, PERC_ASSESSBODY, 0x165ea);
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0x165ec);
    NPC_PERCENABLE(SELF, PERC_ASSESSWARN, 0x165f1);
    NPC_PERCENABLE(SELF, PERC_ASSESSSURPRISE, 0x16619);
    B_VALIDATEOTHER();
    if (((SELF.GUILD) == (GIL_SHEEP)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(RAT_Q501)))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        NPC_SETTARGET(SELF, OTHER);
        AI_STARTSTATE(SELF, 0x16620, 0, "");
        return;
    };
    AI_STANDUP(SELF);
    if ((SELF.GUILD) == (GIL_KM_LARVA)) {
        AI_SETWALKMODE(SELF, NPC_WALK);
    };
    AI_SETWALKMODE(SELF, NPC_RUN);
    NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSWARN, OTHER, SELF);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
    SELF.AIVAR[19] = 0;
}

func int ZS_MM_ATTACK_LOOP() {
    if ((SELF.GUILD) == (GIL_DRAGON)) {
        SELF.AIVAR[19] += 1;
        if (((SELF.ATTRIBUTE[0]) < (SELF.ATTRIBUTE[1])) && ((SELF.AIVAR[19]) >= (2))) {
            SELF.ATTRIBUTE[0] += 1;
            SELF.AIVAR[19] = 0;
        };
    };
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (FIGHT_DIST_CANCEL)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        SELF.AIVAR[8] = TRUE;
        return LOOP_END;
    };
    if (((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[27])) && ((SELF.AIVAR[8]) == (FALSE))) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        SELF.AIVAR[8] = TRUE;
        SELF.AIVAR[69] = NPC_GETDISTTONPC(SELF, OTHER);
        SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
        AI_PLAYANI(SELF, T_WARN);
    };
    if ((SELF.AIVAR[8]) == (TRUE)) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) > (SELF.SENSES_RANGE)) {
            return LOOP_END;
        };
        if ((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[68])) {
            if (((NPC_GETDISTTONPC(SELF, OTHER)) < (SELF.AIVAR[69])) || ((!(C_BODYSTATECONTAINS(OTHER, BS_RUN))) && (!(C_BODYSTATECONTAINS(OTHER, BS_JUMP))))) {
                SELF.AIVAR[8] = FALSE;
                NPC_SETSTATETIME(SELF, 0);
                SELF.AIVAR[68] = 0;
            } else {
                AI_TURNTONPC(SELF, OTHER);
                SELF.AIVAR[69] = NPC_GETDISTTONPC(SELF, OTHER);
                SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
            };
        };
        return LOOP_CONTINUE;
    };
    if (((C_BODYSTATECONTAINS(OTHER, BS_SWIM)) || (C_BODYSTATECONTAINS(OTHER, BS_DIVE))) && ((SELF.AIVAR[28]) == (FALSE))) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    if ((SELF.AIVAR[23]) == (1)) {
        AI_WAIT(SELF, 0x3f4ccccd);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.LEVEL) == (0)) {
        if ((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[68])) {
            SELF.AIVAR[62] = (SELF.AIVAR[62]) + (1);
            SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
        };
        if ((SELF.AIVAR[62]) >= (MONSTER_SUMMON_TIME)) {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, -(SELF.ATTRIBUTE[1]));
        };
    };
    if (((!(C_BODYSTATECONTAINS(OTHER, BS_RUN))) && (!(C_BODYSTATECONTAINS(OTHER, BS_JUMP)))) && ((NPC_GETSTATETIME(SELF)) > (0))) {
        NPC_SETSTATETIME(SELF, 0);
        SELF.AIVAR[68] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(OTHER, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((((((C_NPCISMONSTERMAGE(SELF)) || ((SELF.GUILD) == (GIL_SKELETON))) || ((SELF.GUILD) == (GIL_SUMMONED_SKELETON))) || ((SELF.GUILD) > (GIL_MINECRAWLER))) || ((SELF.GUILD) == (GIL_DRACONIAN))) || ((SELF.GUILD) == (GIL_ORC))) {
        B_CREATEAMMO(SELF);
        NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, ATR_MANA_MAX);
        B_SELECTWEAPON(SELF, OTHER);
    };
    if ((HLP_ISVALIDNPC(OTHER)) && (!(C_NPCISDOWN(OTHER)))) {
        if ((OTHER.AIVAR[4]) == (FALSE)) {
            AI_ATTACK(SELF);
        } else {
            NPC_CLEARAIQUEUE(SELF);
        } else {
            SELF.AIVAR[7] = HLP_GETINSTANCEID(OTHER);
        } else {
            return LOOP_CONTINUE;
        } else {
            /* set_instance(0) */;
        };
    };
    if (((SELF.AIVAR[29]) == (PRIO_EAT)) && (C_WANTTOEAT(SELF, OTHER))) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    NPC_GETTARGET(SELF);
    NPC_PERCEIVEALL(SELF);
    if ((((HLP_ISVALIDNPC(OTHER)) && (!(C_NPCISDOWN(OTHER)))) && (((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(OTHER)))) && ((OTHER.AIVAR[4]) == (FALSE))) {
        SELF.AIVAR[7] = HLP_GETINSTANCEID(OTHER);
        return LOOP_CONTINUE;
    };
    NPC_GETNEXTTARGET(SELF);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    return LOOP_END;
}

func void ZS_MM_ATTACK_END() {
    OTHER = HLP_GETNPC(SELF.AIVAR[7]);
    if ((((((C_NPCISMONSTERMAGE(SELF)) || ((SELF.GUILD) == (GIL_SKELETON))) || ((SELF.GUILD) == (GIL_SUMMONED_SKELETON))) || ((SELF.GUILD) > (GIL_MINECRAWLER))) || ((SELF.GUILD) == (GIL_DRACONIAN))) || ((SELF.GUILD) == (GIL_ORC))) {
        AI_REMOVEWEAPON(SELF);
    };
    if ((NPC_ISDEAD(OTHER)) && (C_WANTTOEAT(SELF, OTHER))) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STARTSTATE(SELF, 0x1661d, 0, "");
        return;
    };
}

