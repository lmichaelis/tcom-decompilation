func void EVENTSMANAGER_SQ126() {
    var int SQ126_GOTWATEROFBUCKET_LOGENTRY;
    var int SQ126_FEILSLEEP_LOGENTRY;
    if (((SQ126_FEILAFTERQUEST) == (2)) || ((SQ126_FAILEDQUEST) == (2))) {
        return;
    };
    if ((LOG_GETSTATUS(MIS_SQ126)) == (LOG_RUNNING)) {
        if ((SQ126_FEILWAKEUP) == (FALSE)) {
            if ((BAU_13770_FEIL.ATTRIBUTE[0]) <= ((BAU_13770_FEIL.ATTRIBUTE[1]) / (2))) {
                EVT_SQ126_FEILWAKEUP();
            };
        };
        if ((SQ126_FEILSLEEP_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, BAU_13770_FEIL)) <= (500)) {
                SQ126_FEILSLEEP_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FEILSLEEP);
            };
        } else if ((SQ126_GOTWATEROFBUCKET_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 36961)) >= (1)) {
                if ((NPC_KNOWSINFO(HERO, 80556)) == (FALSE)) {
                    SQ126_GOTWATEROFBUCKET_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ126, LOG_SQ126_GOTWATEROFBUCKET);
                };
            };
        };
        if ((NPC_KNOWSINFO(HERO, 80560)) == (FALSE)) {
            if ((SQ126_SEARCHINGFORFIEL) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_GRAPEFIELD_101")) <= (700)) {
                    SQ126_SEARCHINGFORFIEL = 2;
                    B_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FEILLOST);
                };
            } else if ((SQ126_SEARCHINGFORFIEL) == (2)) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_PATH_165")) <= (650)) {
                    SQ126_SEARCHINGFORFIEL = 3;
                    B_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FEILUP);
                };
            };
        };
        if (((SQ225_FIGHTINVINEYARD) >= (1)) || ((SQ225_FIGHTINVINEYARD_HOLDWIG) >= (1))) {
            if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_FIGHT_08")) <= (650)) {
                if ((SQ126_FAILEDQUEST) == (FALSE)) {
                    SQ126_FAILEDQUEST = TRUE;
                    LOG_CREATETOPIC(TOPIC_SQ126, LOG_MISSION);
                    LOG_SETSTATUS(_@(MIS_SQ126), TOPIC_SQ126, LOG_FAILED);
                    B_LOGENTRY(TOPIC_SQ126, LOG_SQ126_FAILED);
                } else if ((SQ126_FAILEDQUEST) == (1)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_FIGHT_08")) >= (2000)) {
                        SQ126_FAILEDQUEST = 2;
                        FF_APPLYONCEEXTGT(61070, 0, -(1));
                    };
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ126)) == (LOG_SUCCESS)) {
        if ((SQ126_FEILAFTERQUEST) == (1)) {
            if ((SQ126_FEILAFTERQUEST_DAY) <= ((WLD_GETDAY()) - (2))) {
                if ((NPC_GETDISTTONPC(HERO, BAU_13770_FEIL)) >= (2500)) {
                    if ((SQ126_FEIL_RESULTS) == (1)) {
                        if ((SQ126_PAYEDFEIL) == (TRUE)) {
                            FF_APPLYONCEEXTGT(62195, 0, -(1));
                            SQ126_FEILAFTERQUEST = 2;
                        };
                    } else {
                        B_STARTOTHERROUTINE(BAU_13770_FEIL, "SQ126_CITY");
                        NPC_REFRESH(BAU_13770_FEIL);
                        TELEPORTNPCTOWP(57032, BAU_13770_FEIL.WP);
                        SQ126_FEILAFTERQUEST = 2;
                    };
                };
            };
        };
    };
}

