func void EVENTSMANAGER_AV_KIPPER() {
    if ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING)) {
        if ((NPC_GETDISTTOWP(HERO, RND_AV_KIPPER_WAYPOINT)) <= (RNG_RADIUS_SMALLMEDIUM)) {
            if ((ATTACK_K_VILLAGE_01) == (FALSE)) {
                if ((RND_ATTACK_VILLAGE_KIPPER01) == (3)) {
                    PRINTD("Wilki atakuj¹ Kippera!");
                    WLD_INSERTNPC(0xc77e, RND_AV_KIPPER_WAYPOINT);
                    WLD_INSERTNPC(0xc77e, RND_AV_KIPPER_WAYPOINT);
                    ATTACK_K_VILLAGE_01 = TRUE;
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
            if ((ATTACK_K_VILLAGE_02) == (FALSE)) {
                if ((RND_ATTACK_VILLAGE_KIPPER01) == (6)) {
                    PRINTD("Krwiopijcy atakuj¹ Kippera!");
                    WLD_INSERTNPC(0xc49b, RND_AV_KIPPER_WAYPOINT);
                    WLD_INSERTNPC(0xc49c, RND_AV_KIPPER_WAYPOINT);
                    ATTACK_K_VILLAGE_02 = TRUE;
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
            if ((ATTACK_K_VILLAGE_03) == (FALSE)) {
                if ((RND_ATTACK_VILLAGE_KIPPER01) == (9)) {
                    PRINTD("Polne bestie atakuj¹ Kippera! (II)");
                    WLD_INSERTNPC(0xc501, RND_AV_KIPPER_WAYPOINT);
                    WLD_INSERTNPC(0xc501, RND_AV_KIPPER_WAYPOINT);
                    WLD_INSERTNPC(0xc503, RND_AV_KIPPER_WAYPOINT);
                    ATTACK_K_VILLAGE_03 = TRUE;
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
            if ((ATTACK_K_VILLAGE_04) == (FALSE)) {
                if ((RND_ATTACK_VILLAGE_KIPPER01) == (12)) {
                    PRINTD("Goblin atakuje Kippera! (II)");
                    WLD_INSERTNPC(0xc549, RND_AV_KIPPER_WAYPOINT);
                    RANDOMEVENT_SPAWNCOUNTER();
                    ATTACK_K_VILLAGE_04 = TRUE;
                };
            };
            if ((ATTACK_K_VILLAGE_05) == (FALSE)) {
                if ((RND_ATTACK_VILLAGE_KIPPER01) == (15)) {
                    PRINTD("Wilki atakuj¹ Kippera! (II)");
                    WLD_INSERTNPC(0xc77e, RND_AV_KIPPER_WAYPOINT);
                    WLD_INSERTNPC(0xc78a, RND_AV_KIPPER_WAYPOINT);
                    ATTACK_K_VILLAGE_05 = TRUE;
                    RANDOMEVENT_SPAWNCOUNTER();
                };
            };
        };
    };
}

