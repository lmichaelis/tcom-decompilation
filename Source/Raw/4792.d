func void EVENTSMANAGER_SQ316() {
    if ((LOG_GETSTATUS(MIS_SQ316)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ316_FIGHTWITHMILITIA) == (1)) {
        if ((NPC_ISDEAD(PIR_1301_GREGOR)) && (NPC_ISDEAD(PIR_1302_MORTY))) {
            SQ316_FIGHTWITHMILITIA = 2;
            SQ316_CANUSELEVER = TRUE;
            B_LOGENTRY(TOPIC_SQ316, LOG_SQ316_MILITIADEAD);
        };
    };
    if (NPC_KNOWSINFO(HERO, 0x14ce4)) {
        if ((SQ316_CORTEZDIALOGE) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_CAVE_01_LENASAFESPOT")) >= (0x157c)) {
                NPC_EXCHANGEROUTINE(VLK_6126_LENA, "UNFOLLOW");
                PRINTD("Oj nie byczq!");
                B_LOGENTRY(TOPIC_SQ316, LOG_SQ316_HOWYOUDIDTHAT);
                SQ316_CORTEZDIALOGE = 1;
            };
        };
    };
}

