func void EVENTSMANAGER_CQ006() {
    if ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_RUNNING)) {
        if ((CQ006_CHANGEBEINARDRTN) == (FALSE)) {
            if ((NPC_GETDISTTOWP(VLK_6283_BEINARD, "HARBOUR_PATH_359")) <= (500)) {
                CQ006_BEINARD_RTNCHECK = 2;
                B_STARTOTHERROUTINE(VLK_6283_BEINARD, "CQ006_SHIPYARD");
                CQ006_CHANGEBEINARDRTN = TRUE;
                PRINTD("Beinard zmieni³ RTN!");
            };
        };
        if ((((((CQ006_RUUDRUNAWAY_CHECK) == (TRUE)) && ((CQ006_RUUDRUNAWAY_HARBOUR) == (FALSE))) && ((CQ006_RUUDRUNAWAY_HOURS) <= ((WLD_GETHOUR()) - (2)))) || ((((CQ006_RUUDRUNAWAY_CHECK) == (TRUE)) && ((CQ006_RUUDRUNAWAY_HARBOUR) == (FALSE))) && ((CQ006_RUUDRUNAWAY_DAY) != (WLD_GETDAY())))) || (((CQ006_CHANGERUUDRTN) == (FALSE)) && ((NPC_GETDISTTOWP(VLK_6282_RUUD, "PARTM2_PATH_30")) <= (500)))) {
            CQ006_RUUDRUNAWAY_HARBOUR = TRUE;
            PRINTD("Ruud wróci³ do pracy!");
            B_STARTOTHERROUTINE(VLK_6282_RUUD, START);
            CQ006_CHANGERUUDRTN = TRUE;
        };
        if ((CQ006_CHANGEALCHEMISTRTN) == (FALSE)) {
            if ((NPC_GETDISTTOWP(VLK_6284_FIGARO, "HARBOUR_PATH_359")) <= (500)) {
                B_STARTOTHERROUTINE(VLK_6284_FIGARO, "SHIPYARD");
                CQ006_FIGARO_RTNCHECK = 2;
                CQ006_CHANGEALCHEMISTRTN = TRUE;
                PRINTD("Cyrulik zmieni³ RTN!");
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_CQ006)) == (LOG_SUCCESS)) {
        if (((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) && ((CQ006_FIGAROWENTTOHARBOUR) == (TRUE))) {
            CQ006_FIGAROWENTTOHARBOUR = FALSE;
            B_STARTOTHERROUTINE(VLK_6284_FIGARO, "QA202_NEARMINE");
            QA202_FIGARO_RTNCHECK = 1;
            PRINTD("Figaro zmieni³ RTN");
        };
    };
}

