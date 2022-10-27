func void EVENTSMANAGER_QA203() {
    if ((LOG_GETSTATUS(MIS_QA203)) != (LOG_RUNNING)) {
        return;
    };
    if (NPC_KNOWSINFO(HERO, 0x111e9)) {
        if (HLP_ISVALIDNPC(NONE_6080_DARTHE)) {
            if (NPC_ISDEAD(NONE_6080_DARTHE)) {
                if ((QA203_ENDING) == (0)) {
                    QA203_ENDING = 3;
                    B_LOGENTRY(TOPIC_QA203, LOG_QA203_DARTHE_DEAD);
                };
            };
        };
    };
    if ((QA203_DARTHEMISSING_LOGENTRY) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PART4_HUNTER_01")) <= (1000)) {
            QA203_DARTHEMISSING_LOGENTRY = 2;
            B_LOGENTRY(TOPIC_QA203, LOG_QA203_DARTHE_MISSING);
        };
    };
}

