func void EVENTSMANAGER_NS67() {
    if ((NS67_SPAWNED) == (0)) {
        if ((LOG_GETSTATUS(MIS_SQ218)) == (LOG_SUCCESS)) {
            if (((NS67A_SPAWNED) == (FALSE)) && ((NS67B_SPAWNED) == (FALSE))) {
                if (((RND_NS_TAXCOLLECTOR) == (4)) || ((RND_NS_TAXCOLLECTOR) == (6))) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_NS67A_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                        PRINTD("Pobieram podatki");
                        PRINTD("W porcie");
                        WLD_INSERTNPC(54814, RNG_NS67A_WAYPOINT);
                        NPC_EXCHANGEROUTINE(VLK_13806_TAXCOLLECTOR, "STARTA");
                        RANDOMEVENT_SPAWNCOUNTER();
                        NS67_SPAWNED = 1;
                        NS67A_SPAWNED = 1;
                    };
                };
            };
        };
        if (((SQ411_MARVINGOTKEYS) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ411)) == (LOG_SUCCESS))) {
            if ((NS67B_SPAWNED) == (FALSE)) {
                if (((RND_NS_TAXCOLLECTOR) == (5)) || ((RND_NS_TAXCOLLECTOR) == (7))) {
                    if ((NPC_GETDISTTOWP(HERO, RNG_NS67B_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                        PRINTD("Pobieram podatki");
                        PRINTD("W porcie");
                        if ((NS67A_SPAWNED) == (FALSE)) {
                            WLD_INSERTNPC(54814, RNG_NS67A_WAYPOINT);
                        };
                        NPC_EXCHANGEROUTINE(VLK_13806_TAXCOLLECTOR, "STARTB");
                        RANDOMEVENT_SPAWNCOUNTER();
                        NS67_SPAWNED = 1;
                        NS67B_SPAWNED = 1;
                    };
                };
            };
        };
    };
}

