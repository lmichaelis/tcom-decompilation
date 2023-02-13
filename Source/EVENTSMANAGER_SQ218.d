func void EVENTSMANAGER_SQ218() {
    if ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_RUNNING)) {
        if (((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_144")) <= (1500)) && ((SQ218_WHEREISHOUSE) == (FALSE))) {
            if (WLD_ISTIME(23, 0, 7, 0)) {
                B_LOGENTRY(TOPIC_SQ218, LOG_SQ218_WHEREISHOUSENIGHT);
            } else {
                B_LOGENTRY(TOPIC_SQ218, LOG_SQ218_WHEREISHOUSE);
            };
            SQ218_WHEREISHOUSE = TRUE;
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_SUCCESS)) {
        if (((((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_184")) >= (5000)) && ((SQ218_DAYOFPAYDAY) != (WLD_GETDAY()))) && ((SQ218_THUGSPAWN) == (FALSE))) && ((SQ218_GOLD) == (1))) {
            WLD_INSERTNPC(53893, "SLUMS_PATH_184");
            SQ218_THUGSPAWN = TRUE;
        };
        if ((((SQ218_THUGSPAWN) == (TRUE)) && (NPC_KNOWSINFO(HERO, 67663))) && ((SQ218_THUGVANISH) == (FALSE))) {
            if ((NPC_GETDISTTONPC(HERO, NONE_10034_THUG)) >= (5000)) {
                B_REMOVENPC(53893);
                SQ218_THUGVANISH = TRUE;
            };
        };
    };
    if (((LOG_GETSTATUS(MIS_SQ218)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_SUCCESS))) {
        if ((NPC_KNOWSINFO(HERO, 71647)) && ((SQ218_SAILORVANISH) == (FALSE))) {
            if ((NPC_GETDISTTONPC(HERO, VLK_10033_SAILORCROOK)) >= (5000)) {
                B_REMOVENPC(54722);
                SQ218_SAILORVANISH = TRUE;
            };
        };
    };
}

