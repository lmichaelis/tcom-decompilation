func void EVENTSMANAGER_NS_FABIOZOMBIE_ADDITIONAL() {
    if (((Q401_FABIOANDGANGGONE) == (1)) && ((RNG_ZOMBIEFABIO01) == (0))) {
        if (((NPC_GETDISTTONPC(HERO, NONE_5_FABIO)) <= (RNG_RADIUS_CLOSE)) && ((NPC_GETDISTTOWP(HERO, RNG_ZOMBIEFABIO01_WAYPOINT)) <= (RNG_RADIUS_MEDIUM))) {
            if (!(NPC_ISDEAD(NONE_5_FABIO))) {
                RNG_ZOMBIEFABIO01 = 1;
                RNG_ZOMBIEFABIODAY = WLD_GETDAY();
                PRINTD("Marvin widzia³ ¿e Fabio jest na bagnach");
            };
        };
    };
    if ((RNG_ZOMBIEFABIO01) == (2)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_ZOMBIEFABIO01_WAYPOINT)) <= (RNG_RADIUS_MEDIUM)) {
            RNG_ZOMBIEFABIO01 = 3;
            if ((RNG_ZOMBIEFABIONODEATHS) >= (5)) {
                B_SAY(HERO, HERO, "$MARVIN_WHEREISEVERYBODY");
                if ((RNG_FABIOWASALIVE) == (TRUE)) {
                    B_SAY(HERO, HERO, "$MARVIN_FABIOWHEREDIDTOUGO01");
                };
            } else if ((RNG_FABIOWASALIVE) == (TRUE)) {
                B_SAY(HERO, HERO, "$MARVIN_FABIOWHEREDIDTOUGO02");
            };
            RNG_ZOMBIEFABIODAY = WLD_GETDAY();
            PRINTD("Marvin widzia³ ¿e Fabio znikn¹³ z bagien");
        };
    };
    if ((RNG_ZOMBIEFABIO01) == (4)) {
        if (NPC_ISDEAD(ZOMBIE_FABIO)) {
            FINALBOARDS_FABIOISDEAD = TRUE;
            FINALBOARDS_FABIOISDEAD_HOW = 3;
            RNG_ZOMBIEFABIO01 = 5;
            B_SAY(HERO, HERO, "$MARVIN_FABIOZOMBIE01");
            if ((RNG_FUCKFABIO) >= (2)) {
                B_SAY(HERO, HERO, "$MARVIN_FABIOZOMBIE03");
            } else {
                B_SAY(HERO, HERO, "$MARVIN_FABIOZOMBIE02");
            };
        };
    };
}

