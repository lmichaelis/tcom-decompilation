func void Q204_FAILQUESTS() {
    if ((LOG_GETSTATUS(MIS_Q204)) == (LOG_RUNNING)) {
        B_LOGENTRY(TOPIC_Q204, LOG_Q204_JOINEDMILITIA);
        LOG_SETSTATUS(_@(MIS_Q204), TOPIC_Q204, LOG_FAILED);
    };
}

func void Q204_JOINGUILD() {
    B_HATEFROMSLUMS();
    CREATEINVITEMS(SLD_5000_LORENZO, 35451, 1);
    B_GIVEINVITEMS(SLD_5000_LORENZO, HERO, 35451, 1);
    AI_EQUIPARMOR(HERO, 35451);
    NPC_SETTRUEGUILD(HERO, GIL_SLD);
    HERO.GUILD = GIL_SLD;
    SND_PLAY("LEVELUP");
    if (ACH_4_CANJOIN_MILITIA) {
        GAMESERVICES_UNLOCKACHIEVEMENT(ACH_4);
    };
    HERO.AIVAR[4] = FALSE;
}

func void Q204_CHANGEARAXOSRTN() {
    B_STARTOTHERROUTINE(SLD_1000_ADELARD, "Q204_JOIN");
    Q204_ADELARD_RTNCHECK = 1;
    NPC_REFRESH(SLD_1000_ADELARD);
    TELEPORTNPCTOWP(51978, "PARTM1_JOINARAXOS_BOSS");
    B_STARTOTHERROUTINE(SLD_1011_ARAXOS, "JOIN");
    NPC_REFRESH(SLD_1011_ARAXOS);
    TELEPORTNPCTOWP(51833, "PARTM1_JOINARAXOS_SLD_01");
    B_STARTOTHERROUTINE(SLD_1012_ARAXOS, "JOIN");
    NPC_REFRESH(SLD_1012_ARAXOS);
    TELEPORTNPCTOWP(51842, "PARTM1_JOINARAXOS_SLD_02");
    B_STARTOTHERROUTINE(SLD_1013_ARAXOS, "JOIN");
    NPC_REFRESH(SLD_1013_ARAXOS);
    TELEPORTNPCTOWP(51848, RNG_NS12_FAKEJORN02_WAYPOINT);
    B_STARTOTHERROUTINE(SLD_1014_ARAXOS, "JOIN");
    NPC_REFRESH(SLD_1014_ARAXOS);
    TELEPORTNPCTOWP(51854, "PARTM1_JOINARAXOS_SLD_04");
    B_STARTOTHERROUTINE(SLD_1015_ARAXOS, "JOIN");
    NPC_REFRESH(SLD_1015_ARAXOS);
    TELEPORTNPCTOWP(51860, "PARTM1_JOINARAXOS_SLD_05");
    if ((NPC_ISDEAD(SLD_8202_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8202_ARAXOS, TOT);
        NPC_REFRESH(SLD_8202_ARAXOS);
        TELEPORTNPCTOWP(51883, SLD_8202_ARAXOS.WP);
    };
    if ((NPC_ISDEAD(SLD_8201_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8201_ARAXOS, TOT);
        NPC_REFRESH(SLD_8201_ARAXOS);
        TELEPORTNPCTOWP(51880, SLD_8201_ARAXOS.WP);
    };
    if ((NPC_ISDEAD(SLD_8200_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8200_ARAXOS, TOT);
        NPC_REFRESH(SLD_8200_ARAXOS);
        TELEPORTNPCTOWP(51877, SLD_8200_ARAXOS.WP);
    };
    PRINTD("Refresh korwa");
    HERO.AIVAR[4] = FALSE;
}

func void Q204_JOINARAXOS_THROW() {
    AI_FUNCTION(HERO, 64026);
    FF_APPLY(70089);
    WLD_SENDTRIGGER("KM_ARAXOSJOIN_01");
    WLD_SENDUNTRIGGER("KM_ARAXOSJOIN_03");
    AI_WAIT(HERO, 1036831949);
    AI_PLAYANI(HERO, "T_ARAXOSJOIN_THROW");
    AI_FUNCTION(HERO, 64036);
    AI_WAIT(HERO, 1045220557);
    AI_WAITTILLEND(SLD_1000_ADELARD, HERO);
    HERO.AIVAR[4] = FALSE;
    AI_FUNCTION(SLD_1000_ADELARD, 64023);
}

func void Q204_JOINARAXOS_THROW_END() {
    B_STARTOTHERROUTINE(SLD_5001_DIMA, START);
    FF_REMOVE(70089);
    AI_WAIT(HERO, 1075838976);
    AI_TURNTONPC(HERO, SLD_1000_ADELARD);
    HERO.AIVAR[4] = FALSE;
    WLD_SENDTRIGGER("KM_ARAXOSJOIN_04");
    WLD_SENDUNTRIGGER("KM_ARAXOSJOIN_01");
    AI_WAITTILLEND(SLD_1000_ADELARD, HERO);
    AI_FUNCTION(SLD_1000_ADELARD, 70094);
}

func void Q204_SETARAXOSCAMERA() {
    DIACAM_DISABLE();
    TELEPORTNPCTOWP(51978, "PARTM1_JOINARAXOS_BOSS");
    TELEPORTNPCTOWP(1819, "PARTM1_JOINARAXOS_HERO");
    NPC_REFRESH(SLD_1011_ARAXOS);
    NPC_REFRESH(SLD_1012_ARAXOS);
    NPC_REFRESH(SLD_1013_ARAXOS);
    NPC_REFRESH(SLD_1014_ARAXOS);
    NPC_REFRESH(SLD_1015_ARAXOS);
    TELEPORTNPCTOWP(51833, "PARTM1_JOINARAXOS_SLD_01");
    TELEPORTNPCTOWP(51842, "PARTM1_JOINARAXOS_SLD_02");
    TELEPORTNPCTOWP(51848, RNG_NS12_FAKEJORN02_WAYPOINT);
    TELEPORTNPCTOWP(51854, "PARTM1_JOINARAXOS_SLD_04");
    TELEPORTNPCTOWP(51860, "PARTM1_JOINARAXOS_SLD_05");
}

func void Q204_SETARAXOSCAMERA_V2() {
    AI_UNEQUIPARMOR(HERO);
    AI_UNEQUIPWEAPONS(HERO);
    TELEPORTNPCTOWP(1819, "HERO_WATER_TEST");
    B_STARTOTHERROUTINE(SLD_5001_DIMA, "JOIN");
    NPC_REFRESH(SLD_5001_DIMA);
    TELEPORTNPCTOWP(52075, "PARTM1_PATH_59");
    AI_TURNTONPC(HERO, SLD_5001_DIMA);
}

func void Q204_SETARAXOSCAMERA_V3() {
    TELEPORTNPCTOWP(51978, "PARTM1_JOINARAXOS_BOSS_02");
    B_STARTOTHERROUTINE(SLD_1011_ARAXOS, "JOIN2");
    NPC_REFRESH(SLD_1011_ARAXOS);
    TELEPORTNPCTOWP(51833, "PARTM1_JOINARAXOS_SLD_10");
    B_STARTOTHERROUTINE(SLD_1012_ARAXOS, "JOIN2");
    NPC_REFRESH(SLD_1012_ARAXOS);
    TELEPORTNPCTOWP(51842, "PARTM1_JOINARAXOS_SLD_09");
    B_STARTOTHERROUTINE(SLD_1013_ARAXOS, "JOIN2");
    NPC_REFRESH(SLD_1013_ARAXOS);
    TELEPORTNPCTOWP(51848, "PARTM1_JOINARAXOS_SLD_08");
    B_STARTOTHERROUTINE(SLD_1014_ARAXOS, "JOIN2");
    NPC_REFRESH(SLD_1014_ARAXOS);
    TELEPORTNPCTOWP(51854, "PARTM1_JOINARAXOS_SLD_07");
    B_STARTOTHERROUTINE(SLD_1015_ARAXOS, "JOIN2");
    NPC_REFRESH(SLD_1015_ARAXOS);
    TELEPORTNPCTOWP(51860, "PARTM1_JOINARAXOS_SLD_06");
    AI_TURNTONPC(SLD_1000_ADELARD, HERO);
    AI_TURNTONPC(SLD_1011_ARAXOS, HERO);
    AI_TURNTONPC(SLD_1012_ARAXOS, HERO);
    AI_TURNTONPC(SLD_1013_ARAXOS, HERO);
    AI_TURNTONPC(SLD_1014_ARAXOS, HERO);
    AI_TURNTONPC(SLD_1015_ARAXOS, HERO);
}

func void Q204_SETARAXOSCAMERA_V4() {
    WLD_SENDTRIGGER("KM_ARAXOSJOIN_05");
    WLD_SENDUNTRIGGER("KM_ARAXOSJOIN_04");
    TELEPORTNPCTOWP(1819, "PARTM1_JOINARAXOS_HERO_02");
    HERO.AIVAR[4] = FALSE;
}

func void Q204_SETARAXOSCAMERA_V5() {
    WLD_SENDUNTRIGGER("KM_ARAXOSJOIN_05");
    DIACAM_ENABLE();
    HERO.AIVAR[4] = FALSE;
}

func void Q204_ARAXOSDRINK() {
    CREATEINVITEMS(SLD_1015_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1014_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1013_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1012_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1011_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1000_ADELARD, 36023, 1);
    AI_WAIT(SLD_1015_ARAXOS, 1036831949);
    B_USEITEM(SLD_1015_ARAXOS, 36023);
    AI_WAIT(SLD_1013_ARAXOS, 1045220557);
    B_USEITEM(SLD_1013_ARAXOS, 36023);
    AI_WAIT(SLD_1014_ARAXOS, 1050253722);
    B_USEITEM(SLD_1014_ARAXOS, 36023);
    AI_WAIT(SLD_1012_ARAXOS, 1036831949);
    B_USEITEM(SLD_1012_ARAXOS, 36023);
    AI_WAIT(SLD_1011_ARAXOS, 1041865114);
    B_USEITEM(SLD_1011_ARAXOS, 36023);
}

func void Q204_ARAXOSWATCHFIGHT() {
    WLD_SENDTRIGGER("Q204_CROWD");
    AI_WAIT(SLD_1015_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1015_ARAXOS, "T_WATCHFIGHT_YEAH_02");
    AI_WAIT(SLD_1014_ARAXOS, 1045220557);
    AI_PLAYANI(SLD_1014_ARAXOS, "T_WATCHFIGHT_YEAH_03");
    AI_PLAYANI(SLD_1013_ARAXOS, "T_WATCHFIGHT_YEAH_03");
    AI_WAIT(SLD_1012_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1012_ARAXOS, "T_WATCHFIGHT_YEAH_02");
    AI_WAIT(SLD_1011_ARAXOS, 1041865114);
    AI_PLAYANI(SLD_1011_ARAXOS, "T_WATCHFIGHT_YEAH_03");
}

func void Q204_DISABLESOUND() {
    WLD_SENDUNTRIGGER("Q204_CROWD");
}

func void Q204_VOW() {
    B_STARTOTHERROUTINE(SLD_1011_ARAXOS, "JOIN3");
    NPC_REFRESH(SLD_1011_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1012_ARAXOS, "JOIN3");
    NPC_REFRESH(SLD_1012_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1013_ARAXOS, "JOIN3");
    NPC_REFRESH(SLD_1013_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1014_ARAXOS, "JOIN3");
    NPC_REFRESH(SLD_1014_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1015_ARAXOS, "JOIN3");
    NPC_REFRESH(SLD_1015_ARAXOS);
    AI_WAIT(SLD_1015_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1015_ARAXOS, "T_STAND_2_MILJOIN");
    AI_WAIT(SLD_1014_ARAXOS, 1045220557);
    AI_PLAYANI(SLD_1014_ARAXOS, "T_STAND_2_MILJOIN");
    AI_PLAYANI(SLD_1013_ARAXOS, "T_STAND_2_MILJOIN");
    AI_WAIT(SLD_1012_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1012_ARAXOS, "T_STAND_2_MILJOIN");
    AI_WAIT(SLD_1011_ARAXOS, 1041865114);
    AI_PLAYANI(SLD_1011_ARAXOS, "T_STAND_2_MILJOIN");
}

func void Q204_ARAXOSJOINT() {
    CREATEINVITEMS(SLD_1015_ARAXOS, 34194, 1);
    CREATEINVITEMS(SLD_1014_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1013_ARAXOS, 34194, 1);
    CREATEINVITEMS(SLD_1012_ARAXOS, 36023, 1);
    CREATEINVITEMS(SLD_1011_ARAXOS, 34194, 1);
    AI_WAIT(SLD_1015_ARAXOS, 1065353216);
    B_USEITEM(SLD_1015_ARAXOS, 34194);
    AI_WAIT(SLD_1013_ARAXOS, 1073741824);
    B_USEITEM(SLD_1013_ARAXOS, 34194);
    AI_WAIT(SLD_1014_ARAXOS, 1069547520);
    B_USEITEM(SLD_1014_ARAXOS, 36023);
    AI_WAIT(SLD_1012_ARAXOS, 1074161254);
    B_USEITEM(SLD_1012_ARAXOS, 36023);
    AI_WAIT(SLD_1011_ARAXOS, 1072064102);
    B_USEITEM(SLD_1011_ARAXOS, 34194);
}

func void Q204_CLEAREVERYONE_END() {
    Q204_TALKWITHARAXOS = TRUE;
    B_STARTOTHERROUTINE(SLD_1011_ARAXOS, "JOIN4");
    NPC_REFRESH(SLD_1011_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1012_ARAXOS, "JOIN4");
    NPC_REFRESH(SLD_1012_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1013_ARAXOS, "JOIN4");
    NPC_REFRESH(SLD_1013_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1014_ARAXOS, "JOIN4");
    NPC_REFRESH(SLD_1014_ARAXOS);
    B_STARTOTHERROUTINE(SLD_1015_ARAXOS, "JOIN4");
    NPC_REFRESH(SLD_1015_ARAXOS);
    AI_WAIT(SLD_1015_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1015_ARAXOS, "T_MILJOIN_2_STAND");
    AI_WAIT(SLD_1014_ARAXOS, 1045220557);
    AI_PLAYANI(SLD_1014_ARAXOS, "T_MILJOIN_2_STAND");
    AI_PLAYANI(SLD_1013_ARAXOS, "T_MILJOIN_2_STAND");
    AI_WAIT(SLD_1012_ARAXOS, 1036831949);
    AI_PLAYANI(SLD_1012_ARAXOS, "T_MILJOIN_2_STAND");
    AI_WAIT(SLD_1011_ARAXOS, 1041865114);
    AI_PLAYANI(SLD_1011_ARAXOS, "T_MILJOIN_2_STAND");
}

func void Q204_LAUGH() {
    AI_WAIT(SLD_1015_ARAXOS, 1069547520);
    AI_PLAYANI(SLD_1015_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1014_ARAXOS, 1074580685);
    AI_PLAYANI(SLD_1014_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1013_ARAXOS, 1067869798);
    AI_PLAYANI(SLD_1013_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1012_ARAXOS, 1078984704);
    AI_PLAYANI(SLD_1012_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1011_ARAXOS, 1068289229);
    AI_PLAYANI(SLD_1011_ARAXOS, T_LAUGH);
}

func void Q204_LAUGH_V2() {
    AI_WAIT(SLD_1015_ARAXOS, 1056964608);
    AI_PLAYANI(SLD_1015_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1014_ARAXOS, 1067030938);
    AI_PLAYANI(SLD_1014_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1013_ARAXOS, 1050253722);
    AI_PLAYANI(SLD_1013_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1012_ARAXOS, 1069128090);
    AI_PLAYANI(SLD_1012_ARAXOS, T_LAUGH);
    AI_WAIT(SLD_1011_ARAXOS, 1051931443);
    AI_PLAYANI(SLD_1011_ARAXOS, T_LAUGH);
}

func void Q204_CLEAREVERYONE() {
    PRINTD("Refresh korwa");
    NPC_REFRESH(SLD_1011_ARAXOS);
    NPC_REFRESH(SLD_1012_ARAXOS);
    NPC_REFRESH(SLD_1013_ARAXOS);
    NPC_REFRESH(SLD_1014_ARAXOS);
    NPC_REFRESH(SLD_1015_ARAXOS);
    AI_WAIT(SLD_1015_ARAXOS, 1075838976);
    AI_PLAYANI(SLD_1015_ARAXOS, T_STAND_2_LGUARD);
    AI_WAIT(SLD_1014_ARAXOS, 1067030938);
    AI_PLAYANI(SLD_1014_ARAXOS, "T_STAND_2_HGUARD");
    AI_WAIT(SLD_1013_ARAXOS, 1084856730);
    AI_PLAYANI(SLD_1013_ARAXOS, T_STAND_2_LGUARD);
    AI_WAIT(SLD_1012_ARAXOS, 1089365606);
    AI_PLAYANI(SLD_1012_ARAXOS, T_STAND_2_LGUARD);
    AI_WAIT(SLD_1011_ARAXOS, 1079404134);
    AI_PLAYANI(SLD_1011_ARAXOS, "T_STAND_2_HGUARD");
}

func void QA204_MARVINGOTOSLEEP() {
    AI_PLAYANI(HERO, "T_STAND_2_WOUNDEDB");
    FADESCREENTOBLACKF(3, 64039, 1000);
}

func void QA204_MARVINGOTOSLEEP_FADESCREEN() {
    AI_FUNCTION(HERO, 70117);
    AI_PLAYANI(HERO, "T_WOUNDEDB_2_STAND");
    TELEPORTNPCTOWP(1819, "PARTM1_GUILDHOUSE02_15");
    B_LOGENTRY(TOPIC_Q204, LOG_Q204_ARAXOSFINISH);
    LOG_SETSTATUS(_@(MIS_Q204), TOPIC_Q204, LOG_SUCCESS);
    B_STARTOTHERROUTINE(SLD_1000_ADELARD, START);
    NPC_REFRESH(SLD_1000_ADELARD);
    TELEPORTNPCTOWP(51978, SLD_1000_ADELARD.WP);
    B_STARTOTHERROUTINE(SLD_1011_ARAXOS, START);
    NPC_REFRESH(SLD_1011_ARAXOS);
    TELEPORTNPCTOWP(51833, SLD_1011_ARAXOS.WP);
    B_STARTOTHERROUTINE(SLD_1012_ARAXOS, START);
    NPC_REFRESH(SLD_1012_ARAXOS);
    TELEPORTNPCTOWP(51842, SLD_1012_ARAXOS.WP);
    B_STARTOTHERROUTINE(SLD_1013_ARAXOS, START);
    NPC_REFRESH(SLD_1013_ARAXOS);
    TELEPORTNPCTOWP(51848, SLD_1013_ARAXOS.WP);
    B_STARTOTHERROUTINE(SLD_1014_ARAXOS, START);
    NPC_REFRESH(SLD_1014_ARAXOS);
    TELEPORTNPCTOWP(51854, SLD_1014_ARAXOS.WP);
    B_STARTOTHERROUTINE(SLD_1015_ARAXOS, START);
    NPC_REFRESH(SLD_1015_ARAXOS);
    TELEPORTNPCTOWP(51860, SLD_1015_ARAXOS.WP);
    if ((NPC_ISDEAD(SLD_8202_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8202_ARAXOS, START);
        NPC_REFRESH(SLD_8202_ARAXOS);
        TELEPORTNPCTOWP(51883, SLD_8202_ARAXOS.WP);
    };
    if ((NPC_ISDEAD(SLD_8201_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8201_ARAXOS, START);
        NPC_REFRESH(SLD_8201_ARAXOS);
        TELEPORTNPCTOWP(51880, SLD_8201_ARAXOS.WP);
    };
    if ((NPC_ISDEAD(SLD_8200_ARAXOS)) == (FALSE)) {
        B_STARTOTHERROUTINE(SLD_8200_ARAXOS, START);
        NPC_REFRESH(SLD_8200_ARAXOS);
        TELEPORTNPCTOWP(51877, SLD_8200_ARAXOS.WP);
    };
    B_PASSTIME(5);
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

