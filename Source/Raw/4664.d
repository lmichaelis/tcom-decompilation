func void EVENTSMANAGER_FMQ002() {
    if ((LOG_GETSTATUS(MIS_FMQ002)) != (LOG_RUNNING)) {
        return;
    };
    if ((FMQ002_KNOWSODGAR) == (FALSE)) {
        if (((PEON_ODGAR) == (TRUE)) && ((NPC_ISINSTATE(MIL_4000_RODERICH, 0xf09f)) == (FALSE))) {
            FMQ002_KNOWSODGAR = TRUE;
            B_LOGENTRY(TOPIC_FMQ002, LOG_FMQ002_ODGARPEON);
        };
    };
    if (((FMQ002_LETSFIGHT) == (1)) && ((FMQ002_GOTSWORD) != (1))) {
        if (((FMQ002_HOUROFARWIDFIGHT) <= ((WLD_GETHOUR()) - (2))) || ((FMQ002_DAYOFARWIDFIGHT) != (WLD_GETDAY()))) {
            if (((FMQ002_FORFEITSTATUS) == (0)) && ((NPC_GETDISTTONPC(HERO, MIL_4017_ARWID)) >= (0x1964))) {
                FMQ002_FORFEITSTATUS = 1;
                PRINTD("Mine³y 2 godziny");
                FMQ002_LETSFIGHT = 0;
                FMQ002_FIGHTWITHARWIDSTATUS = 2;
                FMQ002_FIGHTWITHARWID = FALSE;
                FMQ002_ARWIDADDITIONALSTATUS = 2;
                NPC_EXCHANGEROUTINE(MIL_4017_ARWID, START);
                B_LOGENTRY(TOPIC_FMQ002, LOG_FMQ002_FORFEITWITHARWID);
                PRINTD("Przegapi³eœ walkê!");
            };
        };
    };
    if ((HLP_ISVALIDNPC(MIL_4017_ARWID)) == (FALSE)) {
        return;
    };
    if ((((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM8_PATH_04")) <= (300)) && ((NPC_ISINSTATE(MIL_4017_ARWID, 0xf09f)) == (FALSE))) && ((CHANGERTNARWID) == (FALSE))) {
        B_STARTOTHERROUTINE(MIL_4017_ARWID, "FightWait");
        NPC_REFRESH(MIL_4017_ARWID);
        CHANGERTNARWID = TRUE;
        PRINTD("Arwid zmieni³ rutynê!");
    };
}

