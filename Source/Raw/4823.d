func void EVENTSMANAGER_AV_HARRY() {
    if ((NPC_GETDISTTOWP(HERO, RND_AV_HARRY_WAYPOINT)) <= (RNG_RADIUS_SMALLMEDIUM)) {
        if ((ATTACK_H_VILLAGE_01) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_HARRY01) == (3)) {
                PRINTD("Harry stra�nik i atak szczur�w");
                WLD_INSERTNPC(0xc522, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc522, RND_AV_HARRY_WAYPOINT);
                ATTACK_H_VILLAGE_01 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_H_VILLAGE_02) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_HARRY01) == (6)) {
                PRINTD("Harry stra�nik i atak kretoszczur�w");
                WLD_INSERTNPC(0xc5e6, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc5e6, RND_AV_HARRY_WAYPOINT);
                ATTACK_H_VILLAGE_02 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_H_VILLAGE_03) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_HARRY01) == (9)) {
                PRINTD("Harry stra�nik i atak �cierwojad�w");
                WLD_INSERTNPC(0xc610, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc610, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc611, RND_AV_HARRY_WAYPOINT);
                ATTACK_H_VILLAGE_03 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_H_VILLAGE_04) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_HARRY01) == (12)) {
                PRINTD("Harry stra�nik i atak wilk�w!");
                WLD_INSERTNPC(0xc77e, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc77e, RND_AV_HARRY_WAYPOINT);
                ATTACK_H_VILLAGE_04 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
        if ((ATTACK_H_VILLAGE_05) == (FALSE)) {
            if ((RND_ATTACK_VILLAGE_HARRY01) == (15)) {
                PRINTD("Harry stra�nik i atak goblin�w!");
                WLD_INSERTNPC(0xc549, RND_AV_HARRY_WAYPOINT);
                WLD_INSERTNPC(0xc549, RND_AV_HARRY_WAYPOINT);
                ATTACK_H_VILLAGE_05 = TRUE;
                RANDOMEVENT_SPAWNCOUNTER();
            };
        };
    };
}

