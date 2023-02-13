func void RESTOREROUTINE_CORTEZ() {
    if ((((((((LOG_GETSTATUS(MIS_Q301)) == (LOG_RUNNING)) && ((Q301_CORTEZ_RTNCHECK) >= (1))) || (((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) && ((Q303_CORTEZ_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_CORTEZ_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING)) && ((Q307_CORTEZ_RTNCHECK) >= (1)))) || (((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING)) && ((SQ316_CORTEZ_RTNCHECK) >= (1)))) || (((SQ503_CORTEZ_RTNCHECK) >= (1)) && ((Q509_CORTEZVOLFZACKE) == (FALSE)))) {
        if (((LOG_GETSTATUS(MIS_Q306)) == (LOG_RUNNING)) && ((Q306_CORTEZ_RTNCHECK) >= (1))) {
            if ((Q306_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "TOURNAMENT");
            } else if ((Q306_CORTEZ_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "TOURNAMENTSTOP");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) && ((Q303_CORTEZ_RTNCHECK) >= (1))) {
            if ((Q303_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "Q303_READBOOK");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q307)) == (LOG_RUNNING)) && ((Q307_CORTEZ_RTNCHECK) >= (1))) {
            if ((Q307_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "TAVERN_WAIT");
            } else if ((Q307_CORTEZ_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "TAVERN_CHECKBEN");
            } else if ((Q307_CORTEZ_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "TAVERN");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_SQ316)) == (LOG_RUNNING)) && ((SQ316_CORTEZ_RTNCHECK) >= (1))) {
            if ((SQ316_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "SQ316");
            };
            return;
        };
        if (((SQ503_CORTEZ_RTNCHECK) >= (1)) && ((Q509_CORTEZVOLFZACKE) == (FALSE))) {
            if ((SQ503_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "SQ503_TRAINING");
            };
            return;
        };
        if (((LOG_GETSTATUS(MIS_Q301)) == (LOG_RUNNING)) && ((Q301_CORTEZ_RTNCHECK) >= (1))) {
            if ((Q301_CORTEZ_RTNCHECK) == (1)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "GQ001");
            } else if ((Q301_CORTEZ_RTNCHECK) == (2)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "KILLPIRATE");
            } else if ((Q301_CORTEZ_RTNCHECK) == (3)) {
                NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, START);
            };
            return;
        };
    };
    if ((Q509_CORTEZVOLFZACKE) == (TRUE)) {
        NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, "Q509_WAIT");
    };
    NPC_EXCHANGEROUTINE(PIR_1303_CORTEZ, START);
}

