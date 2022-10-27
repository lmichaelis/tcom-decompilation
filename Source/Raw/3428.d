func void B_ASSESSSURPRISE() {
    NPC_SETTARGET(SELF, OTHER);
    SELF.AIVAR[9] = AR_GUILDENEMY;
}

func void ZS_ATTACK() {
    PERCEPTION_SET_MINIMAL();
    if ((((SELF.GUILD) == (GIL_DRACONIAN)) || ((SELF.GUILD) == (GIL_ORC))) || (((SELF.GUILD) < (GIL_SEPERATOR_HUM)) && ((NPC_HASREADIEDRANGEDWEAPON(SELF)) == (TRUE)))) {
        B_RESETALL(SELF);
    };
    NPC_PERCENABLE(SELF, PERC_ASSESSSURPRISE, 0xf0ae);
    B_VALIDATEOTHER();
    SELF.AIVAR[7] = HLP_GETINSTANCEID(OTHER);
    if (C_WANTTOFLEE(SELF, OTHER)) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        NPC_SETTARGET(SELF, OTHER);
        AI_STARTSTATE(SELF, 0xf087, 0, "");
        return;
    };
    if ((SELF.AIVAR[65]) == (FALSE)) {
        if ((SELF.AIVAR[15]) == (FALSE)) {
            B_SAY_ATTACKREASON();
        };
    };
    if (NPC_ISINFIGHTMODE(SELF, FMODE_NONE)) {
        AI_EQUIPBESTRANGEDWEAPON(SELF);
        AI_EQUIPBESTMELEEWEAPON(SELF);
    };
    AI_STANDUP(SELF);
    B_STOPLOOKAT(SELF);
    B_TURNTONPC(SELF, OTHER);
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[12] = GP_NONE;
    SELF.AIVAR[24] = B_GETCURRENTABSOLUTIONLEVEL(SELF);
    SELF.AIVAR[8] = FALSE;
    SELF.AIVAR[68] = 0;
    SELF.AIVAR[19] = 0;
    SELF.AIVAR[22] = 0;
    SELF.AIVAR[20] = 0;
}

func int ZS_ATTACK_LOOP() {
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (SELF.AIVAR[63])) {
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
        if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
            B_SAY(SELF, OTHER, "$RUNCOWARD");
        };
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
                B_TURNTONPC(SELF, OTHER);
                SELF.AIVAR[69] = NPC_GETDISTTONPC(SELF, OTHER);
                SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
            };
        };
        return LOOP_CONTINUE;
    };
    if ((B_GETCURRENTABSOLUTIONLEVEL(SELF)) > (SELF.AIVAR[24])) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        return LOOP_END;
    };
    if (((C_BODYSTATECONTAINS(OTHER, BS_SWIM)) || (C_BODYSTATECONTAINS(OTHER, BS_DIVE))) && ((SELF.AIVAR[28]) == (FALSE))) {
        NPC_CLEARAIQUEUE(SELF);
        AI_STANDUP(SELF);
        SELF.AIVAR[8] = TRUE;
        return LOOP_END;
    };
    if ((SELF.AIVAR[23]) >= (1)) {
        AI_WAIT(SELF, 0x3f4ccccd);
        SELF.AIVAR[23] = 0;
    };
    if ((SELF.AIVAR[59]) > (0)) {
        if (((NPC_GETDISTTOWP(SELF, SELF.WP)) > (SELF.AIVAR[59])) && ((NPC_GETDISTTOWP(OTHER, SELF.WP)) > (SELF.AIVAR[59]))) {
            SELF.FIGHT_TACTIC = FAI_NAILED;
        } else {
            SELF.FIGHT_TACTIC = SELF.AIVAR[60];
        };
    };
    if ((!(C_BODYSTATECONTAINS(OTHER, BS_RUN))) && (!(C_BODYSTATECONTAINS(OTHER, BS_JUMP)))) {
        NPC_SETSTATETIME(SELF, 0);
    };
    if (((NPC_GETSTATETIME(SELF)) > (2)) && ((SELF.AIVAR[19]) == (0))) {
        B_CALLGUARDS();
        SELF.AIVAR[19] = 1;
    };
    if (((NPC_GETSTATETIME(SELF)) > (8)) && ((SELF.AIVAR[19]) == (1))) {
        B_CALLGUARDS();
        SELF.AIVAR[19] = 2;
    };
    NPC_GETTARGET(SELF);
    B_CREATEAMMO(SELF);
    B_SELECTWEAPON(SELF, OTHER);
    if ((HLP_ISVALIDNPC(OTHER)) && ((C_NPCISDOWN(OTHER)) == (FALSE))) {
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
    NPC_CLEARAIQUEUE(SELF);
    if (((HLP_ISVALIDNPC(OTHER)) && (NPC_ISPLAYER(OTHER))) && (C_NPCISDOWN(OTHER))) {
        NPC_SETTEMPATTITUDE(SELF, NPC_GETPERMATTITUDE(SELF, HERO));
    };
    if ((SELF.AIVAR[9]) != (AR_KILL)) {
        NPC_PERCEIVEALL(SELF);
    };
    if ((((((HLP_ISVALIDNPC(OTHER)) && (!(C_NPCISDOWN(OTHER)))) && (((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_INTERMEDIAT)) || (NPC_ISPLAYER(OTHER)))) && ((NPC_GETHEIGHTTONPC(SELF, OTHER)) < (PERC_DIST_HEIGHT))) && ((OTHER.AIVAR[4]) == (FALSE))) && ((SELF.GUILD) == (GIL_BDT))) {
        if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_HOSTILE)) {
            SELF.AIVAR[9] = AR_GUILDENEMY;
            if (NPC_ISPLAYER(OTHER)) {
                SELF.AIVAR[47] = AR_GUILDENEMY;
                SELF.AIVAR[0] = FIGHT_CANCEL;
                SELF.AIVAR[64] = FALSE;
            };
        } else if ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE)) {
            SELF.AIVAR[9] = SELF.AIVAR[47];
        };
        return LOOP_CONTINUE;
    };
    NPC_CLEARAIQUEUE(SELF);
    if (((SELF.AIVAR[0]) == (FIGHT_CANCEL)) && ((SELF.AIVAR[7]) != (HLP_GETINSTANCEID(HERO)))) {
        SELF.AIVAR[64] = TRUE;
    };
    return LOOP_END;
}

func void ZS_ATTACK_END() {
    OTHER = HLP_GETNPC(SELF.AIVAR[7]);
    if ((SELF.AIVAR[8]) == (TRUE)) {
        if (((HLP_ISVALIDNPC(OTHER)) && (NPC_ISPLAYER(OTHER))) && ((SELF.NPCTYPE) != (NPCTYPE_FRIEND))) {
            NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
        };
        if ((SELF.AIVAR[45]) == (AF_RUNNING)) {
            SELF.AIVAR[45] = AF_AFTER;
        };
    };
    if ((SELF.AIVAR[8]) == (FALSE)) {
        if ((B_GETCURRENTABSOLUTIONLEVEL(SELF)) > (SELF.AIVAR[24])) {
            B_SAY(SELF, OTHER, "$WISEMOVE");
        } else if ((SELF.AIVAR[15]) == (FALSE)) {
            B_SAY_ATTACKEND();
        };
    };
    if (((OTHER.AIVAR[67]) == (TRUE)) && ((WLD_GETGUILDATTITUDE(SELF.GUILD, HERO.GUILD)) != (ATT_HOSTILE))) {
        B_SETATTITUDE(SELF, ATT_FRIENDLY);
    };
    if ((NPC_ISINSTATE(OTHER, 0xf0a3)) && (C_NPCHASATTACKREASONTOKILL(SELF))) {
        if ((OTHER.FLAGS) & (NPC_FLAG_IMPORTANT)) {
            PRINTD("Block finish");
        } else {
            B_FINISHINGMOVE(SELF, OTHER);
        };
    };
    AI_REMOVEWEAPON(SELF);
    if ((CURRENTLEVEL) != (ARCHOLOS_ENDGAME_ZEN)) {
        if ((((((C_NPCISDOWN(OTHER)) && (C_WANTTORANSACK(SELF))) && ((SELF.AIVAR[9]) != (AR_NONE))) && ((SELF.AIVAR[15]) == (FALSE))) && (((OTHER.AIVAR[10]) == (FALSE)) || (C_NPCRANSACKSALWAYS(SELF)))) && ((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_INTERMEDIAT))) {
            OTHER.AIVAR[10] = TRUE;
            if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
                AI_STARTSTATE(SELF, 0xf091, 0, "");
                return;
            };
        };
    };
    if ((SELF.ATTRIBUTE[0]) < ((SELF.ATTRIBUTE[1]) / (2))) {
        AI_STARTSTATE(SELF, 0xf08b, 0, "");
        return;
    };
}

