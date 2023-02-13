func void EVENTSMANAGER_SQ304() {
    var int SQ304_BADENDING;
    if (((LOG_GETSTATUS(MIS_SQ304)) == (LOG_FAILED)) || ((LOG_GETSTATUS(MIS_SQ304)) != (LOG_SUCCESS))) {
        return;
    };
    if ((SQ304_DAYCHECK) == (TRUE)) {
        if ((SQ304_DAY) == ((WLD_GETDAY()) - (1))) {
            PRINTD("Skrzynia na bagnach polecia³a do nieba skrzynek.");
            FF_APPLYONCEEXTGT(94344, 0, -(1));
            SQ304_DAYCHECK = 2;
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ304)) != (LOG_SUCCESS)) {
        if ((SQ304_BADENDING) == (FALSE)) {
            if (NPC_ISDEAD(PIR_1324_MORITZ)) {
                SQ304_BADENDING = TRUE;
                B_LOGENTRY(TOPIC_SQ304, LOG_SQ304_FAILED);
                LOG_SETSTATUS(_@(MIS_SQ304), TOPIC_SQ304, LOG_FAILED);
            };
        };
    };
}

func void CHANGEGOLDCHESTTREASURE_BACK() {
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEGOLDCHESTCOLISION;
    if ((CHANGEGOLDCHESTCOLISION) == (0)) {
        PRINTD("Rozpoczynam - Q304_TrapPitMover");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("MORITZ_BURRIED_TREASURE_REAL_CHEST");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        CHANGEVOBCOLLISION("GOLDCHEST_TREASURE", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_REAL_CHEST");
        CHANGEGOLDCHESTCOLISION = 1;
    };
    if (((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skoñczy³em - Q304_TrapPitMover");
        CHANGEVOBCOLLISION("GOLDCHEST_TREASURE", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(94344);
        CHANGEGOLDCHESTCOLISION = 0;
    };
}

