func void EVENTSMANAGER_QM202() {
    if ((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) {
        if ((QM202_ARWIDGUIDE_CHANGERTN) == (FALSE)) {
            if (((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM4_PATH_14")) <= (500)) && ((NPC_ISINSTATE(MIL_4017_ARWID, 61599)) == (FALSE))) {
                QM202_ARWIDGUIDE_CHANGERTN = TRUE;
                PRINTD("Zmiana RTN");
                B_STARTOTHERROUTINE(MIL_4017_ARWID, "QM202_GUIDE_V2");
                QM202_ARWID_RTNCHECK = 2;
                NPC_REFRESH(MIL_4017_ARWID);
            };
        };
        if ((QM202_ALLDIALOGUEDONE) == (FALSE)) {
            if ((QM202_RECRUITSCOUNTDIALOGUE) >= (3)) {
                QM202_ALLDIALOGUEDONE = TRUE;
                B_LOGENTRY(TOPIC_QM202, LOG_QM202_ALLDIALOGUEDONE);
            };
        };
        if ((QM202_LEAVEINN) == (1)) {
            if ((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM4_PATH_133")) <= (500)) {
                FF_APPLYONCEEXT(62983, 250, 3);
                QM202_LEAVEINN = 2;
            };
        };
        if ((QM202_ARWIDTOOKTAV) == (TRUE)) {
            if (((NPC_GETDISTTOWP(MIL_4017_ARWID, "PARTM4_PATH_14")) <= (500)) && ((NPC_ISINSTATE(MIL_4017_ARWID, 61599)) == (FALSE))) {
                QM202_ARWIDTOOKTAV = FALSE;
                PRINTD("Zmiana RTN");
                B_STARTOTHERROUTINE(MIL_4017_ARWID, "QM202_FINISH");
                QM202_ARWID_RTNCHECK = 9;
                NPC_REFRESH(MIL_4017_ARWID);
            };
        };
    };
}

