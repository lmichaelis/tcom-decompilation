func void EVENTSMANAGER_NS03_MEETING() {
    if (((NS03_SPAWNED_HARBOUR) == (FALSE)) && ((NS03_SPAWNED) == (TRUE))) {
        if ((MYSTERIOUSLEONZO_DAY) <= ((WLD_GETDAY()) - (3))) {
            if ((NPC_KNOWSINFO(HERO, 0x11977)) && ((NPC_HASITEMS(HERO, 0x9ba7)) >= (1))) {
                if ((NPC_GETDISTTOWP(HERO, RNG_NS03PART2_WAYPOINT)) >= (RNG_RADIUS_VERYFAR)) {
                    PRINTD("Leonzo czeka w porcie");
                    NPC_EXCHANGEROUTINE(VLK_11156_MYSTERIOUSLEONZO, "BEACH");
                    TELEPORTNPCTOWP(0xcf76, RNG_NS03PART2_WAYPOINT);
                    NS03_SPAWNED_HARBOUR = TRUE;
                };
            };
        };
    };
}

