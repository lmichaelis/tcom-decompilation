func void RESTOREROUTINE_MORITZ() {
    if (((((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) && ((SQ304_MORITZ_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_MORITZ_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_MORITZ_RTNCHECK) >= (1)))) {
        if (((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) && ((SQ304_MORITZ_RTNCHECK) >= (1))) {
            if ((SQ304_MORITZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "Treasure01");
            } else if ((SQ304_MORITZ_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "Treasure01Plunder");
            } else if ((SQ304_MORITZ_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "Treasure02");
            } else if ((SQ304_MORITZ_RTNCHECK) == (4)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "Treasure03");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_MORITZ_RTNCHECK) >= (1))) {
            if ((Q306_MORITZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "TOURNAMENT");
            } else if ((Q306_MORITZ_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "TOURNAMENTSTOP");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_MORITZ_RTNCHECK) >= (1))) {
            if ((SQ503_MORITZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "SQ503_FINALFIGHT");
            };
            return;
        };
    };
    if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) && ((KAPITEL) < (4))) {
        NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "TAVERN");
    };
    if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_SUCCESS)) {
        NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, TOT);
    };
    NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, START);
}

