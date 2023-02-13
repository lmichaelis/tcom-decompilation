func void B_CHEERFIGHT() {
    var int RANDOMWATCHFIGHTYEAH;
    var int RANDOMWATCHFIGHTOHNO;
    var int ZUFALL;
    if ((NPC_GETSTATETIME(SELF)) <= (2)) {
        return;
    };
    if (((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) || ((VICTIM.GUILD) > (GIL_SEPERATOR_HUM))) {
        return;
    };
    NPC_SETSTATETIME(SELF, 0);
    if (C_NPCISTOUGHGUY(SELF)) {
        ZUFALL = HLP_RANDOM(3);
        if (((NPC_GETATTITUDE(SELF, VICTIM)) == (ATT_FRIENDLY)) && ((NPC_GETATTITUDE(SELF, OTHER)) != (ATT_FRIENDLY))) {
            if ((ZUFALL) == (0)) {
                B_SAY_OVERLAY(SELF, SELF, "$OOH01");
            };
            if ((ZUFALL) == (1)) {
                B_SAY_OVERLAY(SELF, SELF, "$OOH02");
            };
            if ((ZUFALL) == (2)) {
                B_SAY_OVERLAY(SELF, SELF, "$OOH03");
            };
            RANDOMWATCHFIGHTOHNO = HLP_RANDOM(3);
            if ((RANDOMWATCHFIGHTOHNO) == (0)) {
                AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO");
                RANDOMWATCHFIGHTOHNO = 0;
            };
            if ((RANDOMWATCHFIGHTOHNO) == (1)) {
                AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_02");
                RANDOMWATCHFIGHTOHNO = 0;
            };
            if ((RANDOMWATCHFIGHTOHNO) == (2)) {
                AI_PLAYANI(SELF, "T_WATCHFIGHT_OHNO_03");
                RANDOMWATCHFIGHTOHNO = 0;
            };
        } else if ((ZUFALL) == (0)) {
            B_SAY_OVERLAY(SELF, SELF, "$CHEERFRIEND01");
        };
        if ((ZUFALL) == (1)) {
            B_SAY_OVERLAY(SELF, SELF, "$CHEERFRIEND02");
        };
        if ((ZUFALL) == (2)) {
            B_SAY_OVERLAY(SELF, SELF, "$CHEERFRIEND03");
        };
        RANDOMWATCHFIGHTYEAH = HLP_RANDOM(3);
        if ((RANDOMWATCHFIGHTYEAH) == (0)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH");
            RANDOMWATCHFIGHTYEAH = 0;
        };
        if ((RANDOMWATCHFIGHTYEAH) == (1)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_02");
            RANDOMWATCHFIGHTYEAH = 0;
        };
        if ((RANDOMWATCHFIGHTYEAH) == (2)) {
            AI_PLAYANI(SELF, "T_WATCHFIGHT_YEAH_03");
            RANDOMWATCHFIGHTYEAH = 0;
        };
    };
}

func void B_ASSESSDEFEAT() {
    NPC_CLEARAIQUEUE(SELF);
    if ((C_NPCISTOUGHGUY(SELF)) || ((NPC_ISPLAYER(OTHER)) && ((SELF.NPCTYPE) == (NPCTYPE_FRIEND)))) {
        if ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) {
            B_SAY(SELF, OTHER, "$GOODVICTORY");
        } else {
            B_SAY(SELF, OTHER, "$NOTBAD");
        };
    };
    if ((VICTIM.AIVAR[9]) != (AR_NONE)) {
        B_SAY(SELF, OTHER, "$OHMYGODHESDOWN");
        if ((VICTIM.GUILD) != (GIL_NONE)) {
            B_MEMORIZEPLAYERCRIME(SELF, OTHER, CRIME_ATTACK);
        };
    };
    B_SAY(SELF, OTHER, "$NOTBAD");
}

func void ZS_WATCHFIGHT() {
    NPC_PERCENABLE(SELF, PERC_ASSESSDEFEAT, 61610);
    NPC_PERCENABLE(SELF, PERC_ASSESSOTHERSDAMAGE, 61606);
    PERCEPTION_SET_MINIMAL();
    AI_STANDUP(SELF);
    B_TURNTONPC(SELF, VICTIM);
    AI_REMOVEWEAPON(SELF);
    if ((((((NPC_GETDISTTONPC(SELF, OTHER)) < (PERC_DIST_INTERMEDIAT)) || ((NPC_GETDISTTONPC(SELF, VICTIM)) < (PERC_DIST_INTERMEDIAT))) && (!(NPC_ISINSTATE(OTHER, 61603)))) && (!(NPC_ISINSTATE(VICTIM, 61603)))) && (((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) && ((VICTIM.GUILD) < (GIL_SEPERATOR_HUM)))) {
        if (C_NPCISTOUGHGUY(SELF)) {
            B_SAY(SELF, OTHER, "$THERESAFIGHT");
        } else {
            B_SAY(SELF, OTHER, "$OHMYGODITSAFIGHT");
        };
    };
    SELF.AIVAR[19] = NOTINPOS;
    SELF.AIVAR[68] = 0;
}

func int ZS_WATCHFIGHT_LOOP() {
    if (((NPC_GETDISTTONPC(SELF, OTHER)) > (WATCHFIGHT_DIST_MAX)) && ((NPC_GETDISTTONPC(SELF, VICTIM)) > (WATCHFIGHT_DIST_MAX))) {
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    if (((!((NPC_ISINSTATE(OTHER, 61615)) || (NPC_ISINSTATE(OTHER, 61591)))) && (!((NPC_ISINSTATE(VICTIM, 61615)) || (NPC_ISINSTATE(VICTIM, 61591))))) && ((NPC_GETSTATETIME(SELF)) > (0))) {
        if ((((NPC_ISINSTATE(OTHER, 61603)) || (NPC_ISINSTATE(VICTIM, 61603))) || (NPC_ISINSTATE(OTHER, 61572))) || (NPC_ISINSTATE(VICTIM, 61572))) {
            if ((SELF.AIVAR[19]) == (NOTINPOS)) {
                SELF.AIVAR[19] = ISINPOS;
                return LOOP_CONTINUE;
            };
            NPC_CLEARAIQUEUE(SELF);
            return LOOP_END;
        };
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    if (C_NPCISTOUGHGUY(SELF)) {
    };
    if (((NPC_GETDISTTONPC(SELF, OTHER)) <= (WATCHFIGHT_DIST_MIN)) || ((NPC_GETDISTTONPC(SELF, VICTIM)) <= (WATCHFIGHT_DIST_MIN))) {
        if ((PLAYERFISTFIGHT) == (FALSE)) {
            NPC_CLEARAIQUEUE(SELF);
            if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (NPC_GETDISTTONPC(SELF, VICTIM))) {
                B_TURNTONPC(SELF, VICTIM);
            } else {
                B_TURNTONPC(SELF, OTHER);
            };
            AI_DODGE(SELF);
        } else if ((NPC_GETSTATETIME(SELF)) != (SELF.AIVAR[68])) {
            if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (NPC_GETDISTTONPC(SELF, VICTIM))) {
                B_TURNTONPC(SELF, OTHER);
            } else {
                B_TURNTONPC(SELF, VICTIM);
            };
            SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
        };
    };
    if ((NPC_GETSTATETIME(SELF)) != (SELF.AIVAR[68])) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (NPC_GETDISTTONPC(SELF, VICTIM))) {
            B_TURNTONPC(SELF, OTHER);
        } else {
            B_TURNTONPC(SELF, VICTIM);
        };
        SELF.AIVAR[68] = NPC_GETSTATETIME(SELF);
    };
    return LOOP_CONTINUE;
}

func void ZS_WATCHFIGHT_END() {
}

