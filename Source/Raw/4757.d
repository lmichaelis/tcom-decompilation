func void EVENTSMANAGER_SQ121() {
    if (((LOG_GETSTATUS(MIS_SQ121)) == (LOG_FAILED)) || ((SQ121_HELPINGRIORDIAN) == (2))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ121)) == (LOG_RUNNING)) {
        if ((SQ121_HELPINGRIORDIAN) == (TRUE)) {
            if ((SQ121_STOPTIME) == (FALSE)) {
                if ((SQ121_WORKTOTHEMORNING) == (FALSE)) {
                    if (WLD_ISTIME(2, 0, 2, 10)) {
                        PRINTD("Zatrzymaj skalowanie czasu");
                        SQ121_STOPTIME = TRUE;
                        CHANGETIMESPEED(100);
                        SETHOLDTIME(TRUE);
                    };
                } else if (WLD_ISTIME(5, 40, 5, 50)) {
                    PRINTD("Zatrzymaj skalowanie czasu");
                    SQ121_STOPTIME = TRUE;
                    CHANGETIMESPEED(100);
                    SETHOLDTIME(TRUE);
                };
            };
            if ((SQ121_DISTANCEWARNING) == (0)) {
                if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN)) >= (0xbb8)) {
                    SQ121_DISTANCEWARNING = 1;
                    AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ121_LokvarTooFar_15_00");
                };
            } else if ((SQ121_DISTANCEWARNING) == (1)) {
                if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN)) >= (0xdac)) {
                    SQ121_DISTANCEWARNING = 2;
                    FADESCREENTOBLACKF(1, 0xf286, 1000);
                };
            };
        } else if ((SQ121_NORIORDIAN) == (FALSE)) {
            if (((LOG_GETSTATUS(MIS_Q105)) == (LOG_SUCCESS)) && ((NPC_GETDISTTOWP(HERO, "VILLAGE_CEMETERY_08")) <= (500))) {
                SQ121_NORIORDIAN = TRUE;
                LOG_SETSTATUS(_@(MIS_SQ121), TOPIC_SQ121, LOG_FAILED);
                B_LOGENTRY(TOPIC_SQ121, LOG_SQ121_FAILED_V2);
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ121)) == (LOG_SUCCESS)) {
        if ((SQ121_HELPINGRIORDIAN) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN)) >= (0xbb8)) {
                SQ121_HELPINGRIORDIAN = 2;
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN, START);
                NPC_REFRESH(KDW_203_RIORDIAN);
                TELEPORTNPCTOWP(0xdd28, KDW_203_RIORDIAN.WP);
                B_STARTOTHERROUTINE(BAU_706_LOKVAR, START);
                NPC_REFRESH(BAU_706_LOKVAR);
                TELEPORTNPCTOWP(0xe0db, BAU_706_LOKVAR.WP);
                CHANGETIMESPEED(100);
                SETHOLDTIME(FALSE);
            };
        };
    };
}

var int EVENTSMANAGER_SQ121.SQ121_NORIORDIAN = 0;
