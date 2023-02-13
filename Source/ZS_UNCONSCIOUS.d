func void ZS_UNCONSCIOUS() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 43309);
    if ((C_BODYSTATECONTAINS(SELF, BS_SWIM)) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) {
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 61572, 0, "");
        return;
    };
    if (NPC_ISPLAYER(SELF)) {
        TELEMETRY_PLAYERDEFEATEVENT(OTHER);
    };
    SELF.AIVAR[12] = GP_NONE;
    NPC_SETREFUSETALK(SELF, 0);
    NPC_SETTEMPATTITUDE(SELF, NPC_GETPERMATTITUDE(SELF, HERO));
    B_STOPLOOKAT(SELF);
    AI_STOPPOINTAT(SELF);
    if (((SELF.GUILD) < (GIL_SEPERATOR_HUM)) && (NPC_ISPLAYER(OTHER))) {
        SELF.AIVAR[66] = TRUE;
        SELF.AIVAR[0] = FIGHT_LOST;
        if ((SELF.AIVAR[45]) == (AF_RUNNING)) {
            SELF.AIVAR[45] = AF_AFTER;
        };
    };
    if (NPC_ISPLAYER(SELF)) {
        OTHER.AIVAR[0] = FIGHT_WON;
        if ((OTHER.AIVAR[45]) == (AF_RUNNING)) {
            OTHER.AIVAR[45] = AF_AFTER;
        };
    };
    B_GIVETRADEINV(SELF);
    B_CLEARRUNEINV(SELF);
    if (NPC_ISPLAYER(OTHER)) {
        TELEMETRY_DEFEATNPCEVENT(SELF);
    };
    if (((NPC_ISPLAYER(OTHER)) || ((OTHER.AIVAR[15]) == (TRUE))) && ((SELF.AIVAR[16]) == (FALSE))) {
        if (PLAYERFISTFIGHT) {
            if ((HLP_GETINSTANCEID(SELF)) != (PLAYERFISTFIGHT_OPPONENT)) {
                B_GIVEPLAYERXP((SELF.LEVEL) * (XP_PER_VICTORY));
            };
        } else {
            B_GIVEPLAYERXP((SELF.LEVEL) * (XP_PER_VICTORY));
        };
        SELF.AIVAR[16] = TRUE;
    };
    AI_UNEQUIPWEAPONS(SELF);
    B_CLEARFAKEITEMS(SELF);
}

func int ZS_UNCONSCIOUS_LOOP() {
    if ((PLAYERFISTFIGHT) == (TRUE)) {
        if (((HLP_GETINSTANCEID(SELF)) == (PLAYERFISTFIGHT_OPPONENT)) || (NPC_ISPLAYER(SELF))) {
            PLAYERFISTFIGHT = FALSE;
        };
    };
    if ((PLAYERFISTFIGHT) == (TRUE)) {
        if ((HLP_GETINSTANCEID(SELF)) == (PLAYERFISTFIGHT_OPPONENT)) {
            PLAYERFISTFIGHT = FALSE;
            return LOOP_END;
        };
        if (NPC_ISPLAYER(SELF)) {
            PLAYERFISTFIGHT = FALSE;
            return LOOP_END;
        };
    };
    if ((NPC_GETSTATETIME(SELF)) >= (2137)) {
        NPC_SETSTATETIME(SELF, (NPC_GETSTATETIME(SELF)) - (2137));
        return LOOP_CONTINUE;
    };
    if ((SELF.AIVAR[96]) < (0)) {
        return LOOP_CONTINUE;
    };
    if ((SELF.AIVAR[96]) > (0)) {
        if ((NPC_GETSTATETIME(SELF)) < (SELF.AIVAR[96])) {
            return LOOP_CONTINUE;
        };
        return LOOP_END;
    };
    if (NPC_ISPLAYER(SELF)) {
        PRINTD(INTTOSTRING(NPC_GETSTATETIME(SELF)));
        if ((NPC_GETSTATETIME(SELF)) < ((HAI_TIME_UNCONSCIOUS) / (2))) {
            return LOOP_CONTINUE;
        };
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) < (HAI_TIME_UNCONSCIOUS)) {
        return LOOP_CONTINUE;
    };
    return LOOP_END;
}

func void ZS_UNCONSCIOUS_END() {
    SELF.AIVAR[10] = FALSE;
    AI_STANDUP(SELF);
    SELF.AIVAR[96] = 0;
    if (NPC_ISPLAYER(SELF)) {
        return;
    };
    if ((NPC_CANSEENPCFREELOS(SELF, OTHER)) && ((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_INTERMEDIAT))) {
        B_TURNTONPC(SELF, OTHER);
        if ((CURRENTLEVEL) != (ARCHOLOS_ENDGAME_ZEN)) {
            if (((C_NPCISTOUGHGUY(SELF)) && ((NPC_GETPERMATTITUDE(SELF, OTHER)) != (ATT_HOSTILE))) && ((SELF.NPCTYPE) != (NPCTYPE_FRIEND))) {
                B_SAY(SELF, OTHER, "$NEXTTIMEYOUREINFORIT");
            } else {
                B_SAY(SELF, OTHER, "$OHMYHEAD");
            };
        };
    };
    NPC_PERCEIVEALL(SELF);
    if ((CURRENTLEVEL) != (ARCHOLOS_ENDGAME_ZEN)) {
        if ((WLD_DETECTITEM(SELF, ITEM_KAT_NF)) || (WLD_DETECTITEM(SELF, ITEM_KAT_FF))) {
            if (HLP_ISVALIDITEM(ITEM)) {
                if ((NPC_GETDISTTOITEM(SELF, ITEM)) <= (500)) {
                    AI_TAKEITEM(SELF, ITEM);
                };
            };
        };
    };
    if ((FMQ001_MARVINFIGHTINGWITHRECRUITS) == (TRUE)) {
        if ((NPC_HASITEMS(SELF, 39506)) == (0)) {
            CREATEINVITEMS(SELF, 39506, 1);
        };
    };
    AI_EQUIPBESTRANGEDWEAPON(SELF);
    AI_STARTSTATE(SELF, 61579, 0, "");
    AI_EQUIPBESTMELEEWEAPON(SELF);
}

