func void EVENTSMANAGER_SQ218() {
    if ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_RUNNING)) {
        if (((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_144")) <= (0x5dc)) && ((SQ218_WHEREISHOUSE) == (FALSE))) {
            if (WLD_ISTIME(23, 0, 7, 0)) {
                B_LOGENTRY(TOPIC_SQ218, LOG_SQ218_WHEREISHOUSENIGHT);
            } else {
                B_LOGENTRY(TOPIC_SQ218, LOG_SQ218_WHEREISHOUSE);
            } else {
                SQ218_WHEREISHOUSE = TRUE;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_SUCCESS)) {
        if (((((NPC_GETDISTTOWP(HERO, "SLUMS_PATH_184")) >= (0x1388)) && ((SQ218_DAYOFPAYDAY) != (WLD_GETDAY()))) && ((SQ218_THUGSPAWN) == (FALSE))) && ((SQ218_GOLD) == (1))) {
            WLD_INSERTNPC(0xd285, "SLUMS_PATH_184");
            SQ218_THUGSPAWN = TRUE;
        };
        if ((((SQ218_THUGSPAWN) == (TRUE)) && (NPC_KNOWSINFO(HERO, 0x1084f))) && ((SQ218_THUGVANISH) == (FALSE))) {
            if ((NPC_GETDISTTONPC(HERO, NONE_10034_THUG)) >= (0x1388)) {
                B_REMOVENPC(0xd285);
                SQ218_THUGVANISH = TRUE;
            };
        };
    };
    if (((LOG_GETSTATUS(MIS_SQ218)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_SUCCESS))) {
        if ((NPC_KNOWSINFO(HERO, 0x117df)) && ((SQ218_SAILORVANISH) == (FALSE))) {
            if ((NPC_GETDISTTONPC(HERO, VLK_10033_SAILORCROOK)) >= (0x1388)) {
                B_REMOVENPC(0xd5c2);
                SQ218_SAILORVANISH = TRUE;
            };
        };
    };
}

