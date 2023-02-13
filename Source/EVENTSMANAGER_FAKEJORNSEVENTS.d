func void EVENTSMANAGER_FAKEJORNSEVENTS() {
    if ((LOG_GETSTATUS(MIS_Q405)) != (LOG_RUNNING)) {
        if ((((LOG_GETSTATUS(MIS_Q205)) == (LOG_SUCCESS)) && ((NS12_FAKEJORN01) == (FALSE))) && ((NPC_GETDISTTOWP(HERO, RNG_NS12_FAKEJORN01_WAYPOINT)) <= (RNG_RADIUS_MEDIUM))) {
            PRINTD("Fa³szywy Jorn przy stra¿y miejskiej");
            WLD_INSERTNPC(53089, RNG_NS12_FAKEJORN01_WAYPOINT);
            WLD_INSERTNPC(52704, "PARTM3_PATH_175");
            WLD_INSERTNPC(52701, "PARTM3_PATH_173");
            NS12_FAKEJORN01 = TRUE;
            NS12_FAKEJORNDAY = WLD_GETDAY();
        };
        if ((LOG_GETSTATUS(MIS_Q206)) == (LOG_SUCCESS)) {
            if (((Q206_AFTERQUEST) >= (1)) && ((Q206_AFTERQUEST_DAY) <= ((WLD_GETDAY()) - (2)))) {
                if (((NS12_FAKEJORN02) == (FALSE)) && ((NPC_GETDISTTOWP(HERO, RNG_NS12_FAKEJORN02_WAYPOINT)) <= (RNG_RADIUS_MEDIUM))) {
                    PRINTD("Fa³szywy Jorn przy Araxos");
                    WLD_INSERTNPC(52274, RNG_NS12_FAKEJORN02_WAYPOINT);
                    WLD_INSERTNPC(51871, "PARTM1_JOINARAXOS_SLD_02");
                    WLD_INSERTNPC(51874, "PARTM1_JOINARAXOS_SLD_04");
                    NS12_FAKEJORN02 = TRUE;
                    NS12_FAKEJORNDAY = WLD_GETDAY();
                };
            };
        };
    };
    if ((NS12_FAKEJORNDESPAWN) == (FALSE)) {
        if (((NS12_FAKEJORN01) == (TRUE)) || ((NS12_FAKEJORN02) == (TRUE))) {
            if (((NS12_FAKEJORNDAY) != (WLD_GETDAY())) || ((LOG_GETSTATUS(MIS_Q405)) == (LOG_RUNNING))) {
                if ((NS12_FAKEJORN01) == (TRUE)) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_NS12_FAKEJORN01_WAYPOINT)) >= (RNG_RADIUS_VERYFAR)) {
                        B_REMOVENPC(53089);
                        B_REMOVENPC(52704);
                        B_REMOVENPC(52701);
                        PRINTD("Fa³szywy Jorn przy stra¿y miejskiej SOBIE POSZED£");
                        NS12_FAKEJORNDESPAWN = TRUE;
                    };
                };
                if ((NS12_FAKEJORN02) == (TRUE)) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_NS12_FAKEJORN02_WAYPOINT)) >= (RNG_RADIUS_VERYFAR)) {
                        B_REMOVENPC(52274);
                        B_REMOVENPC(51871);
                        B_REMOVENPC(51874);
                        PRINTD("Fa³szywy Jorn przy Araxos SOBIE POSZED£");
                        NS12_FAKEJORNDESPAWN = TRUE;
                    };
                };
            };
        };
    };
}

