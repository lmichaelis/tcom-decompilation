func void EVENTSMANAGER_NS44_TRANSFORM() {
    if ((NS44_TRANSFORM) == (FALSE)) {
        if (((NS44_SPAWNED) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ417)) != (LOG_RUNNING))) {
            if (((NPC_GETDISTTOWP(HERO, RNG_NS44_WAYPOINT)) >= (RNG_RADIUS_MORETHENNORMAL)) && ((NPC_GETDISTTONPC(HERO, DJG_13699_CRAZYWOLFSON)) >= (RNG_RADIUS_MORETHENNORMAL))) {
                if (NPC_KNOWSINFO(HERO, 0x14227)) {
                    NPC_EXCHANGEROUTINE(DJG_13699_CRAZYWOLFSON, TOT);
                    TELEPORTNPCTOWP(0xe414, TOT2);
                    B_KILLNPC(0xe414);
                    NS44_TRANSFORM = TRUE;
                    PRINTD("Szalony wilczy syn to teraz szalony wilczy");
                    WLD_INSERTNPC(0xc77e, RNG_NS44_WAYPOINT);
                };
            };
        };
    };
}

