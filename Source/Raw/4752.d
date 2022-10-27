func void EVENTSMANAGER_SQ114() {
    if (((SQ114_BEARISDEAD) == (TRUE)) || ((SQ114_BADENDING) == (TRUE))) {
        return;
    };
    if ((SQ114_BEARISDEAD) == (FALSE)) {
        if ((SQ114_BEARLOG) == (FALSE)) {
            if ((NPC_ISDEAD(BEAR_SQ114)) == (FALSE)) {
                if ((NPC_GETDISTTONPC(HERO, BEAR_SQ114)) <= (0x4b0)) {
                    if ((LOG_GETSTATUS(MIS_SQ114)) == (LOG_RUNNING)) {
                        B_LOGENTRY(TOPIC_SQ114, LOG_SQ114_BEARLOG);
                    } else {
                        SQ114_BEARLOGV2 = TRUE;
                    } else {
                        SQ114_BEARLOG = TRUE;
                    };
                };
            };
        };
        if (((SQ114_BEARLOGV2) == (TRUE)) && ((SQ114_BEARLOGALTERNATIVE) == (FALSE))) {
            if ((LOG_GETSTATUS(MIS_SQ114)) == (LOG_RUNNING)) {
                B_LOGENTRY(TOPIC_SQ114, LOG_SQ114_BEARLOGV2);
            };
            SQ114_BEARLOGALTERNATIVE = TRUE;
        };
        if (NPC_ISDEAD(BEAR_SQ114)) {
            if ((LOG_GETSTATUS(MIS_SQ114)) == (LOG_RUNNING)) {
                B_LOGENTRY(TOPIC_SQ114, LOG_SQ114_BEARISDEAD);
            };
            SQ114_BEARISDEAD = TRUE;
        } else if ((SQ114_ENDING) == (1)) {
            if ((SQ114_ENDING_DAY) == ((WLD_GETDAY()) - (1))) {
                if ((NPC_GETDISTTONPC(HERO, NONE_10032_BEVIN)) >= (0x4e2)) {
                    if ((SQ114_BADENDING) == (FALSE)) {
                        SQ114_BADENDING = TRUE;
                        SQ114_BEVINBADENDING();
                    };
                };
            };
        };
    };
}

