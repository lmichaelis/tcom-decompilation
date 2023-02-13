func void EVENTSMANAGER_Q305() {
    var int Q305_COUNTHARRISWORD;
    var int Q305_COUNTGOBLINCHEST;
    var int Q305_COUNTSTEEL;
    var int Q305_COUNTJAVADCHEST;
    var int Q305_COUNTBLOODPOCKET;
    var int Q305_COUNTORE;
    var int Q305_SMUGGLERCHANGERTN;
    var int Q305_ENOUGHSTUFF;
    if ((LOG_GETSTATUS(MIS_Q305)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q305_ENOUGHSTUFF) == (FALSE)) {
        if ((Q305_ENOUGHSTUFF_COUNT) >= (7)) {
            Q305_ENOUGHSTUFF = TRUE;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_ENOUGH);
        };
    };
    if ((Q305_PREPARESCENE) == (1)) {
        if ((((NPC_GETDISTTOWP(HERO, "P17_HAVEN_IN_21")) <= (800)) && ((NPC_GETDISTTOWP(PIR_6330_CAPTAIN_ARCHOLOS, "P17_HAVEN_SMALLTALK_01")) <= (500))) && ((NPC_GETDISTTOWP(PIR_1308_SIMON, "P17_HAVEN_SMALLTALK_02")) <= (500))) {
            Q305_PREPARESCENE = 2;
            Q305_PREPAREBECKETTCUTSCENE();
        };
    };
    if ((Q305_SMUGGLERCHANGERTN) == (FALSE)) {
        if ((NPC_GETDISTTONPC(HERO, PIR_1320_SMUGGLER_ARCHOLOS)) <= (2000)) {
            B_STARTOTHERROUTINE(PIR_1320_SMUGGLER_ARCHOLOS, "Q305_FOLLOW");
            NPC_REFRESH(PIR_1320_SMUGGLER_ARCHOLOS);
            Q305_SMUGGLERCHANGERTN = TRUE;
        };
    };
    if ((Q305_JAVADFIGHT) == (1)) {
        if (NPC_ISINSTATE(NONE_6331_JAVAD, 61603)) {
            NPC_SETATTITUDE(NONE_6331_JAVAD, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(NONE_6331_JAVAD, ATT_NEUTRAL);
            NONE_6331_JAVAD.AIVAR[1] = CRIME_NONE;
            NONE_6331_JAVAD.AIVAR[0] = FIGHT_NONE;
            MDL_STARTFACEANI(NONE_6331_JAVAD, S_NEUTRAL, 1065353216, -1082130432);
            Q305_JAVADFIGHT = 2;
            NONE_6331_JAVAD.AIVAR[96] = 15;
            PRINTD("Uga buga, Javad nie ma brzucha");
        };
    };
    if ((((Q305_JAVADFIGHT) == (1)) || ((Q305_JAVADFIGHT) == (2))) || ((Q305_JAVADFIGHT) == (4))) {
        if (NPC_ISDEAD(NONE_6331_JAVAD)) {
            Q305_JAVADFIGHT = 5;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_JAVAD_FINISHHIM);
        };
    };
    if ((Q305_HARRISTATUS) == (1)) {
        if (NPC_ISDEAD(NONE_6333_HARRI)) {
            Q305_HARRISTATUS = 2;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_HARRIISDEAD);
        };
    };
    if ((Q305_BLOODTRACE) == (0)) {
        if (((((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_08")) <= (550)) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_10")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_11")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_13")) <= (550))) {
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_BLOODTRACE_V2);
            Q305_FOUNDBLOOD();
            Q305_BLOODTRACE = 2;
        } else if ((((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_01")) <= (550)) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_03")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_05")) <= (550))) {
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_BLOODTRACE_V1);
            Q305_FOUNDBLOOD();
            Q305_BLOODTRACE = 1;
        };
    };
    if (((Q305_BLOODTRACE) == (2)) || ((Q305_BLOODTRACE) == (4))) {
        if ((((((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_01")) <= (550)) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_02")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_03")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_04")) <= (550))) || ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_05")) <= (550))) {
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_BloodTrace_15_01");
            if ((NPC_HASITEMS(HERO, 37259)) >= (1)) {
                Q305_BLOODTRACE = 6;
            } else if ((Q305_BLOODTRACE) == (2)) {
                Q305_BLOODTRACE = 3;
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_BLOODTRACE_V3);
            } else if ((Q305_BLOODTRACE) == (4)) {
                Q305_BLOODTRACE = 5;
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_BLOODTRACE_V4);
            };
        };
    };
    if (((Q305_BLOODTRACE) >= (0)) && ((Q305_BLOODTRACE) < (4))) {
        if ((NPC_GETDISTTOWP(HERO, "PART17_SWAMPBLOOD_17")) <= (550)) {
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_BloodTrace_15_02");
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_BLOODTRACE_V5);
            Q305_BLOODTRACE = 4;
        };
    };
    if ((FIRENDS_BLOODTRACE_CHEST) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37258)) >= (1)) {
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
            FIRENDS_BLOODTRACE_CHEST = TRUE;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDCHEST);
        };
    };
    if ((Q305_MINERLOGENTRY) == (0)) {
        if ((NPC_HASITEMS(HERO, 37260)) >= (1)) {
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_MINERS_FIRSTPACKET);
            Q305_MINERLOGENTRY = 1;
        };
    };
    if ((Q305_MINERLOGENTRY) == (1)) {
        if ((NPC_HASITEMS(HERO, 37260)) >= (3)) {
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_MINERS_FOUNDALLPACKETS);
            Q305_MINERLOGENTRY = 2;
        };
    };
    if ((Q305_WPNPAKET_01) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37261)) == (1)) {
            Q305_WPNPAKET_01 = TRUE;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
            if ((Q305_COLLECTWEAPON) == (TRUE)) {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDWPN1_V1);
            } else {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDWPN1_V2);
            };
        };
    };
    if ((Q305_WPNPAKET_02) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37261)) == (2)) {
            Q305_WPNPAKET_02 = TRUE;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDWPN2);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_WPNPAKET_03) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37261)) == (3)) {
            Q305_WPNPAKET_03 = TRUE;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDWPN3);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_JOINTPACKETLOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37262)) >= (1)) {
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            Q305_JOINTPACKETLOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDJOINTSPACKET);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_ISLANDPALMLOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 36949)) >= (1)) {
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_FOUNDPALMBOARD);
            Q305_CHANGEPALMNAME();
            MOB_CHANGEFOCUSNAME("Q305_FIREPLACE", "MOBNAME_Q305_MAKEOAR");
            Q305_ISLANDPALMLOGENTRY = TRUE;
        };
    };
    if (((Q305_READYFORSAILCOUNT) == (2)) && ((Q305_READYTOSAILLOGENTRY) == (FALSE))) {
        B_LOGENTRY(TOPIC_Q305, LOG_Q305_HERDIS_EVERYTHINGREADY);
        Q305_READYTOSAILLOGENTRY = TRUE;
    };
    if ((Q305_HARRISWORDLOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37264)) >= (1)) {
            if ((Q305_HARRITOLDABOUTSWORD) == (TRUE)) {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_GOTSWORD_V1);
            } else {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_GOTSWORD_V2);
            };
            Q305_HARRISWORDLOGENTRY = TRUE;
        };
    };
    if ((Q305_STARTFIGHTPIRATES) == (1)) {
        if (NPC_ISDEAD(PIR_6330_CAPTAIN_ARCHOLOS)) {
            Q305_STARTFIGHTPIRATES = 3;
            if ((Q305_BECKKETDIALOGUE) == (1)) {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_BECKETTISDEAD_V1);
            } else if ((Q305_BECKKETDIALOGUE) == (2)) {
                B_LOGENTRY(TOPIC_Q305, LOG_Q305_BECKETTISDEAD_V2);
            };
        };
    };
    if ((Q305_STARTFIGHTPIRATES) == (2)) {
        if ((NPC_ISDEAD(PIR_6330_CAPTAIN_ARCHOLOS)) && (NPC_ISDEAD(PIR_13180_SMUGGLER_ARCHOLOS))) {
            Q305_STARTFIGHTPIRATES = 4;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_BECKETTISDEAD_V3);
        };
    };
    if ((Q305_STARTFIGHTPIRATES) == (5)) {
        if (NPC_ISDEAD(PIR_13180_SMUGGLER_ARCHOLOS)) {
            Q305_STARTFIGHTPIRATES = 6;
            B_LOGENTRY(TOPIC_Q305, LOG_Q305_BECKETTESCAPED_V1);
        };
    };
    if ((Q305_COUNTORE) == (0)) {
        if ((NPC_HASITEMS(HERO, 37263)) == (1)) {
            Q305_COUNTORE = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTORE) == (1)) {
        if ((NPC_HASITEMS(HERO, 37263)) == (2)) {
            Q305_COUNTORE = 2;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTORE) == (2)) {
        if ((NPC_HASITEMS(HERO, 37263)) == (3)) {
            Q305_COUNTORE = 3;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTSTEEL) == (0)) {
        if ((NPC_HASITEMS(HERO, 37260)) == (1)) {
            Q305_COUNTSTEEL = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTSTEEL) == (1)) {
        if ((NPC_HASITEMS(HERO, 37260)) == (2)) {
            Q305_COUNTSTEEL = 2;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTSTEEL) == (2)) {
        if ((NPC_HASITEMS(HERO, 37260)) == (3)) {
            Q305_COUNTSTEEL = 3;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTBLOODPOCKET) == (0)) {
        if ((NPC_HASITEMS(HERO, 37259)) >= (1)) {
            Q305_COUNTBLOODPOCKET = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTJAVADCHEST) == (0)) {
        if ((NPC_HASITEMS(HERO, 37256)) >= (1)) {
            Q305_COUNTJAVADCHEST = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTGOBLINCHEST) == (0)) {
        if ((NPC_HASITEMS(HERO, 37257)) >= (1)) {
            Q305_COUNTGOBLINCHEST = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
    if ((Q305_COUNTHARRISWORD) == (0)) {
        if ((NPC_HASITEMS(HERO, 37264)) >= (1)) {
            Q305_COUNTHARRISWORD = 1;
            Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
            PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
        };
    };
}

