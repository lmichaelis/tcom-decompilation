func void EVENTSMANAGER_NS36_CURSE() {
    if ((NS36_CUPSCURSE) == (FALSE)) {
        if ((NS36_SPAWNED) == (TRUE)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS36_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE3)) {
                if ((CREEPYTRADER_CURSEDCUPS_COUNTER) >= (1)) {
                    NPC_EXCHANGEROUTINE(NONE_13612_CREEPYTRADER, TOT);
                    TELEPORTNPCTOWP(57293, TOT2);
                    NPC_REMOVEINVITEMS(HERO, 38215, CREEPYTRADER_CURSEDCUPS_COUNTER);
                    CREATEINVITEMS(HERO, 38216, CREEPYTRADER_CURSEDCUPS_COUNTER);
                    NS36_CUPSCURSE = TRUE;
                    PRINTD("Kl¹twa pucharów sie uaktywni³a");
                };
            };
        };
    };
}

