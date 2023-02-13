func void EVENTSMANAGER_SQ127() {
    if ((SQ127_WORKWITHGUMBERT) == (3)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ127)) == (LOG_RUNNING)) {
        if ((SQ127_WORKWITHGUMBERT) == (2)) {
            if ((MOB_HASITEMS("SQ127_VINEBOTTLES", 37016)) == (8)) {
                SQ127_WORKWITHGUMBERT = 3;
                MOB_CHANGEFOCUSNAME("SQ127_VINEBOTTLES", "MOBNAME_NOTHING");
            };
        };
    };
}

