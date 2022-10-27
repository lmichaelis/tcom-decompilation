func void EVENTSMANAGER_SQ504() {
    if ((LOG_GETSTATUS(MIS_SQ504)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(HERO, 0x139cb)) {
            if (((RESERVED_VAR_INT_12) == (1)) && ((NPC_KNOWSINFO(HERO, 0x139d0)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(HERO, RESERVED_CONST_STRING_58)) <= (0x4b0)) {
                    B_LOGENTRY(TOPIC_SQ504, RESERVED_CONST_STRING_60);
                    RESERVED_VAR_INT_12 = 2;
                    if ((NPC_ISINROUTINE(NONE_202_KESSEL, 0xdd8e)) == (FALSE)) {
                        PRINTD(PRINT_TOURNAMENTREST);
                        SQ504_KESSEL_RTNCHECK = 1;
                        B_STARTOTHERROUTINE(NONE_202_KESSEL, RESERVED_CONST_STRING_59);
                        NPC_REFRESH(NONE_202_KESSEL);
                        TELEPORTNPCTOWP(0xdd70, NONE_202_KESSEL.WP);
                    };
                };
            };
            if ((SQ504_KESSELWAITTOGUIDE) == (1)) {
                if (((NPC_GETDISTTONPC(HERO, NONE_202_KESSEL)) <= (0x5dc)) && ((NPC_ISINSTATE(NONE_202_KESSEL, 0xf09f)) == (FALSE))) {
                    SQ504_KESSELWAITTOGUIDE = 2;
                    B_STARTOTHERROUTINE(NONE_202_KESSEL, "SQ504_GUIDE");
                    NPC_REFRESH(NONE_202_KESSEL);
                };
            };
            if ((SQ504_TELEPORTKESSELONWP) == (FALSE)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_202_KESSEL)) >= (0x1388)) {
                    PRINTD(WORLD_HAVEN);
                    if ((SQ504_KESSEL_RTNCHECK) == (1)) {
                        if (SPAWNKESSELISAVAILABLE("PART14_PATH_13")) {
                            SQ504_TELEPORTKESSELONWP = TRUE;
                            SPAWNKESSEL("PART14_SQ504_KESSEL_WAIT", "SQ504_WAITBRIDGE");
                            PRINTD("Kessel Teleport! 1");
                        };
                    } else if ((SQ504_KESSEL_RTNCHECK) == (2)) {
                        if (SPAWNKESSELISAVAILABLE("PART14_PATH_13")) {
                            SQ504_TELEPORTKESSELONWP = TRUE;
                            SQ504_KESSELWAITTOGUIDE = 1;
                            SPAWNKESSEL("PART14_SQ504_KESSEL_WAIT", "SQ504_WAITBRIDGE");
                            PRINTD("Kessel Teleport! 2");
                        };
                    } else if ((SQ504_KESSEL_RTNCHECK) == (3)) {
                        if (SPAWNKESSELISAVAILABLE("PART14_PATH_25")) {
                            SQ504_TELEPORTKESSELONWP = TRUE;
                            SPAWNKESSEL("PART14_SQ504_KESSEL", "SQ504_JOINCIRCLE");
                            PRINTD("Kessel Teleport! 3");
                        };
                    };
                };
            } else if ((NPC_GETDISTTONPC(HERO, NONE_202_KESSEL)) >= (0x1d4c)) {
                Q203_MILITIAGUILDREPUTATION = 0;
                SQ504_KESSELWAITTOGUIDE = 0;
                SQ504_TELEPORTKESSELONWP = FALSE;
                DUMMYFUNCWITHSTRINGPARAMETER("Q505_WAITCAMP");
                RESTOREROUTINE_KESSEL();
            };
        };
    };
}

