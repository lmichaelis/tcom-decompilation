func void EVENTSMANAGER_NS11() {
    if ((OLDCITYENTERED) == (TRUE)) {
        if ((RND_NS01_M5) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS11_WAYPOINT)) <= (RNG_RADIUS_BIG2)) {
                if ((NS11_SPAWNED) == (FALSE)) {
                    PRINTD("Zjem dla ciebie ogieñ");
                    PRINTD("W M5");
                    WLD_INSERTNPC(53839, RNG_NS11_WAYPOINT);
                    WLD_INSERTNPC(53863, "PARTM5_FIREEATER_FAN_01");
                    WLD_INSERTNPC(53860, "PARTM5_FIREEATER_FAN_02");
                    WLD_INSERTNPC(53857, "PARTM5_FIREEATER_FAN_03");
                    RANDOMEVENT_SPAWNCOUNTER();
                    NS11_SPAWNED = 1;
                };
            };
        };
    };
}

