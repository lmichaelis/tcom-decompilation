func void EVENTSMANAGER_SQ120() {
    if ((SQ120_AFTERQUEST) == (2)) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ120)) == (LOG_SUCCESS)) {
        if ((SQ120_AFTERQUEST) == (1)) {
            if ((SQ120_AFTERQUEST_DAY) <= ((WLD_GETDAY()) - (1))) {
                SQ120_AFTERQUEST = 2;
                SQ206_PREPARENPC();
            };
        };
    };
}

