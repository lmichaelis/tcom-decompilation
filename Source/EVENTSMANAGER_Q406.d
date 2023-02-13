func void EVENTSMANAGER_Q406() {
    var int Q406_SEARCHKESSEL_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_Q406)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q406_SEARCHKESSEL_LOGENTRY) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_88")) <= (3000)) && ((NPC_KNOWSINFO(HERO, 80122)) == (FALSE))) {
            Q406_SEARCHKESSEL_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q406, LOG_Q406_SEARCHKESSEL);
        };
    };
    if ((Q406_KURTHOUSELOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "VILLAGE_KURTHOUSE_03")) <= (500)) {
            Q406_KURTHOUSELOGENTRY = TRUE;
            AI_OUTPUT(HERO, HERO, "DIA_Q406_WHEREISKURT_15_01");
            B_GIVEPLAYERXP(XP_Q406_KURTHOUSE);
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (TRUE)) {
        if (((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_99")) <= (700)) && ((NPC_GETDISTTOWP(HERO, "PART9_PATH_99")) <= (700))) {
            MUSIC_OVERRIDETRACK(21950);
            WLD_SENDTRIGGER("Q406_MOVER_ALPHA");
            Q406_KESSEL_GOHOUSE = 2;
            CREATEINVITEMS(NONE_202_KESSEL, 34384, 30);
            CREATEINVITEMS(NONE_6440_VOLKERGUARD, 34384, 30);
            WLD_SENDTRIGGER("KM_WATERDEATH_01");
            WLD_INSERTNPC(57084, "PART9_WATERHOUSE_BERNDT");
            WLD_INSERTNPC(56825, "KM_WATERDEATH_VOLKER_01");
            TELEPORTNPCTOWP(1819, "PART9_WATER_CUTSCENE_HERO_01");
            TELEPORTNPCTOWP(56688, "PART9_PATH_99");
            NPC_CLEARAIQUEUE(NONE_202_KESSEL);
            NPC_CLEARAIQUEUE(NONE_6439_BERNDT);
            NPC_CLEARAIQUEUE(NONE_6440_VOLKERGUARD);
            NONE_202_KESSEL.AIVAR[92] = TRUE;
            NONE_6439_BERNDT.AIVAR[92] = TRUE;
            AI_TURNTONPC(NONE_202_KESSEL, HERO);
            AI_TURNTONPC(HERO, NONE_202_KESSEL);
            AI_SETWALKMODE(HERO, NPC_WALK);
            AI_SETWALKMODE(NONE_202_KESSEL, NPC_WALK);
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_01");
            AI_PLAYANI(NONE_202_KESSEL, T_SEARCH);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_02");
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_SETWALKMODE(NONE_202_KESSEL, NPC_WALK);
            AI_GOTOWP(NONE_202_KESSEL, "PART9_WATERHOUSE_04");
            AI_WAIT(HERO, 1060320051);
            AI_GOTOWP(HERO, "PART9_WATER_CUTSCENE_HERO_02");
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (2)) {
        if ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_WATERHOUSE_02")) <= (320)) {
            Q406_KESSEL_GOHOUSE = 3;
            WLD_SENDUNTRIGGER("KM_WATERDEATH_01");
            WLD_SENDTRIGGER("KM_WATERDEATH_02");
            FF_APPLYONCEEXT(94110, 1000, 4);
            TELEPORTNPCTOWP(56688, "PART9_WATERHOUSE_04");
            AI_TURNTONPC(NONE_6439_BERNDT, NONE_202_KESSEL);
            AI_PLAYANIBS(NONE_6439_BERNDT, T_STAND_2_SIT, BS_SIT);
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (4)) {
        Q406_KESSEL_GOHOUSE = 5;
        NONE_6440_VOLKERGUARD.AIVAR[95] = TRUE;
        AI_STOPLOOKAT(NONE_202_KESSEL);
        MDL_APPLYOVERLAYMDS(NONE_6439_BERNDT, "Humans_Marvin_RenegadePrison.mds");
        MDL_APPLYOVERLAYMDS(NONE_6439_BERNDT, "HUMANS_SUDDENDEATH.MDS");
        WLD_SENDUNTRIGGER("KM_WATERDEATH_02");
        WLD_SENDTRIGGER("KM_WATERDEATH_03");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_TURNAWAY(NONE_202_KESSEL, HERO);
        AI_PLAYANI(NONE_202_KESSEL, T_SEARCH);
        AI_WAIT(HERO, 1050253722);
        AI_PLAYANI(HERO, T_SEARCH);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_6439_BERNDT, HERO, "DIA_WaterDeath_Cutscene_03_03");
        AI_TURNTONPC(HERO, NONE_6439_BERNDT);
        AI_TURNTONPC(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_04");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94112);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_6439_BERNDT, HERO, "DIA_WaterDeath_Cutscene_03_05");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94113);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_6439_BERNDT, HERO, "DIA_WaterDeath_Cutscene_03_06");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_07");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94114);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_6439_BERNDT, HERO, "DIA_WaterDeath_Cutscene_03_08");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_09");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94115);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_6439_BERNDT, HERO, "DIA_WaterDeath_Cutscene_03_10");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_11");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_READYRANGEDWEAPON(NONE_202_KESSEL);
        AI_FUNCTION(HERO, 94116);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_12");
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_13");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_TURNTONPC(NONE_202_KESSEL, NONE_6440_VOLKERGUARD);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94119);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_WAIT(HERO, 1067030938);
        AI_FUNCTION(HERO, 94117);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_REMOVEWEAPON(NONE_202_KESSEL);
        AI_TURNTONPC(HERO, NONE_202_KESSEL);
        AI_TURNTONPC(NONE_202_KESSEL, HERO);
        AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_WaterDeath_Cutscene_03_14");
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_TURNTONPC(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_DRAWWEAPON(NONE_202_KESSEL);
        AI_GOTONPC(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_FUNCTION(HERO, 94122);
        AI_WAITTILLEND(NONE_202_KESSEL, HERO);
        AI_WAITTILLEND(NONE_202_KESSEL, NONE_6439_BERNDT);
        AI_WAITTILLEND(NONE_6439_BERNDT, NONE_202_KESSEL);
        AI_WAITTILLEND(NONE_6439_BERNDT, HERO);
        AI_WAITTILLEND(HERO, NONE_202_KESSEL);
        AI_WAITTILLEND(HERO, NONE_6439_BERNDT);
        AI_WAIT(HERO, 1053609165);
        AI_FUNCTION(HERO, 94118);
    };
    if (((Q406_KESSEL_GOHOUSE) == (7)) || ((Q406_KESSEL_GOHOUSE) == (8))) {
        if ((NPC_ISDEAD(NONE_6441_VOLKERGUARD)) && (NPC_ISDEAD(NONE_6442_VOLKERGUARD))) {
            Q406_KESSEL_GOHOUSE = 9;
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (7)) {
        if (((NPC_GETDISTTOWP(NONE_6441_VOLKERGUARD, "PART9_WATERHOUSE_KESSEL_CUTSCENE_01")) <= (2500)) && ((NPC_GETDISTTOWP(NONE_6442_VOLKERGUARD, "PART9_WATERHOUSE_KESSEL_CUTSCENE_01")) <= (2500))) {
            Q406_KESSEL_GOHOUSE = 8;
            Q406_VOLKERGUARDS_CHANGERTN();
            PRINTD("Ludzie Volkera zmienili RTN");
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (8)) {
        if (((NPC_GETDISTTOWP(NONE_6441_VOLKERGUARD, "PART9_WATERHOUSE_05")) <= (400)) || ((NPC_GETDISTTOWP(NONE_6442_VOLKERGUARD, "PART9_WATERHOUSE_05")) <= (400))) {
            Q406_KESSEL_GOHOUSE = 9;
            Q406_VOLKERGUARDS_CHANGEGIL();
            PRINTD("Ludzie Volkera zmienili Gildie");
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (10)) && ((Q4O6_VOLKERGUARDSATTACK_V1) == (FALSE))) {
        if (((NPC_GETDISTTOWP(NONE_6446_VOLKERGUARD, "PART9_PATH_110")) <= (2500)) && ((NPC_GETDISTTOWP(NONE_6447_VOLKERGUARD, "PART9_PATH_110")) <= (2500))) {
            if (((NPC_GETDISTTOWP(HERO, "PART9_PATH_104")) <= (1350)) || ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_104")) <= (1350))) {
                Q4O6_VOLKERGUARDSATTACK_V1 = TRUE;
                Q406_VOLKERGUARDS_CHANGERTN_V1();
            };
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_PREPARECROSSBOWMANS_V1) == (FALSE))) {
        if ((((NPC_ISDEAD(NONE_6446_VOLKERGUARD)) && (NPC_ISDEAD(NONE_6447_VOLKERGUARD))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_110")) <= (1500))) || ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_110")) <= (1500))) {
            Q406_PREPARECROSSBOWMANS_V1 = TRUE;
            Q406_VOLKERGUARDS_CHANGEGIL_V1();
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_CHANGEKESSELRTN) == (0))) {
        if (((((NPC_ISDEAD(NONE_6446_VOLKERGUARD)) && (NPC_ISDEAD(NONE_6447_VOLKERGUARD))) && ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_110")) <= (500))) && ((NPC_ISINSTATE(NONE_202_KESSEL, 61599)) == (FALSE))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_110")) <= (500))) {
            if ((NPC_ISDEAD(NONE_6446_VOLKERGUARD)) == (FALSE)) {
                B_KILLNPC(56842);
            };
            if ((NPC_ISDEAD(NONE_6447_VOLKERGUARD)) == (FALSE)) {
                B_KILLNPC(56845);
            };
            Q406_VOLKERGUARDS_CHANGEGIL_V1();
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(63864, 75, 4);
            Q406_CHANGEKESSELRTN = 1;
        };
    };
    if ((((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_CHANGEKESSELRTN) == (1))) && ((Q4O6_VOLKERGUARDSATTACK_V1) == (1))) {
        if (((NPC_GETDISTTOWP(NONE_6450_VOLKERGUARD, "PART9_PATH_85")) <= (2500)) && ((NPC_GETDISTTOWP(NONE_6451_VOLKERGUARD, "PART9_PATH_85")) <= (2500))) {
            if (((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_96")) <= (400)) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_96")) <= (1500))) {
                Q4O6_VOLKERGUARDSATTACK_V1 = 2;
                Q406_VOLKERGUARDS_CHANGERTN_V2();
            };
        };
    };
    if ((((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_PREPARECROSSBOWMANS_V2) == (FALSE))) && ((Q406_CHANGEKESSELRTN) == (1))) {
        if ((((NPC_ISDEAD(NONE_6450_VOLKERGUARD)) && (NPC_ISDEAD(NONE_6451_VOLKERGUARD))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_96")) <= (1500))) || ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_96")) <= (1500))) {
            Q406_PREPARECROSSBOWMANS_V2 = TRUE;
            Q406_VOLKERGUARDS_CHANGEGIL_V2();
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_CHANGEKESSELRTN) == (1))) {
        if (((((NPC_ISDEAD(NONE_6450_VOLKERGUARD)) && (NPC_ISDEAD(NONE_6451_VOLKERGUARD))) && ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_PATH_85")) <= (350))) && ((NPC_ISINSTATE(NONE_202_KESSEL, 61599)) == (FALSE))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_84")) <= (850))) {
            Q406_CHANGEKESSELRTN = 2;
            if ((NPC_ISDEAD(NONE_6450_VOLKERGUARD)) == (FALSE)) {
                B_KILLNPC(56858);
            };
            if ((NPC_ISDEAD(NONE_6451_VOLKERGUARD)) == (FALSE)) {
                B_KILLNPC(56861);
            };
            Q406_VOLKERGUARDS_CHANGEGIL_V2();
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(63866, 75, 4);
        };
    };
    if ((((Q406_KESSEL_GOHOUSE) == (10)) || ((Q406_KESSEL_GOHOUSE) == (8))) || ((Q406_KESSEL_GOHOUSE) == (9))) {
        if ((NPC_GETDISTTONPC(HERO, NONE_202_KESSEL)) >= (2000)) {
            Q406_KESSEL_GOHOUSE = 12;
        };
    };
    if ((Q406_KESSEL_GOHOUSE) == (10)) {
        if (((NPC_GETDISTTOWP(HERO, "PART9_PATH_112")) <= (750)) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_83")) <= (750))) {
            Q406_KESSEL_GOHOUSE = 11;
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (11)) && (!(NPC_ISDEAD(HERO)))) {
        if (HLP_ISVALIDNPC(NONE_6448_VOLKERGUARD_CROSSBOW)) {
            AI_SHOOTAT(NONE_6448_VOLKERGUARD_CROSSBOW, HERO);
        };
        if (HLP_ISVALIDNPC(NONE_6449_VOLKERGUARD_CROSSBOW)) {
            AI_SHOOTAT(NONE_6449_VOLKERGUARD_CROSSBOW, HERO);
        };
        if (HLP_ISVALIDNPC(NONE_6452_VOLKERGUARD_CROSSBOW)) {
            AI_SHOOTAT(NONE_6452_VOLKERGUARD_CROSSBOW, HERO);
        };
        if (HLP_ISVALIDNPC(NONE_6453_VOLKERGUARD_CROSSBOW)) {
            AI_SHOOTAT(NONE_6453_VOLKERGUARD_CROSSBOW, HERO);
        };
        HERO.AIVAR[52] = TRUE;
        Q406_KESSEL_GOHOUSE = 12;
    };
    if (((Q406_KESSEL_GOHOUSE) == (12)) && (!(NPC_ISDEAD(HERO)))) {
        PRINTSCREEN(RESERVED_CONST_STRING_15, -(1), 25, FONT_SCREEN, 5);
        Q406_KESSEL_GOHOUSE = 13;
        SND_PLAY("CrossbowShoot");
        HERO.FLAGS = 0;
        HERO.ATTRIBUTE[1] = -(1);
        HERO.ATTRIBUTE[0] = -(1);
        PRINTD("Rip");
    };
    if (((Q406_KESSEL_GOHOUSE) == (10)) && ((Q406_CHANGEKESSELRTN) == (2))) {
        if (((NPC_GETDISTTOWP(HERO, "PART9_WATERFALL_03")) <= (425)) && ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_WATERFALL_03")) <= (275))) {
            Q406_KESSEL_GOHOUSE = 14;
            WLD_INSERTNPC(53365, "PART9_WATERFALL_CUTSCENE_BRADLOCK");
            B_STARTOTHERROUTINE(NONE_6448_VOLKERGUARD_CROSSBOW, CUTSCENERTN);
            NPC_REFRESH(NONE_6448_VOLKERGUARD_CROSSBOW);
            TELEPORTNPCTOWP(56848, NONE_6448_VOLKERGUARD_CROSSBOW.WP);
            B_STARTOTHERROUTINE(NONE_6449_VOLKERGUARD_CROSSBOW, CUTSCENERTN);
            NPC_REFRESH(NONE_6449_VOLKERGUARD_CROSSBOW);
            TELEPORTNPCTOWP(56853, NONE_6449_VOLKERGUARD_CROSSBOW.WP);
            B_STARTOTHERROUTINE(NONE_6452_VOLKERGUARD_CROSSBOW, CUTSCENERTN);
            NPC_REFRESH(NONE_6452_VOLKERGUARD_CROSSBOW);
            TELEPORTNPCTOWP(56864, NONE_6452_VOLKERGUARD_CROSSBOW.WP);
            B_STARTOTHERROUTINE(NONE_6453_VOLKERGUARD_CROSSBOW, CUTSCENERTN);
            NPC_REFRESH(NONE_6453_VOLKERGUARD_CROSSBOW);
            TELEPORTNPCTOWP(56869, NONE_6453_VOLKERGUARD_CROSSBOW.WP);
            PRINTD("Bradlock spawn");
        };
    };
    if (((Q406_KESSEL_GOHOUSE) == (14)) && ((Q406_CHANGEKESSELRTN) == (2))) {
        if ((((NPC_GETDISTTOWP(HERO, "PART9_WATERFALL_03")) <= (425)) && ((NPC_GETDISTTOWP(NONE_202_KESSEL, "PART9_WATERFALL_03")) <= (275))) && ((NPC_GETDISTTOWP(NONE_2246_BRADLOCK_CUTSCENE, "PART9_WATERFALL_CUTSCENE_BRADLOCK")) <= (900))) {
            Q406_KESSEL_GOHOUSE = 15;
            HERO.FLAGS = 2;
            NONE_202_KESSEL.FLAGS = 2;
            FF_APPLYONCEEXTGT(63850, 0, -(1));
            WLD_SENDTRIGGER("KM_WATERFALL_JUMP_01");
            TELEPORTNPCTOWP(1819, "PART9_WATERFALL_CUTSCENE_HERO");
            TELEPORTNPCTOWP(56688, "PART9_WATERFALL_CUTSCENE_KESSEL");
            TELEPORTNPCTOWP(56848, "PART9_WATERFALL_CUTSCENE_CBOW_04");
            TELEPORTNPCTOWP(56853, "PART9_WATERFALL_CUTSCENE_CBOW_03");
            TELEPORTNPCTOWP(56864, "PART9_WATERFALL_CUTSCENE_CBOW_02");
            TELEPORTNPCTOWP(56869, "PART9_WATERFALL_CUTSCENE_CBOW_01");
            TELEPORTNPCTOWP(53365, "PART9_WATERFALL_02");
            CREATEINVITEMS(NONE_6448_VOLKERGUARD_CROSSBOW, 34384, 10);
            CREATEINVITEMS(NONE_6449_VOLKERGUARD_CROSSBOW, 34384, 10);
            CREATEINVITEMS(NONE_6452_VOLKERGUARD_CROSSBOW, 34384, 10);
            CREATEINVITEMS(NONE_6453_VOLKERGUARD_CROSSBOW, 34384, 10);
            NPC_CLEARAIQUEUE(NONE_202_KESSEL);
            NPC_CLEARAIQUEUE(NONE_2246_BRADLOCK_CUTSCENE);
            NONE_202_KESSEL.AIVAR[92] = TRUE;
            NONE_2246_BRADLOCK_CUTSCENE.AIVAR[92] = TRUE;
            AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_TURNTONPC(NONE_202_KESSEL, HERO);
            AI_TURNTONPC(HERO, NONE_202_KESSEL);
            AI_TURNTONPC(NONE_6448_VOLKERGUARD_CROSSBOW, NONE_202_KESSEL);
            AI_TURNTONPC(NONE_6449_VOLKERGUARD_CROSSBOW, NONE_202_KESSEL);
            AI_TURNTONPC(NONE_6452_VOLKERGUARD_CROSSBOW, HERO);
            AI_TURNTONPC(NONE_6453_VOLKERGUARD_CROSSBOW, HERO);
            AI_SETWALKMODE(HERO, NPC_WALK);
            AI_SETWALKMODE(NONE_202_KESSEL, NPC_WALK);
            AI_SETWALKMODE(NONE_2246_BRADLOCK_CUTSCENE, NPC_WALK);
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_01");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_02");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_03");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_04");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94123);
            AI_REMOVEWEAPON(HERO);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_05");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_06");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94124);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_07");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_08");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94125);
            AI_TURNTONPC(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_TURNTONPC(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_09");
            AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94126);
            if ((HERO.GUILD) == (GIL_MIL)) {
                AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_10");
            } else if ((HERO.GUILD) == (GIL_SLD)) {
                AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_11");
            } else {
                AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_12");
            };
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94127);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_13");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94128);
            AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_14");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94129);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_15");
            AI_TURNTONPC(HERO, NONE_202_KESSEL);
            AI_OUTPUT(HERO, HERO, "DIA_Waterfall_Cutscene_15_16");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94130);
            AI_TURNTONPC(NONE_202_KESSEL, HERO);
            AI_OUTPUT(NONE_202_KESSEL, HERO, "DIA_Waterfall_Cutscene_03_17");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94131);
            AI_TURNAWAY(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_TURNAWAY(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_OUTPUT(NONE_2246_BRADLOCK_CUTSCENE, HERO, "DIA_Waterfall_Cutscene_03_18");
            AI_WAITTILLEND(HERO, NONE_202_KESSEL);
            AI_WAITTILLEND(HERO, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_202_KESSEL, HERO);
            AI_WAITTILLEND(NONE_202_KESSEL, NONE_2246_BRADLOCK_CUTSCENE);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
            AI_WAITTILLEND(NONE_2246_BRADLOCK_CUTSCENE, HERO);
            AI_FUNCTION(HERO, 94132);
            AI_FUNCTION(HERO, 94133);
            AI_SETWALKMODE(NONE_202_KESSEL, NPC_RUN);
            AI_SETWALKMODE(HERO, NPC_RUN);
            AI_WAIT(NONE_202_KESSEL, 1045220557);
            AI_WAIT(HERO, 1053609165);
            AI_PLAYANIBS(NONE_202_KESSEL, "T_CUTSCENEJUMP_START", BS_FALL);
            AI_PLAYANIBS(HERO, "T_CUTSCENEJUMP_START", BS_FALL);
        };
    };
}

func void Q406_CUTSCENE_CAMERA() {
    var int CHANGEQ406CUTSCENECAMERA;
    CHANGEQ406CUTSCENECAMERA = (CHANGEQ406CUTSCENECAMERA) + (1);
    if ((CHANGEQ406CUTSCENECAMERA) == (4)) {
        Q406_KESSEL_GOHOUSE = 4;
        CHANGEQ406CUTSCENECAMERA = 0;
    };
}

func void Q406_WATERDEATH_CUTSCENE_01() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_03");
    WLD_SENDTRIGGER("KM_WATERDEATH_04");
    TELEPORTNPCTOWP(1819, "PART9_WATER_CUTSCENE_HERO_03");
    TELEPORTNPCTOWP(56688, "PART9_WATERHOUSE_KESSEL_CUTSCENE_01");
    AI_ALIGNTOWP(NONE_202_KESSEL);
}

func void Q406_WATERDEATH_CUTSCENE_02() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_04");
    WLD_SENDTRIGGER("KM_WATERDEATH_05");
    AI_SETWALKMODE(NONE_6440_VOLKERGUARD, NPC_SNEAK);
    AI_GOTOWP(NONE_6440_VOLKERGUARD, "KM_WATERDEATH_VOLKER_03");
    AI_READYRANGEDWEAPON(NONE_6440_VOLKERGUARD);
    AI_WAIT(NONE_6440_VOLKERGUARD, 1065353216);
    AI_AIMAT(NONE_6440_VOLKERGUARD, NONE_202_KESSEL);
}

func void Q406_WATERDEATH_CUTSCENE_03() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_05");
    WLD_SENDTRIGGER("KM_WATERDEATH_06");
}

func void Q406_WATERDEATH_CUTSCENE_04() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_06");
    WLD_SENDTRIGGER("KM_WATERDEATH_07");
}

func void Q406_WATERDEATH_CUTSCENE_05() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_07");
    WLD_SENDTRIGGER("KM_WATERDEATH_08");
}

func void Q406_WATERDEATH_CUTSCENE_06() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_08");
    WLD_SENDTRIGGER("KM_WATERDEATH_09");
}

func void Q406_WATERDEATH_CUTSCENE_END() {
    WLD_SENDUNTRIGGER("KM_WATERDEATH_09");
    NONE_202_KESSEL.AIVAR[92] = FALSE;
    NONE_6439_BERNDT.AIVAR[92] = FALSE;
    AI_REMOVEWEAPON(NONE_202_KESSEL);
    B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q406_HOUSE2");
    Q406_KESSEL_RTNCHECK = 3;
    NPC_REFRESH(NONE_202_KESSEL);
    WLD_INSERTNPC(56827, "PART9_PATH_98");
    WLD_INSERTNPC(56830, "PART9_WATER_CUTSCENE_HERO_01");
    Q406_KESSEL_GOHOUSE = 7;
}

func void Q406_WATERDEATH_CUTSCENE_SHOT() {
    FF_APPLYONCEEXT(94120, 250, 4);
}

func void Q406_KESSELSHOOT() {
    var int CHANGEQ406KESSELSHOOT;
    CHANGEQ406KESSELSHOOT = (CHANGEQ406KESSELSHOOT) + (1);
    if ((CHANGEQ406KESSELSHOOT) == (1)) {
        AI_AIMAT(NONE_202_KESSEL, NONE_6440_VOLKERGUARD);
    };
    if ((CHANGEQ406KESSELSHOOT) == (2)) {
        AI_STOPAIM(NONE_6440_VOLKERGUARD);
    };
    if ((CHANGEQ406KESSELSHOOT) == (3)) {
        AI_PLAYANI(NONE_202_KESSEL, "T_CBOWAIM_2_CBOWSHOOT");
        SND_PLAY("CrossbowShoot");
    };
    if ((CHANGEQ406KESSELSHOOT) == (4)) {
        SND_PLAY("SVM_2_DEAD");
        AI_PLAYANI(NONE_6440_VOLKERGUARD, "T_DEADB");
        B_MAGICHURTNPC(HERO, NONE_6440_VOLKERGUARD, 213799999);
        AI_STOPAIM(NONE_202_KESSEL);
    };
}

func void Q406_WATERDEATH_CUTSCENE_KILLBERDNT() {
    MDL_REMOVEOVERLAYMDS(NONE_6439_BERNDT, "Humans_Marvin_RenegadePrison.MDS");
    AI_PLAYANI(NONE_202_KESSEL, T_1HATTACKR);
    AI_PLAYANIBS(NONE_6439_BERNDT, T_DEAD, BS_STAND);
    SND_PLAY("FIG_SwordFinal");
    SND_PLAY("SVM_37_DEAD");
    B_MAGICHURTNPC(HERO, NONE_6439_BERNDT, 99999);
    AI_REMOVEWEAPON(NONE_202_KESSEL);
}

func void Q406_WATERFALL_CUTSCENE_01() {
    AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_01");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_02");
}

func void Q406_WATERFALL_CUTSCENE_02() {
    AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_02");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_03");
}

func void Q406_WATERFALL_CUTSCENE_03() {
    AI_TURNTONPC(NONE_2246_BRADLOCK_CUTSCENE, NONE_202_KESSEL);
    AI_TURNTONPC(NONE_6448_VOLKERGUARD_CROSSBOW, NONE_202_KESSEL);
    AI_TURNTONPC(NONE_6449_VOLKERGUARD_CROSSBOW, NONE_202_KESSEL);
    AI_TURNTONPC(NONE_6452_VOLKERGUARD_CROSSBOW, HERO);
    AI_TURNTONPC(NONE_6453_VOLKERGUARD_CROSSBOW, HERO);
    TELEPORTNPCTOWP(53365, "PART9_WATERFALL_CUTSCENE_BRADLOCK");
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_03");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_04");
}

func void Q406_WATERFALL_CUTSCENE_04() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_04");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_05");
}

func void Q406_WATERFALL_CUTSCENE_05() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_05");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_06");
}

func void Q406_WATERFALL_CUTSCENE_06() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_06");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_07");
}

func void Q406_WATERFALL_CUTSCENE_07() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_07");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_08");
}

func void Q406_WATERFALL_CUTSCENE_08() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_08");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_09");
}

func void Q406_WATERFALL_CUTSCENE_09() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_09");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_10");
}

func void Q406_WATERFALL_CUTSCENE_10() {
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_10");
    WLD_SENDTRIGGER("KM_WATERFALL_JUMP_11_A");
}

func void Q406_WATERFALL_CUTSCENE_END() {
    FF_APPLYONCEEXT(94134, 200, 10);
    FADESCREENTOBLACKF(3, 94136, 1000);
}

func void Q406_WATERFALL_CUTSCENE_SHOOT() {
    var int Q406_CROSSBOWMANS_SHOOT;
    Q406_CROSSBOWMANS_SHOOT = (Q406_CROSSBOWMANS_SHOOT) + (1);
    if ((Q406_CROSSBOWMANS_SHOOT) == (1)) {
        SND_PLAY("CrossbowShoot");
    };
    if ((Q406_CROSSBOWMANS_SHOOT) == (4)) {
        SND_PLAY("CrossbowShoot");
    };
    if ((Q406_CROSSBOWMANS_SHOOT) == (7)) {
        SND_PLAY("CrossbowShoot");
    };
    if ((Q406_CROSSBOWMANS_SHOOT) == (10)) {
        SND_PLAY("CrossbowShoot");
    };
}

func void Q406_WATERFALL_CUTSCENE_END_FADESCREEN() {
    GETITEMHOLDER();
    B_GIVEALLINVENTORY(HERO, ITEM_HOLDER);
    MOB_CREATEITEMS("KM_MARVINCHEST_5CHAPTER", 37027, 1);
    LOG_SETSTATUS(_@(MIS_Q406), TOPIC_Q406, LOG_SUCCESS);
    NONE_202_KESSEL.AIVAR[92] = FALSE;
    NONE_2246_BRADLOCK_CUTSCENE.AIVAR[92] = FALSE;
    WLD_SETTIME(4, 20);
    HERO.FLAGS = 0;
    HERO.ATTRIBUTE[0] = 40;
    B_REMOVENPC(56848);
    B_REMOVENPC(56853);
    B_REMOVENPC(56864);
    B_REMOVENPC(56869);
    B_REMOVENPC(53365);
    B_REMOVENPC(53197);
    B_REMOVENPC(56836);
    B_REMOVENPC(56833);
    B_REMOVENPC(56848);
    B_REMOVENPC(56853);
    B_REMOVENPC(56839);
    B_REMOVENPC(56864);
    B_REMOVENPC(56869);
    B_REMOVENPC(53358);
    WLD_SENDUNTRIGGER("KM_WATERFALL_JUMP_11_A");
    TELEPORTNPCTOWP(1819, "PART8_MARVIN_CHAPTER5");
    MDL_APPLYOVERLAYMDS(HERO, "HumanS_Wounded.mds");
    NPC_CHANGEARMOR(NONE_202_KESSEL, 35592);
    B_STARTOTHERROUTINE(NONE_202_KESSEL, "Q501_TIRED");
    NPC_REFRESH(NONE_202_KESSEL);
    TELEPORTNPCTOWP(56688, NONE_202_KESSEL.WP);
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL, HUMANSHURTMDS);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "CHAPTER5");
    NPC_REFRESH(KDW_203_RIORDIAN);
    TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
    AI_FUNCTION(HERO, 94137);
}

func void Q406_WATERFALL_CUTSCENE_END_UNBLOCKCAMERA() {
    FF_APPLYONCEEXT(94138, 1000, 6);
}

func void Q406_WATERFALL_CUTSCENE_END_APPLY() {
    var int Q406_WATERFALL_CUTSCENE_END_COUNT;
    Q406_WATERFALL_CUTSCENE_END_COUNT = (Q406_WATERFALL_CUTSCENE_END_COUNT) + (1);
    if ((Q406_WATERFALL_CUTSCENE_END_COUNT) == (1)) {
        WLD_SENDTRIGGER("Q406_MONASTERY");
    };
    if ((Q406_WATERFALL_CUTSCENE_END_COUNT) == (2)) {
        MUSIC_DISABLEOVERRIDE();
        FADESCREENFROMBLACK(1);
    };
    if ((Q406_WATERFALL_CUTSCENE_END_COUNT) == (5)) {
        WLD_SENDUNTRIGGER("Q406_MONASTERY");
    };
    if ((Q406_WATERFALL_CUTSCENE_END_COUNT) == (6)) {
        if ((NPC_GETDISTTOWP(HERO, RESERVED_CONST_STRING_61)) >= (300)) {
            TELEPORTNPCTOWP(1819, RESERVED_CONST_STRING_61);
        };
        Q406_WATERFALL_CUTSCENE_END_COUNT = 0;
        B_CHAPTERCHANGE(5, ARCHOLOS_ZEN, TRUE);
        NPC_CLEARAIQUEUE(HERO);
        AI_STANDUP(HERO);
        HERO.AIVAR[4] = FALSE;
    };
}
