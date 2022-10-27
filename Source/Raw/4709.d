func void EVENTSMANAGER_Q404_ARCHOLOS() {
    if ((LOG_GETSTATUS(MIS_Q404)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q404_MARVINFINISHEDMINE) == (TRUE)) {
        if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_CITADEL_23")) <= (1000)) {
            Q404_MARVINFINISHEDMINE = 2;
            CITYAFTERMINE_CHANGESINCITY();
            B_STARTOTHERROUTINE(NONE_16_IVY, TOT);
            TELEPORTNPCTOWP(0xe4af, TOT);
            if ((Q404_JONSTATUS) == (3)) {
                B_LOGENTRY(TOPIC_Q404, LOG_Q404_FINISH_V2);
            } else if ((Q404_JONSTATUS) == (4)) {
                B_LOGENTRY(TOPIC_Q404, LOG_Q404_FINISH_V1);
            };
            B_GIVEPLAYERXP(XP_Q404_FINISH);
            LOG_SETSTATUS(_@(MIS_Q404), TOPIC_Q404, LOG_SUCCESS);
        };
    };
    if ((Q404_SPAWNHAVARD) == (FALSE)) {
        if ((Q404_GUARDMINE_COUNT) >= (1)) {
            PRINTD("Havard spawn");
            Q404_SPAWNHAVARD = TRUE;
            WLD_INSERTNPC(0xe3e7, "WOLFSDEN_CITADEL_LEAN_01");
        };
    };
    if (((Q404_GUARDMINE_COUNT) >= (2)) && ((Q404_HELPFORGUARDMINE_LOGENTRY) == (FALSE))) {
        Q404_HELPFORGUARDMINE_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_Q404, LOG_Q404_GUARD_GOTHELP);
    };
    if ((Q404_DALMONSTATUS) == (1)) {
        if (((NPC_GETDISTTOWP(DJG_10027_DALMON, "WOLFSDEN_CITADEL_10")) <= (500)) && ((NPC_ISINSTATE(DJG_10027_DALMON, 0xf09f)) == (FALSE))) {
            Q404_DALMONSTATUS = 2;
            PRINTD("Dalmon dobieg³ do Ulryka");
            B_STARTOTHERROUTINE(DJG_10027_DALMON, "RUNMINE");
            NPC_REFRESH(DJG_10027_DALMON);
        };
    };
    if ((Q404_DALMONSTATUS) == (2)) {
        if (((NPC_GETDISTTOWP(DJG_10027_DALMON, "WOLFSDEN_CITADEL_HELP_04")) <= (500)) && ((NPC_ISINSTATE(DJG_10027_DALMON, 0xf09f)) == (FALSE))) {
            Q404_GUARDMINE_COUNT = (Q404_GUARDMINE_COUNT) + (1);
            Q404_DALMONSTATUS = 3;
            PRINTD("Dalmon dobieg³ do kopalni");
            PRINTD("+1 stra¿ników kopalni");
            PRINTD(CS2("Aktualna liczba stra¿ników: ", INTTOSTRING(Q404_GUARDMINE_COUNT)));
            B_STARTOTHERROUTINE(DJG_10027_DALMON, "GUARDMINE");
            NPC_REFRESH(DJG_10027_DALMON);
        };
    };
    if ((Q404_LEGRIFSTATUS) == (1)) {
        if (((NPC_GETDISTTOWP(DJG_10017_LEGRIF, "WOLFSDEN_CITADEL_HELP_03")) <= (500)) && ((NPC_ISINSTATE(DJG_10017_LEGRIF, 0xf09f)) == (FALSE))) {
            Q404_GUARDMINE_COUNT = (Q404_GUARDMINE_COUNT) + (1);
            Q404_LEGRIFSTATUS = 2;
            PRINTD("Legrif dobieg³ do kopalni");
            PRINTD("+1 stra¿ników kopalni");
            PRINTD(CS2("Aktualna liczba stra¿ników: ", INTTOSTRING(Q404_GUARDMINE_COUNT)));
            B_STARTOTHERROUTINE(DJG_10017_LEGRIF, "GUARDMINE");
            NPC_REFRESH(DJG_10017_LEGRIF);
        };
    };
    if ((Q404_VAHRALSTATUS) == (1)) {
        if (((NPC_GETDISTTOWP(DJG_10014_VAHRAL, "WOLFSDEN_CITADEL_HELP_02")) <= (500)) && ((NPC_ISINSTATE(DJG_10014_VAHRAL, 0xf09f)) == (FALSE))) {
            Q404_GUARDMINE_COUNT = (Q404_GUARDMINE_COUNT) + (1);
            Q404_VAHRALSTATUS = 2;
            PRINTD("Vahral dobieg³ do kopalni");
            PRINTD("+1 stra¿ników kopalni");
            PRINTD(CS2("Aktualna liczba stra¿ników: ", INTTOSTRING(Q404_GUARDMINE_COUNT)));
            B_STARTOTHERROUTINE(DJG_10014_VAHRAL, "GUARDMINE");
            NPC_REFRESH(DJG_10014_VAHRAL);
        };
    };
    if ((Q404_GRONSTATUS) == (1)) {
        if (((NPC_GETDISTTOWP(DJG_10011_GRON, "WOLFSDEN_CITADEL_HELP_01")) <= (500)) && ((NPC_ISINSTATE(DJG_10011_GRON, 0xf09f)) == (FALSE))) {
            Q404_GUARDMINE_COUNT = (Q404_GUARDMINE_COUNT) + (1);
            Q404_GRONSTATUS = 2;
            PRINTD("Vahral dobieg³ do kopalni");
            PRINTD("+1 stra¿ników kopalni");
            PRINTD(CS2("Aktualna liczba stra¿ników: ", INTTOSTRING(Q404_GUARDMINE_COUNT)));
            B_STARTOTHERROUTINE(DJG_10011_GRON, "GUARDMINE");
            NPC_REFRESH(DJG_10011_GRON);
        };
    };
}

var int EVENTSMANAGER_Q404_ARCHOLOS.Q404_SPAWNHAVARD = 0;
