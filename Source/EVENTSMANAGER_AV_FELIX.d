func void EVENTSMANAGER_AV_FELIX() {
    if ((NPC_GETDISTTOWP(HERO, RND_AV_DICKON_WAYPOINT)) <= (RNG_RADIUS_SMALLMEDIUM)) {
        if ((ATTACK_D_VILLAGE_01) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_DICKON01) == (3)) {
                PRINTD("Gobliny atakuj¹ Felixa!");
                WLD_INSERTNPC(50505, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50505, RND_AV_DICKON_WAYPOINT);
                ATTACK_D_VILLAGE_01 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_D_VILLAGE_02) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_DICKON01) == (6)) {
                PRINTD("Polne bestie atakuj¹ Felixa!");
                WLD_INSERTNPC(50433, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50433, RND_AV_DICKON_WAYPOINT);
                ATTACK_D_VILLAGE_02 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_D_VILLAGE_03) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_DICKON01) == (9)) {
                PRINTD("Polne bestie atakuj¹ Felixa! (II)");
                WLD_INSERTNPC(50433, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50433, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50435, RND_AV_DICKON_WAYPOINT);
                ATTACK_D_VILLAGE_03 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_D_VILLAGE_04) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_DICKON01) == (12)) {
                PRINTD("Wilk atakuje Felixa!");
                WLD_INSERTNPC(51070, RND_AV_DICKON_WAYPOINT);
                ATTACK_D_VILLAGE_04 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_D_VILLAGE_05) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_DICKON01) == (15)) {
                PRINTD("Kretoszczury atakuj¹ Felixa!");
                WLD_INSERTNPC(50662, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50662, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50662, RND_AV_DICKON_WAYPOINT);
                WLD_INSERTNPC(50662, RND_AV_DICKON_WAYPOINT);
                ATTACK_D_VILLAGE_05 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

