func void EVENTSMANAGER_GQ001() {
    if ((LOG_GETSTATUS(MIS_GQ001)) != (LOG_RUNNING)) {
        return;
    };
    if ((GQ001_KURTGOTOALBYN) == (FALSE)) {
        if (NPC_KNOWSINFO(HERO, 0x1575a)) {
            if (NPC_KNOWSINFO(HERO, 0x157ed)) {
                if ((NPC_GETDISTTOWP(HERO, "VILLAGE_POORPLACE_03")) >= (0x1388)) {
                    GQ001_REMOVEFARMERS();
                    GQ001_KURTGOTOALBYN = TRUE;
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_Q201)) != (LOG_RUNNING)) {
        if ((GQ001_BRIDGEPART15) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART15_PATH_11")) < (500)) {
                B_LOGENTRY(TOPIC_GQ001, LOG_GQ001_JORNANDBRIDGE);
                GQ001_BRIDGEPART15 = TRUE;
            };
        };
        if ((GQ001_BEACHPART13) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PART_13_NAV_06")) < (500)) && (NPC_KNOWSINFO(HERO, 0x15de7))) {
                B_LOGENTRY(TOPIC_GQ001, LOG_GQ001_JORNANDBEACH);
                GQ001_BEACHPART13 = TRUE;
            };
        };
    };
    if ((Q201_SPAWNEARAXOSFASTTRAVEL) == (1)) {
        if (SPAWNARAXOSFASTTRAVELISAVAILABLE("PART2_Q201_FASTTRAVEL_01")) {
            SPAWNARAXOSFASTTRAVEL("PART2_Q201_FASTTRAVEL_01", START);
            PRINTD("FastTravel zmieni³ RTN");
        } else if (SPAWNARAXOSFASTTRAVELISAVAILABLE("PART2_Q201_FASTTRAVEL_02")) {
            SPAWNARAXOSFASTTRAVEL("PART2_Q201_FASTTRAVEL_02", "Q201_PART3");
            PRINTD("FastTravel zmieni³ RTN");
        };
    };
}

