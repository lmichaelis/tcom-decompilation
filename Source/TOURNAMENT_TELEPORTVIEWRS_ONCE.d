func void TOURNAMENT_TELEPORTVIEWRS_ONCE() {
    var int TOURNAMENT_TELEPORTVIEWRS_ONCE_CHECK;
    if ((TOURNAMENT_TELEPORTVIEWRS_ONCE_CHECK) == (FALSE)) {
        TOURNAMENT_TELEPORTVIEWRS_ONCE_CHECK = TRUE;
        if ((NPC_ISDEAD(PIR_1314_PIRATE)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_1314_PIRATE, TOT);
            NPC_REFRESH(PIR_1314_PIRATE);
            TELEPORTNPCTOWP(58870, PIR_1314_PIRATE.WP);
        };
        if ((NPC_ISDEAD(PIR_13551_PIRATE)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_13551_PIRATE, TOT);
            NPC_REFRESH(PIR_13551_PIRATE);
            TELEPORTNPCTOWP(58879, PIR_13551_PIRATE.WP);
        };
        if ((NPC_ISDEAD(PIR_13552_PIRATE)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_13552_PIRATE, TOT);
            NPC_REFRESH(PIR_13552_PIRATE);
            TELEPORTNPCTOWP(58883, PIR_13552_PIRATE.WP);
        };
        if ((NPC_ISDEAD(PIR_13553_DINKEL)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_13553_DINKEL, TOT);
            NPC_REFRESH(PIR_13553_DINKEL);
            TELEPORTNPCTOWP(58858, PIR_13553_DINKEL.WP);
        };
        if ((NPC_ISDEAD(PIR_13554_PIRATE)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_13554_PIRATE, TOT);
            NPC_REFRESH(PIR_13554_PIRATE);
            TELEPORTNPCTOWP(58887, PIR_13554_PIRATE.WP);
        };
        if ((NPC_ISDEAD(PIR_13555_PIRATE)) == (FALSE)) {
            B_STARTOTHERROUTINE(PIR_13555_PIRATE, TOT);
            NPC_REFRESH(PIR_13555_PIRATE);
            TELEPORTNPCTOWP(58891, PIR_13555_PIRATE.WP);
        };
        if (((NPC_ISDEAD(NONE_13719_HOMER)) == (FALSE)) && ((SQ317_WHATRUNE) == (0))) {
            B_STARTOTHERROUTINE(NONE_13719_HOMER, TOT);
            NPC_REFRESH(NONE_13719_HOMER);
            TELEPORTNPCTOWP(58848, NONE_13719_HOMER.WP);
        };
    };
}

func void TOURNAMENT_TELEPORTVIEWRS() {
    TOURNAMENT_TELEPORTVIEWRS_ONCE();
    PIR_1307_PROXIMO.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(NOV_200_HIERRO, "TOURNAMENT");
    NPC_REFRESH(NOV_200_HIERRO);
    TELEPORTNPCTOWP(58607, NOV_200_HIERRO.WP);
    NOV_200_HIERRO.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1300_LEONARDO, "TOURNAMENT");
    NPC_REFRESH(PIR_1300_LEONARDO);
    TELEPORTNPCTOWP(58626, PIR_1300_LEONARDO.WP);
    PIR_1300_LEONARDO.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1303_CORTEZ, "TOURNAMENT");
    NPC_REFRESH(PIR_1303_CORTEZ);
    TELEPORTNPCTOWP(58644, PIR_1303_CORTEZ.WP);
    PIR_1303_CORTEZ.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1304_IVAN, "TOURNAMENT");
    NPC_REFRESH(PIR_1304_IVAN);
    TELEPORTNPCTOWP(58657, PIR_1304_IVAN.WP);
    PIR_1304_IVAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "TOURNAMENT");
    NPC_REFRESH(PIR_1306_RODRIGO);
    TELEPORTNPCTOWP(58677, PIR_1306_RODRIGO.WP);
    PIR_1306_RODRIGO.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1308_SIMON, "TOURNAMENT");
    NPC_REFRESH(PIR_1308_SIMON);
    TELEPORTNPCTOWP(58703, PIR_1308_SIMON.WP);
    PIR_1308_SIMON.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1309_OSCAR, "TOURNAMENT");
    NPC_REFRESH(PIR_1309_OSCAR);
    TELEPORTNPCTOWP(58726, PIR_1309_OSCAR.WP);
    PIR_1309_OSCAR.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1310_VICENTE, "TOURNAMENT");
    NPC_REFRESH(PIR_1310_VICENTE);
    TELEPORTNPCTOWP(58734, PIR_1310_VICENTE.WP);
    PIR_1310_VICENTE.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1311_THIAGO, "TOURNAMENT");
    NPC_REFRESH(PIR_1311_THIAGO);
    TELEPORTNPCTOWP(58743, PIR_1311_THIAGO.WP);
    PIR_1311_THIAGO.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1313_GETTER, "TOURNAMENT");
    NPC_REFRESH(PIR_1313_GETTER);
    TELEPORTNPCTOWP(58768, PIR_1313_GETTER.WP);
    PIR_1313_GETTER.AIVAR[15] = TRUE;
    if ((LOG_GETSTATUS(MIS_SQ304)) != (LOG_RUNNING)) {
        Q306_MORITZ_RTNCHECK = 1;
        B_STARTOTHERROUTINE(PIR_1324_MORITZ, "TOURNAMENT");
        NPC_REFRESH(PIR_1324_MORITZ);
        TELEPORTNPCTOWP(58782, PIR_1324_MORITZ.WP);
        PIR_1324_MORITZ.AIVAR[15] = TRUE;
    };
    if ((NPC_KNOWSINFO(HERO, 84791)) == (FALSE)) {
        B_STARTOTHERROUTINE(PIR_1325_FOX, "TOURNAMENT");
        NPC_REFRESH(PIR_1325_FOX);
        TELEPORTNPCTOWP(58793, PIR_1325_FOX.WP);
        PIR_1325_FOX.AIVAR[15] = TRUE;
    };
    B_STARTOTHERROUTINE(PIR_1326_DAN, "TOURNAMENT");
    NPC_REFRESH(PIR_1326_DAN);
    TELEPORTNPCTOWP(58800, PIR_1326_DAN.WP);
    PIR_1326_DAN.AIVAR[15] = TRUE;
    B_STARTOTHERROUTINE(PIR_1327_LAUTENIST, "TOURNAMENT");
    NPC_REFRESH(PIR_1327_LAUTENIST);
    TELEPORTNPCTOWP(58811, PIR_1327_LAUTENIST.WP);
    PIR_1327_LAUTENIST.AIVAR[15] = TRUE;
    if ((HLP_ISVALIDNPC(NONE_6332_BERTEL)) && ((Q305_BERTELWAY) == (1))) {
        B_STARTOTHERROUTINE(NONE_6332_BERTEL, "TOURNAMENT");
        NPC_REFRESH(NONE_6332_BERTEL);
        TELEPORTNPCTOWP(58580, NONE_6332_BERTEL.WP);
        NONE_6332_BERTEL.AIVAR[15] = TRUE;
    };
    TELEPORTNPCTOWP(50770, SEASNAKE.WP);
}

func void Q306_TELEPORTWARRIORS() {
    B_STARTOTHERROUTINE(PIR_1329_SAUL, "ARENA");
    NPC_REFRESH(PIR_1329_SAUL);
    TELEPORTNPCTOWP(58818, PIR_1329_SAUL.WP);
}

func void HAVEN_AFTERQ306() {
    NONE_7500_BEN.FLAGS = NPC_FLAG_IMPORTANT;
    FADESCREENTOBLACKF(4, 64143, 1000);
    Q307_CORTEZ_RTNCHECK = 1;
    B_STARTOTHERROUTINE(PIR_1303_CORTEZ, "TAVERN_WAIT");
    NPC_REFRESH(PIR_1303_CORTEZ);
    PIR_1303_CORTEZ.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(NONE_7500_BEN, START);
    NPC_REFRESH(NONE_7500_BEN);
    NPC_SETATTITUDE(NONE_7500_BEN, ATT_NEUTRAL);
    NPC_SETTEMPATTITUDE(NONE_7500_BEN, ATT_NEUTRAL);
    NONE_7500_BEN.AIVAR[1] = CRIME_NONE;
    NONE_7500_BEN.AIVAR[0] = FIGHT_NONE;
    B_STARTOTHERROUTINE(NONE_1315_ROSITA, "TAVERN_WAIT");
    NPC_REFRESH(NONE_1315_ROSITA);
    NPC_CHANGEARMOR(NONE_1315_ROSITA, 35582);
    B_STARTOTHERROUTINE(NONE_1316_TARA, "TAVERN_WAIT");
    NPC_REFRESH(NONE_1316_TARA);
    NPC_CHANGEARMOR(NONE_1316_TARA, 35582);
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "TAVERN");
    NPC_REFRESH(PIR_1306_RODRIGO);
    PIR_1306_RODRIGO.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1308_SIMON, "TAVERN");
    NPC_REFRESH(PIR_1308_SIMON);
    PIR_1308_SIMON.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1309_OSCAR, "TAVERN");
    NPC_REFRESH(PIR_1309_OSCAR);
    PIR_1309_OSCAR.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1310_VICENTE, "TAVERN");
    NPC_REFRESH(PIR_1310_VICENTE);
    PIR_1310_VICENTE.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1311_THIAGO, "TAVERN");
    NPC_REFRESH(PIR_1311_THIAGO);
    PIR_1311_THIAGO.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_6322_GHOST, "TAVERN");
    NPC_REFRESH(PIR_6322_GHOST);
    PIR_6322_GHOST.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(NOV_200_HIERRO, "TAVERN");
    NPC_REFRESH(NOV_200_HIERRO);
    NOV_200_HIERRO.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1304_IVAN, "TAVERN");
    NPC_REFRESH(PIR_1304_IVAN);
    PIR_1304_IVAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1305_OTIS, "TAVERN");
    NPC_REFRESH(PIR_1305_OTIS);
    PIR_1305_OTIS.AIVAR[15] = FALSE;
    B_REMOVENPC(58671);
    B_STARTOTHERROUTINE(PIR_1307_PROXIMO, "TAVERN");
    NPC_REFRESH(PIR_1307_PROXIMO);
    PIR_1307_PROXIMO.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1326_DAN, "TAVERN");
    NPC_REFRESH(PIR_1326_DAN);
    PIR_1326_DAN.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1312_LARRY, "TAVERN");
    NPC_REFRESH(PIR_1312_LARRY);
    NPC_CHANGEARMOR(PIR_1312_LARRY, 35542);
    NPC_REMOVEINVITEMS(PIR_1312_LARRY, 35398, 1);
    PIR_1312_LARRY.AIVAR[15] = FALSE;
    if ((NPC_HASITEMS(PIR_1312_LARRY, 35542)) == (0)) {
        CREATEINVITEMS(PIR_1312_LARRY, 35542, 1);
    };
    NPC_CHANGEARMOR(PIR_1329_SAUL, 33570);
    NPC_REMOVEINVITEMS(PIR_1329_SAUL, 35403, 1);
    PIR_1329_SAUL.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1313_GETTER, "TAVERN");
    NPC_REFRESH(PIR_1313_GETTER);
    PIR_1313_GETTER.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1314_PIRATE, "TAVERN");
    NPC_REFRESH(PIR_1314_PIRATE);
    PIR_1314_PIRATE.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_13553_DINKEL, "TAVERN");
    NPC_REFRESH(PIR_13553_DINKEL);
    PIR_13553_DINKEL.AIVAR[15] = FALSE;
    if ((SQ317_WHATRUNE) == (0)) {
        if ((SQ317_TRYHELP) == (1)) {
            SQ317_TRYHELP = 2;
        };
        if ((SQ317_FOLLOWSAFTEY) >= (1)) {
            if ((SQ317_FOLLOWSAFTEY) == (TRUE)) {
                WLD_SENDTRIGGER("SQ317_MOVER_REPAIRDWALL");
                NONE_13719_HOMER.AIVAR[15] = FALSE;
            };
        };
        B_STARTOTHERROUTINE(NONE_13719_HOMER, "TAVERN");
        NPC_REFRESH(NONE_13719_HOMER);
        NONE_13719_HOMER.AIVAR[15] = FALSE;
    };
    if ((LOG_GETSTATUS(MIS_SQ304)) != (LOG_RUNNING)) {
        B_STARTOTHERROUTINE(PIR_1324_MORITZ, "TAVERN");
        NPC_REFRESH(PIR_1324_MORITZ);
        PIR_1324_MORITZ.AIVAR[15] = FALSE;
    };
    if ((NPC_KNOWSINFO(HERO, 84791)) == (FALSE)) {
        B_STARTOTHERROUTINE(PIR_1325_FOX, "TAVERN");
        NPC_REFRESH(PIR_1325_FOX);
        PIR_1325_FOX.AIVAR[15] = FALSE;
    };
    B_STARTOTHERROUTINE(PIR_1327_LAUTENIST, "TAVERN");
    NPC_REFRESH(PIR_1327_LAUTENIST);
    PIR_1327_LAUTENIST.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1328_ARENAGUARD, "TAVERN");
    NPC_REFRESH(PIR_1328_ARENAGUARD);
    PIR_1328_ARENAGUARD.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1300_LEONARDO, "TAVERN");
    NPC_REFRESH(PIR_1300_LEONARDO);
    PIR_1300_LEONARDO.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(PIR_1329_SAUL, "TAVERN");
    NPC_REFRESH(PIR_1329_SAUL);
    PIR_1329_SAUL.AIVAR[15] = FALSE;
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, TOT);
    NPC_REFRESH(BDT_6289_VILLAN);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, TOT);
    NPC_REFRESH(BDT_6290_BANDIT);
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, TOT);
    NPC_REFRESH(BDT_6288_MYRMIDON);
    if ((Q305_BERTELWAY) == (1)) {
        B_STARTOTHERROUTINE(NONE_6332_BERTEL, "TAVERN");
        NPC_REFRESH(NONE_6332_BERTEL);
        NONE_6332_BERTEL.AIVAR[15] = FALSE;
    };
    if ((Q305_HERDIS_FINISHWAY) == (1)) {
        B_STARTOTHERROUTINE(NONE_6334_HERDIS, "TAVERN_WAIT");
        NPC_REFRESH(NONE_6334_HERDIS);
        NPC_CHANGEARMOR(NONE_6334_HERDIS, 35582);
        B_STARTOTHERROUTINE(NONE_6335_MILLIE, "TAVERN_WAIT");
        NPC_REFRESH(NONE_6335_MILLIE);
        NPC_CHANGEARMOR(NONE_6335_MILLIE, 35582);
    };
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        B_STARTOTHERROUTINE(NONE_6331_JAVAD, "TAVERN");
        NPC_REFRESH(NONE_6331_JAVAD);
        NONE_6331_JAVAD.AIVAR[15] = FALSE;
    };
    if ((Q305_HARRISTATUS) == (4)) {
        B_STARTOTHERROUTINE(NONE_6333_HARRI, "TAVERN");
        NPC_REFRESH(NONE_6333_HARRI);
    };
    B_REMOVENPC(58488);
    B_REMOVENPC(58492);
    FF_APPLYONCEEXTGT(64190, 0, -(1));
}

func void HAVEN_AFTERQ306_FADESCREEN() {
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_MAINGATE");
    Q306_BEN_REMEMBERTHISVISUAL = FALSE;
    Q301_AFTERQ306 = TRUE;
    Q301_BLOCKTELEPORT = TRUE;
    WLD_SETTIME(19, 0);
    SETHOLDTIME(TRUE);
    NPC_REFRESH(NONE_7500_BEN);
    NPC_CHANGEARMOR(NONE_7500_BEN, 35383);
    NPC_REMOVEINVITEMS(NONE_7500_BEN, 35387, NPC_HASITEMS(NONE_7500_BEN, 35387));
    B_SETNPCVISUAL(NONE_7500_BEN, MALE, HUMHEADBALD, FACE_N_BIGBEN, 20, 35383);
    if ((NPC_HASITEMS(NONE_7500_BEN, 35383)) >= (2)) {
        NPC_REMOVEINVITEMS(NONE_7500_BEN, 35383, 1);
    };
    B_REMOVENPC(53387);
    TELEPORTNPCTOWP(1819, "PART17_BAR_01");
    AI_TURNTONPC(PIR_1303_CORTEZ, HERO);
    NPC_CLEARAIQUEUE(HERO);
    DUMMYFUNCWITHSTRINGPARAMETER("KM_BAR_AFTERTOURNAMENT_01");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_6_03");
    HERO.AIVAR[4] = FALSE;
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

func void HAVEN_STOPPARTYAFTERTOURNAMENT() {
    if ((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) {
        B_LOGENTRY(TOPIC_SQ317, LOG_SQ317_AFTERPARTY);
    };
    RESTOREROUTINE_CORTEZ();
    B_STARTOTHERROUTINE(NONE_7500_BEN, START);
    NPC_REFRESH(NONE_7500_BEN);
    B_STARTOTHERROUTINE(NONE_1315_ROSITA, "TAVERN_WAIT");
    NPC_REFRESH(NONE_1315_ROSITA);
    NPC_REMOVEINVITEMS(NONE_1315_ROSITA, 35582, 1);
    B_STARTOTHERROUTINE(NONE_1316_TARA, "TAVERN_WAIT");
    NPC_REFRESH(NONE_1316_TARA);
    NPC_REMOVEINVITEMS(NONE_1316_TARA, 35582, 1);
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, START);
    NPC_REFRESH(PIR_1306_RODRIGO);
    B_STARTOTHERROUTINE(PIR_1308_SIMON, START);
    NPC_REFRESH(PIR_1308_SIMON);
    B_STARTOTHERROUTINE(PIR_1309_OSCAR, START);
    NPC_REFRESH(PIR_1309_OSCAR);
    B_STARTOTHERROUTINE(PIR_1310_VICENTE, START);
    NPC_REFRESH(PIR_1310_VICENTE);
    B_STARTOTHERROUTINE(PIR_1311_THIAGO, START);
    NPC_REFRESH(PIR_1311_THIAGO);
    B_STARTOTHERROUTINE(PIR_6322_GHOST, START);
    NPC_REFRESH(PIR_6322_GHOST);
    B_STARTOTHERROUTINE(NOV_200_HIERRO, START);
    NPC_REFRESH(NOV_200_HIERRO);
    B_STARTOTHERROUTINE(PIR_1304_IVAN, START);
    NPC_REFRESH(PIR_1304_IVAN);
    B_STARTOTHERROUTINE(PIR_1305_OTIS, START);
    NPC_REFRESH(PIR_1305_OTIS);
    B_STARTOTHERROUTINE(PIR_1307_PROXIMO, START);
    NPC_REFRESH(PIR_1307_PROXIMO);
    B_STARTOTHERROUTINE(PIR_1326_DAN, START);
    NPC_REFRESH(PIR_1326_DAN);
    B_STARTOTHERROUTINE(PIR_13553_DINKEL, START);
    NPC_REFRESH(PIR_13553_DINKEL);
    if ((SQ317_WHATRUNE) == (0)) {
        B_STARTOTHERROUTINE(NONE_13719_HOMER, START);
        NPC_REFRESH(NONE_13719_HOMER);
    };
    B_STARTOTHERROUTINE(PIR_1312_LARRY, START);
    NPC_REFRESH(PIR_1312_LARRY);
    NPC_REMOVEINVITEMS(PIR_1312_LARRY, 35542, 1);
    B_STARTOTHERROUTINE(PIR_1313_GETTER, START);
    NPC_REFRESH(PIR_1313_GETTER);
    RESTOREROUTINE_MORITZ();
    if ((NPC_KNOWSINFO(HERO, 84791)) == (FALSE)) {
        B_STARTOTHERROUTINE(PIR_1325_FOX, START);
        NPC_REFRESH(PIR_1325_FOX);
    };
    B_STARTOTHERROUTINE(PIR_1327_LAUTENIST, START);
    NPC_REFRESH(PIR_1327_LAUTENIST);
    B_STARTOTHERROUTINE(PIR_1300_LEONARDO, START);
    NPC_REFRESH(PIR_1300_LEONARDO);
    B_STARTOTHERROUTINE(PIR_1329_SAUL, START);
    NPC_REFRESH(PIR_1329_SAUL);
    if ((Q305_BERTELWAY) == (1)) {
        B_STARTOTHERROUTINE(NONE_6332_BERTEL, "HAVEN");
        NPC_REFRESH(NONE_6332_BERTEL);
    };
    if ((Q305_HERDIS_FINISHWAY) == (1)) {
        B_STARTOTHERROUTINE(NONE_6334_HERDIS, "HAVEN");
        NPC_REFRESH(NONE_6334_HERDIS);
        NPC_REMOVEINVITEMS(NONE_6334_HERDIS, 35582, 1);
        B_STARTOTHERROUTINE(NONE_6335_MILLIE, "HAVEN");
        NPC_REFRESH(NONE_6335_MILLIE);
        NPC_REMOVEINVITEMS(NONE_6335_MILLIE, 35582, 1);
    };
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        B_STARTOTHERROUTINE(NONE_6331_JAVAD, "PIRATES");
        NPC_REFRESH(NONE_6331_JAVAD);
    };
    if ((Q305_HARRISTATUS) == (4)) {
        B_STARTOTHERROUTINE(NONE_6333_HARRI, "TAVERN");
        NPC_REFRESH(NONE_6333_HARRI);
    };
}

