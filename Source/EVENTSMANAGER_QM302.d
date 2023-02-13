func void EVENTSMANAGER_QM302() {
    var int QM302_FAILEDQUEST;
    if ((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) {
        if ((QM302_RENEGADESEVENT) == (1)) {
            if ((((MIL_11272_LEADER.ATTRIBUTE[0]) != (MIL_11272_LEADER.ATTRIBUTE[1])) || (((HLP_ISVALIDNPC(MIL_6270_JERRAN)) && ((MIL_6270_JERRAN.ATTRIBUTE[0]) != (MIL_6270_JERRAN.ATTRIBUTE[1]))) || ((HLP_ISVALIDNPC(MIL_11275_RENEGADE)) && ((MIL_11275_RENEGADE.ATTRIBUTE[0]) != (MIL_11275_RENEGADE.ATTRIBUTE[1]))))) || (((HLP_ISVALIDNPC(MIL_6271_RENEGADE)) && ((MIL_6271_RENEGADE.ATTRIBUTE[0]) != (MIL_6271_RENEGADE.ATTRIBUTE[1]))) || ((HLP_ISVALIDNPC(MIL_11276_RENEGADE)) && ((MIL_11276_RENEGADE.ATTRIBUTE[0]) != (MIL_11276_RENEGADE.ATTRIBUTE[1]))))) {
                QM302_RENEGADESEVENT = 2;
                PRINTD("Atakuja");
                QM302_RENEGADESATTACK_REFRESH();
                QM302_RENEGADESATTACK();
            };
            if (((NPC_GETDISTTONPC(HERO, MIL_11272_LEADER)) <= (700)) && ((NPC_ISINSTATE(SLD_1018_DOCAN, 61599)) == (FALSE))) {
                QM302_RENEGADESEVENT = 3;
                PRINTD("Cutscenka");
                HERO.AIVAR[4] = TRUE;
                QM302_PREPARECUTSCENE();
            };
        };
        if ((DETLOWDIED) == (TRUE)) {
            if (NPC_KNOWSINFO(HERO, 71115)) {
                if ((QM302_FAILEDQUEST) == (FALSE)) {
                    B_LOGENTRY(TOPIC_QM302, LOG_QM302_DETLOWDIED);
                    LOG_SETSTATUS(_@(MIS_QM302), TOPIC_QM302, LOG_FAILED);
                    QM302_FAILEDQUEST = TRUE;
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_QM302)) == (LOG_SUCCESS)) {
        if ((QM302_DETLOWTRAINING) == (1)) {
            if ((QM302_DETLOWTRAINING_DAY) <= ((WLD_GETDAY()) - (1))) {
                QM302_DETLOWTRAINING = 2;
                QM302_FINISHTRAINING();
            };
        };
    };
}

