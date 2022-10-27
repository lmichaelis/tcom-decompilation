func void EVENTSMANAGER_AV_FOLKARD() {
    if ((NPC_GETDISTTOWP(HERO, RND_AV_FOLKARD_WAYPOINT)) <= (RNG_RADIUS_SMALLMEDIUM)) {
        if ((ATTACK_F_VILLAGE_01) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_FOLKARD01) == (3)) {
                PRINTD("Wilki atakuj¹ Folkarda!");
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                ATTACK_F_VILLAGE_01 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_F_VILLAGE_02) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_FOLKARD01) == (6)) {
                PRINTD("Krwiopijcy atakuj¹ Folkarda!");
                WLD_INSERTNPC(0xc49c, RND_AV_FOLKARD_WAYPOINT);
                WLD_INSERTNPC(0xc49c, RND_AV_FOLKARD_WAYPOINT);
                ATTACK_F_VILLAGE_02 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_F_VILLAGE_03) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_FOLKARD01) == (9)) {
                PRINTD("Wilki atakuj¹ Folkarda! (II)");
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                ATTACK_F_VILLAGE_03 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_F_VILLAGE_04) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_FOLKARD01) == (12)) {
                PRINTD("Szczur atakuje Folkarda!");
                WLD_INSERTNPC(0xc522, RND_AV_FOLKARD_WAYPOINT);
                ATTACK_F_VILLAGE_04 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_F_VILLAGE_05) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_FOLKARD01) == (15)) {
                PRINTD("Wilki atakuj¹ Folkarda! (III)");
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                WLD_INSERTNPC(0xc77e, RND_AV_FOLKARD_WAYPOINT);
                ATTACK_F_VILLAGE_05 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

