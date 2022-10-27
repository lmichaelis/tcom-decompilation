func void EVENTSMANAGER_NS73() {
    if ((HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR) == (TRUE)) {
        if ((RND_NS07_M5) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS73_WAYPOINT)) >= (RNG_RADIUS_BIG2)) {
                if ((NS73_SPAWNED) == (FALSE)) {
                    PRINTD("Usuñ to");
                    PRINTD("W M5");
                    WLD_INSERTNPC(0xd26a, RNG_NS73_WAYPOINT);
                    WLD_INSERTNPC(0xd26e, "PARTM5_BELIAREVENT_02");
                    WLD_INSERTNPC(0xd272, "PARTM5_BELIAREVENT_03");
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS73_SPAWNED = 1;
                };
            };
        };
    };
}

