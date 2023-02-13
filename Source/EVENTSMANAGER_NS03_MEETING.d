func void EVENTSMANAGER_NS03_MEETING() {
    if (((NS03_SPAWNED_HARBOUR) == (FALSE)) && ((NS03_SPAWNED) == (TRUE))) {
        if ((MYSTERIOUSLEONZO_DAY) <= ((WLD_GETDAY()) - (3))) {
            if ((NPC_KNOWSINFO(HERO, 72055)) && ((NPC_HASITEMS(HERO, 39847)) >= (1))) {
                if ((NPC_GETDISTTOWP(HERO, RNG_NS03PART2_WAYPOINT)) >= (RNG_RADIUS_VERYFAR)) {
                    PRINTD("Leonzo czeka w porcie");
                    NPC_EXCHANGEROUTINE(VLK_11156_MYSTERIOUSLEONZO, "BEACH");
                    TELEPORTNPCTOWP(53110, RNG_NS03PART2_WAYPOINT);
                    NS03_SPAWNED_HARBOUR = TRUE;
                };
            };
        };
    };
}

