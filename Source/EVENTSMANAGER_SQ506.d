func void EVENTSMANAGER_SQ506() {
    if ((LOG_GETSTATUS(MIS_SQ506)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ506_GOTALLSTUF) == (FALSE)) {
        if ((((NPC_HASITEMS(HERO, 37472)) >= (1)) && ((NPC_HASITEMS(HERO, 37473)) >= (1))) && ((NPC_HASITEMS(HERO, 37474)) >= (1))) {
            SQ506_GOTALLSTUF = TRUE;
            B_LOGENTRY(TOPIC_SQ506, LOG_SQ506_GOTALLSTUFF);
            B_STARTOTHERROUTINE(KDW_206_OTHEKAR, "SQ506_FOLLOW");
            NPC_REFRESH(KDW_206_OTHEKAR);
        };
    };
}

