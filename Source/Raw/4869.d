func void EVENTSMANAGER_NS36_CURSE() {
    if ((NS36_CUPSCURSE) == (FALSE)) {
        if ((NS36_SPAWNED) == (TRUE)) {
            if ((NPC_GETDISTTOWP(HERO, RNG_NS36_WAYPOINT)) >= (RNG_RADIUS_NORMALMORE3)) {
                if ((CREEPYTRADER_CURSEDCUPS_COUNTER) >= (1)) {
                    NPC_EXCHANGEROUTINE(NONE_13612_CREEPYTRADER, TOT);
                    TELEPORTNPCTOWP(0xdfcd, TOT2);
                    NPC_REMOVEINVITEMS(HERO, 0x9547, CREEPYTRADER_CURSEDCUPS_COUNTER);
                    CREATEINVITEMS(HERO, 0x9548, CREEPYTRADER_CURSEDCUPS_COUNTER);
                    NS36_CUPSCURSE = TRUE;
                    PRINTD("Kl�twa puchar�w sie uaktywni�a");
                };
            };
        };
    };
}

