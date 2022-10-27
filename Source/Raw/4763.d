func void EVENTSMANAGER_SQ201() {
    if ((LOG_GETSTATUS(MIS_SQ201)) == (LOG_SUCCESS)) {
        if ((KAPITEL) >= (3)) {
            if ((SQ201_SALZER_GOTOCITY) == (1)) {
                if ((SQ201_SALZER_GOTOCITY_DAY) <= ((WLD_GETDAY()) - (1))) {
                    SQ201_SALZER_GOTOCITY = 2;
                    SALZER_TOCITY2();
                };
            };
        };
    };
}

