func void EVENTSMANAGER_NS_FABIOZOMBIE() {
    if ((RNG_ZOMBIEFABIOCASE) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_ZOMBIEFABIO01_WAYPOINT)) >= (RNG_RADIUS_BIG2)) {
            if (((RNG_ZOMBIEFABIO01) == (1)) && ((RNG_ZOMBIEFABIODAY) != (WLD_GETDAY()))) {
                PRINTD("Ca³y obóz Fabio znik³!");
                if (!(NPC_ISDEAD(NONE_5_FABIO))) {
                    B_STARTOTHERROUTINE(NONE_5_FABIO, TOT2);
                    B_REMOVENPC(51512);
                    RNG_FABIOWASALIVE = TRUE;
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    PRINTD("Fabio nosi klatwe!");
                };
                if (!(NPC_ISDEAD(NONE_6363_GALBO))) {
                    B_STARTOTHERROUTINE(NONE_6363_GALBO, TOT2);
                    B_REMOVENPC(58358);
                    RNG_GALBOWASALIVE = TRUE;
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    PRINTD("Galbo nosi klatwe!");
                };
                if (!(NPC_ISDEAD(NONE_6364_SIGMUN))) {
                    B_STARTOTHERROUTINE(NONE_6364_SIGMUN, TOT2);
                    B_REMOVENPC(58363);
                    RNG_SIGMUNWASALIVE = TRUE;
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    PRINTD("Sigmun nosi klatwe!");
                };
                if (!(NPC_ISDEAD(NONE_6365_ESTI))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6365_ESTI, TOT2);
                    B_REMOVENPC(58368);
                };
                if (!(NPC_ISDEAD(NONE_6374_REFUGEE))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6374_REFUGEE, TOT2);
                    B_REMOVENPC(58141);
                };
                if (!(NPC_ISDEAD(NONE_6375_REFUGEE))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6375_REFUGEE, TOT2);
                    B_REMOVENPC(58146);
                };
                if (!(NPC_ISDEAD(NONE_6376_REFUGEE))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6376_REFUGEE, TOT2);
                    B_REMOVENPC(58151);
                };
                if (!(NPC_ISDEAD(NONE_6377_REFUGEE))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6377_REFUGEE, TOT2);
                    B_REMOVENPC(58156);
                };
                if (!(NPC_ISDEAD(NONE_6378_REFUGEE))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(NONE_6378_REFUGEE, TOT2);
                    B_REMOVENPC(58161);
                };
                if (!(NPC_ISDEAD(DJG_13782_WOLFSON))) {
                    RNG_ZOMBIEFABIONODEATHS = (RNG_ZOMBIEFABIONODEATHS) + (1);
                    B_STARTOTHERROUTINE(DJG_13782_WOLFSON, TOT2);
                    B_REMOVENPC(60155);
                };
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_ZOMBIEFABIODAY = WLD_GETDAY();
                RNG_ZOMBIEFABIO01 = 2;
            };
        };
    };
    if ((RNG_ZOMBIEFABIOCASE2) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, RNG_ZOMBIEFABIO01_WAYPOINT)) >= (RNG_RADIUS_BIG2)) {
            if (((RNG_ZOMBIEFABIO01) == (3)) && ((RNG_ZOMBIEFABIODAY) != (WLD_GETDAY()))) {
                PRINTD("Zombiaki sie wyspawni³y");
                if ((RNG_FABIOWASALIVE) == (TRUE)) {
                    WLD_INSERTNPC(51156, "PART11_SWAMP_22");
                    PRINTD("Zombie Fabio");
                };
                if ((RNG_GALBOWASALIVE) == (TRUE)) {
                    WLD_INSERTNPC(51157, "PART11_SWAMP_SMOKE");
                    PRINTD("Zombie Galbo");
                };
                if ((RNG_SIGMUNWASALIVE) == (TRUE)) {
                    WLD_INSERTNPC(51158, "PART11_SWAMP_30");
                    PRINTD("Zombie Sigmun");
                };
                RANDOMEVENT_SPAWNCOUNTER();
                RNG_ZOMBIEFABIO01 = 4;
            };
        };
    };
}

