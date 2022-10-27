func void EVENTSMANAGER_Q105() {
    if ((LOG_GETSTATUS(MIS_Q105)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q105_CHANGEJORNRTN) == (FALSE)) {
        if (((NPC_KNOWSINFO(HERO, 0x1633c)) && ((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_Q105_FIGHT")) <= (350))) && ((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE))) {
            PRINTD("Zmiana RTN");
            B_STARTOTHERROUTINE(NONE_1_JORN, "Q105_FIGHT");
            NPC_REFRESH(NONE_1_JORN);
            Q105_CHANGEJORNRTN = 1;
        };
    };
    if ((Q105_CHANGEJORNRTN) == (1)) {
        if ((((Q105_GOTOBAKER) == (TRUE)) && ((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_Q105_JORN")) <= (350))) && ((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE))) {
            PRINTD("Zmiana RTN");
            B_STARTOTHERROUTINE(NONE_1_JORN, "Q105_BAKER");
            NPC_REFRESH(NONE_1_JORN);
            Q105_CHANGEJORNRTN = 2;
        };
    };
    if ((Q105_CHANGEJORNRTN) == (2)) {
        if (((NPC_KNOWSINFO(HERO, 0x16356)) && ((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_Q105_BEER")) <= (350))) && ((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE))) {
            PRINTD("Zmiana RTN");
            B_STARTOTHERROUTINE(NONE_1_JORN, "Q105_RUNTOHUT_WAIT");
            NPC_REFRESH(NONE_1_JORN);
            Q105_CHANGEJORNRTN = 3;
        };
    };
    if ((Q105_CHANGEJORNRTN) == (3)) {
        if (((NPC_KNOWSINFO(HERO, 0x16360)) && ((NPC_GETDISTTOWP(NONE_1_JORN, "VILLAGE_KURTHOUSE_03")) <= (350))) && ((NPC_ISINSTATE(NONE_1_JORN, 0xf09f)) == (FALSE))) {
            PRINTD("Zmiana RTN");
            B_STARTOTHERROUTINE(NONE_1_JORN, "Q105_KURTHOUSE_WAIT");
            NPC_REFRESH(NONE_1_JORN);
            Q105_CHANGEJORNRTN = 4;
        };
    };
    if ((JORN_Q105_ARENAFIGHT) == (1)) {
        if ((NPC_ISINSTATE(HERO, 0xf0a3)) || (NPC_ISINSTATE(NONE_1_JORN, 0xf0a3))) {
            JORN_Q105_ARENAFIGHT = 2;
            PRINTD("Po walce");
            PLAYERLOCKINVENTORY = FALSE;
        };
    };
    if ((Q105_PREPAREMEAL) == (1)) {
        if (C_GOTINGRENDIENTS_FISHVINEGAR(HERO)) {
            Q105_PREPAREMEAL = 2;
            B_LOGENTRY(TOPIC_Q105, LOG_Q105_GOTINGREDIENTS);
        };
    };
    if ((Q105_PREPAREMEAL) == (2)) {
        if ((NPC_HASITEMS(HERO, 0x8f12)) >= (1)) {
            Q105_PREPAREMEAL = 3;
            B_LOGENTRY(TOPIC_Q105, LOG_Q105_FISHREADY);
        };
    };
    if ((Q105_SEARCHINGBEER) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "VILLAGE_Q105_BEER_FOUND")) <= (300)) {
            Q105_SEARCHINGBEER = 2;
            B_LOGENTRY(TOPIC_Q105, LOG_Q105_JORN_FOUNDBEER);
        };
    };
    if ((Q105_OPENCHEST) == (1)) {
        if ((MOB_HASITEMS("Q105_BIGCHEST", 0x84c4)) == (0)) {
            Q105_OPENCHEST = 2;
            B_LOGENTRY(TOPIC_Q105, LOG_Q105_CHESTOPEN);
        };
    };
}

