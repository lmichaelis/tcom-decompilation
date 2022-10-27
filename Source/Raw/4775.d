func void EVENTSMANAGER_SQ224() {
    if ((LOG_GETSTATUS(MIS_SQ224)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ224_GOTSEEDS_LOGENTRY) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x89ee)) >= (10)) {
            SQ224_GOTSEEDS_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_SQ224, LOG_SQ224_GOTSEEDS);
        };
    };
    if ((SQ224_MOVER_PLANTS) == (1)) {
        if (((KAPITEL) >= ((SQ224_WAITFORHONEY) + (1))) == (TRUE)) {
            SQ224_MOVER_PLANTS = 2;
            FF_APPLYONCEEXTGT(0xf481, 0, -(1));
            WLD_SENDTRIGGER("MOVER_SQ224_BEES_01");
        };
    };
}

