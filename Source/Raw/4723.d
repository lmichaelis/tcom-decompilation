func void EVENTSMANAGER_Q602() {
    if ((LOG_GETSTATUS(MIS_Q602)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q602_SPAWN) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "Q602_START")) >= (500)) {
            Q602_SPAWN = TRUE;
            Q602_SPAWNALLNPC();
        };
    };
    if ((Q602_BLOCKTIME) == (FALSE)) {
        if (WLD_ISTIME(19, 25, 19, 30)) {
            PRINTD("Zatrzymaj czas");
            Q602_BLOCKTIME = TRUE;
            SETHOLDTIME(TRUE);
        };
    };
    if ((Q602_SPAWN) == (TRUE)) {
        if ((FINALBOARDS_ARWIDISDEAD) == (FALSE)) {
            if ((Q509_ARWIDVOLFZACKE) == (FALSE)) {
                if (NPC_ISDEAD(MIL_4017_ARWID_Q602)) {
                    FINALBOARDS_ARWIDISDEAD = TRUE;
                    PRINTD("Arwid nie¿yje!");
                };
            };
        };
    };
    if ((Q602_FIRSTCUTSCENEENABLE) == (0)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM2_PATH_06")) <= (750)) {
            Q602_FIRSTCUTSCENEENABLE = 1;
            NPC_CLEARAIQUEUE(DJG_10047_WOLFSON_Q602);
            AI_DRAWWEAPON(DJG_10047_WOLFSON_Q602);
            PRINTD("Animacja");
        };
    };
    if ((Q602_FIRSTCUTSCENEENABLE) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM2_PATH_06")) <= (500)) {
            CUTSCENE_START(0x16a4a);
            Q602_FIRSTCUTSCENEENABLE = 2;
        };
    };
    if ((Q602_KUNOMADNESS) == (0)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTE2_PATH_05")) <= (450)) {
            Q602_KUNOMADNESS = 1;
            Q602_KUNOKILLSLEON();
        };
    };
    if ((Q602_KUNOMADNESS) == (2)) {
        if (!(NPC_ISINSTATE(VLK_61270_KUNO_Q602, 0xf09f))) {
            if ((NPC_GETDISTTOWP(VLK_61270_KUNO_Q602, "Q602_START")) <= (500)) {
                if (!(NPC_ISDEAD(VLK_61270_KUNO_Q602))) {
                    Q602_KUNOMADNESS = 3;
                    B_REMOVENPC(0xead6);
                    PRINTD("Kuno nie ¿yje");
                };
            };
        };
    };
    if ((Q602_CLOSEDGATEV1_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTE2_PATH_12")) <= (0x5dc)) {
            Q602_CLOSEDGATEV1_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_CLOSEDGATE);
        };
    };
    if ((Q602_HERSHLIKHELP) == (FALSE)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_30020_HERSHLIK_Q602)) <= (500)) {
            if ((NPC_ISDEAD(DJG_10048_WOLFSON_Q602)) && (NPC_ISDEAD(DJG_10049_WOLFSON_Q602))) {
                Q602_HERSHLIKHELP = 2;
                B_SAY(VLK_30020_HERSHLIK_Q602, HERO, "$HERSHLIK_HELPME");
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_HERSHLIK_HELP);
            };
        };
    };
    if ((Q602_HERSHLIKHELP) == (3)) {
        if ((NPC_GETDISTTOWP(VLK_30020_HERSHLIK_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(VLK_30020_HERSHLIK_Q602))) {
                Q602_HERSHLIKHELP = 4;
                B_REMOVENPC(0xeac9);
                PRINTD("Hershlik uciek³!");
            };
        };
    };
    if ((Q602_TELEPORTHERSHLIK) == (0)) {
        if (SPAWNHERSHLIKISAVAILABLE("PARTE2_FIREDOOR_01")) {
            SPAWNHERSHLIK("PARTM2_PATH_81", "Q602_WAIT_V1");
            PRINTD("Teleport Hershlik - 1");
        } else if (SPAWNHERSHLIKISAVAILABLE("PARTE2_FIREDOOR_02")) {
            SPAWNHERSHLIK("PARTM2_PATH_86", "Q602_WAIT_V2");
            PRINTD("Teleport Hershlik - 2");
        };
    };
    if ((Q602_TELEPORTHERSHLIK) == (0)) {
        if (((Q602_PUTOUTFIRE_V1) >= (1)) || ((Q602_PUTOUTFIRE_V2) >= (1))) {
            Q602_TELEPORTHERSHLIK = 1;
            SPAWNHERSHLIK("PARTM2_PATH_110", START);
            PRINTD("Koniec teleportowania");
        };
    };
    if ((Q602_HERSHLIKCHANGERTN) == (1)) {
        if (((NPC_GETDISTTOWP(VLK_30020_HERSHLIK_Q602, "PARTM2_PATH_78")) <= (400)) && ((NPC_ISINSTATE(VLK_30020_HERSHLIK_Q602, 0xf09f)) == (FALSE))) {
            Q602_HERSHLIKCHANGERTN = 2;
            B_STARTOTHERROUTINE(VLK_30020_HERSHLIK_Q602, "Q602_FLEE_V2");
            NPC_REFRESH(VLK_30020_HERSHLIK_Q602);
            PRINTD("Zmiana RTN");
        };
    };
    if ((Q602_NEEDADELARDHELP) == (1)) {
        if ((NPC_GETDISTTOWP(SLD_10000_ADELARD_Q602, "PARTE1_ADELARD")) <= (350)) {
            Q602_NEEDADELARDHELP = 2;
            B_STARTOTHERROUTINE(SLD_10000_ADELARD_Q602, "Q602_RUNTOLORENZO");
            NPC_REFRESH(SLD_10000_ADELARD_Q602);
        };
    };
    if ((Q602_GARD_FLEE) == (1)) {
        if ((NPC_GETDISTTOWP(VLK_10035_GARD_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(VLK_10035_GARD_Q602))) {
                Q602_GARD_FLEE = 2;
                B_REMOVENPC(0xea85);
                PRINTD("Gard uciek³!");
            };
        };
    };
    if ((Q602_MATEYFREE) == (0)) {
        if (NPC_ISDEAD(DJG_10051_WOLFSON_Q602)) {
            Q602_MATEYFREE = 1;
        };
    };
    if ((Q602_MATEYFREE) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_30000_MATEY_Q602)) <= (500)) {
            Q602_MATEYFREE = 2;
        };
    };
    if ((Q602_ARAXOSVERSUSVOLKER) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_90")) <= (600)) || ((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_89")) <= (600))) {
            Q602_ARAXOSVERSUSVOLKER = TRUE;
            Q602_ARAXOSVOLKERFIGHT();
        };
    };
    if ((Q602_ARAXOSNEEDSHELP_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM1_GUILDHOUSE02_40")) <= (0x7d0)) {
            Q602_ARAXOSNEEDSHELP_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_ARAXOS_NEEDHELP);
        };
    };
    if ((Q305_JAVAD_WENTTONEWHOME) < (2)) {
        if ((Q602_FIGHTWITHBRADLOCK) == (0)) {
            if ((((NONE_2246_BRADLOCK_Q602.ATTRIBUTE[0]) != (NONE_2246_BRADLOCK_Q602.ATTRIBUTE[1])) || ((NONE_10062_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10062_VOLKERGUARD_Q602.ATTRIBUTE[1]))) || ((NONE_10063_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10063_VOLKERGUARD_Q602.ATTRIBUTE[1]))) {
                Q602_BRADLOCKFIGHT();
            };
        };
        if ((Q602_FIGHTWITHBRADLOCK) == (1)) {
            if (((NPC_ISDEAD(NONE_2246_BRADLOCK_Q602)) && (NPC_ISDEAD(NONE_10062_VOLKERGUARD_Q602))) && (NPC_ISDEAD(NONE_10063_VOLKERGUARD_Q602))) {
                Q602_FIGHTWITHBRADLOCK = 2;
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BRADLOCK_DEAD);
            };
        };
    };
    if ((Q602_DIMACUTSCENE_ENABLE) == (0)) {
        if ((((NONE_10064_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10064_VOLKERGUARD_Q602.ATTRIBUTE[1])) || ((NONE_10065_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10065_VOLKERGUARD_Q602.ATTRIBUTE[1]))) || ((NONE_10066_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10066_VOLKERGUARD_Q602.ATTRIBUTE[1]))) {
            Q602_DIMACUTSCENE_ENABLE = 2;
            NPC_REFRESH(SLD_5001_DIMA_Q602);
            NPC_REFRESH(SLD_1017_ARAXOS_Q602);
            NPC_REFRESH(NONE_10064_VOLKERGUARD_Q602);
            NPC_REFRESH(NONE_10065_VOLKERGUARD_Q602);
            NPC_REFRESH(NONE_10066_VOLKERGUARD_Q602);
            Q602_DIMACUTSCENE_FIGHT();
            Q602_DIMACUTSCENE_CHANGERTN();
        };
        if ((NPC_GETDISTTOWP(HERO, "PARTE1_DIMA_CUTSCENE_HERO")) <= (400)) {
            Q602_DIMACUTSCENE_ENABLE = 1;
            CUTSCENE_START(0x16a3c);
        };
    };
    if ((Q602_DIMACUTSCENE_ENABLE) == (2)) {
        if (NPC_ISDEAD(SLD_5001_DIMA_Q602)) {
            Q602_DIMACUTSCENE_ENABLE = 3;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_DIMA_DEAD);
        };
        if (((NPC_ISDEAD(NONE_10064_VOLKERGUARD_Q602)) && (NPC_ISDEAD(NONE_10065_VOLKERGUARD_Q602))) && (NPC_ISDEAD(NONE_10066_VOLKERGUARD_Q602))) {
            Q602_DIMACUTSCENE_ENABLE = 4;
        };
    };
    if ((Q602_CARAMONCUTSCENE_ENABLE) == (FALSE)) {
        if ((Q509_CARAMONVOLFZACKE) == (0)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM1_GUILDHOUSE02_04")) <= (400)) {
                if (((HERO.GUILD) == (GIL_SLD)) || ((MARVIN_LOSTGUILDARAXOS) == (1))) {
                    Q602_CARAMONCUTSCENE_ENABLE = 1;
                    CUTSCENE_START(0x16a37);
                };
            };
        };
    };
    if ((Q602_BLOCKEDWAY_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_PATH_51")) <= (750)) {
            if ((Q602_HELPSALL) == (0)) {
                EVT_Q602_E3_SHOOT();
                Q602_REMOVESALLTEAM();
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BLOCKEDWAY);
                Q602_BLOCKEDWAY_LOGENTRY = 1;
            };
        };
    };
    if ((Q602_FIREMAGESHOUSE_LOGENTRY) == (FALSE)) {
        if (((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_65")) <= (700)) || ((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_66")) <= (700))) {
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_FIREMAGESHOUSE_DEADBODIES);
            Q602_FIREMAGESHOUSE_LOGENTRY = 1;
            Q602_SILVESTRFIGHT();
        };
    };
    if ((Q602_SALLFLEE) == (1)) {
        if ((NPC_GETDISTTOWP(MIL_4044_SALL_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(MIL_4044_SALL_Q602))) {
                Q602_SALLFLEE = 2;
                B_REMOVENPC(0xe98d);
                PRINTD("Sall uciek³!");
            };
        };
    };
    if ((Q602_SALLFRINED_FLEE_01) == (1)) {
        if ((NPC_GETDISTTOWP(MIL_4048_MILITIA_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(MIL_4048_MILITIA_Q602))) {
                Q602_SALLFRINED_FLEE_01 = 2;
                B_REMOVENPC(0xe998);
                PRINTD("Salla kolegi uciek³!");
            };
        };
    };
    if ((Q602_SALLFRINED_FLEE_02) == (1)) {
        if ((NPC_GETDISTTOWP(MIL_4049_MILITIA_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(MIL_4049_MILITIA_Q602))) {
                Q602_SALLFRINED_FLEE_02 = 2;
                B_REMOVENPC(0xe99d);
                PRINTD("Salla kolegi uciek³!");
            };
        };
    };
    if ((Q602_HAVEN_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM1_PATH_128")) <= (400)) {
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_HAVEN);
            Q602_HAVEN_LOGENTRY = 1;
        };
    };
    if ((Q602_GUIDECITIZEN) == (TRUE)) {
        if ((Q602_CITIZEN_CHANGERTN_01) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_10076_CITIZEN_Q602))) && ((NPC_ISINSTATE(VLK_10076_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_10076_CITIZEN_Q602, VLK_10076_CITIZEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_01 = TRUE;
                    B_STARTOTHERROUTINE(VLK_10076_CITIZEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_10076_CITIZEN_Q602);
                };
            };
        };
        if ((Q602_CITIZEN_CHANGERTN_02) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_6300_GROEN_Q602))) && ((NPC_ISINSTATE(VLK_6300_GROEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_6300_GROEN_Q602, VLK_6300_GROEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_02 = TRUE;
                    B_STARTOTHERROUTINE(VLK_6300_GROEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_6300_GROEN_Q602);
                };
            };
        };
        if ((Q602_CITIZEN_CHANGERTN_03) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_10079_CITIZEN_Q602))) && ((NPC_ISINSTATE(VLK_10079_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_10079_CITIZEN_Q602, VLK_10079_CITIZEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_03 = TRUE;
                    B_STARTOTHERROUTINE(VLK_10079_CITIZEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_10079_CITIZEN_Q602);
                };
            };
        };
        if ((Q602_CITIZEN_CHANGERTN_04) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_10077_CITIZEN_Q602))) && ((NPC_ISINSTATE(VLK_10077_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_10077_CITIZEN_Q602, VLK_10077_CITIZEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_04 = TRUE;
                    B_STARTOTHERROUTINE(VLK_10077_CITIZEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_10077_CITIZEN_Q602);
                };
            };
        };
        if ((Q602_CITIZEN_CHANGERTN_05) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_10078_CITIZEN_Q602))) && ((NPC_ISINSTATE(VLK_10078_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_10078_CITIZEN_Q602, VLK_10078_CITIZEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_05 = TRUE;
                    B_STARTOTHERROUTINE(VLK_10078_CITIZEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_10078_CITIZEN_Q602);
                };
            };
        };
        if ((Q602_CITIZEN_CHANGERTN_06) == (FALSE)) {
            if ((!(NPC_ISDEAD(VLK_10080_CITIZEN_Q602))) && ((NPC_ISINSTATE(VLK_10080_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(VLK_10080_CITIZEN_Q602, VLK_10080_CITIZEN_Q602.WP)) <= (500)) {
                    Q602_CITIZEN_CHANGERTN_06 = TRUE;
                    B_STARTOTHERROUTINE(VLK_10080_CITIZEN_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(VLK_10080_CITIZEN_Q602);
                };
            };
        };
        if ((Q602_HELPSALL) >= (1)) {
            if ((Q602_SALL_CHANGERTN) == (FALSE)) {
                if ((!(NPC_ISDEAD(MIL_4044_SALL_Q602))) && ((NPC_ISINSTATE(MIL_4044_SALL_Q602, 0xf09f)) == (FALSE))) {
                    if ((NPC_GETDISTTOWP(MIL_4044_SALL_Q602, MIL_4044_SALL_Q602.WP)) <= (500)) {
                        Q602_SALL_CHANGERTN = TRUE;
                        B_STARTOTHERROUTINE(MIL_4044_SALL_Q602, "Q602_WAIT_E1");
                        NPC_REFRESH(MIL_4044_SALL_Q602);
                    };
                };
            };
        };
        if ((Q602_RUNAR_CHANGERTN) == (FALSE)) {
            if ((!(NPC_ISDEAD(PAL_101_SILVESTR_Q602))) && ((NPC_ISINSTATE(PAL_101_SILVESTR_Q602, 0xf09f)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(PAL_101_SILVESTR_Q602, PAL_101_SILVESTR_Q602.WP)) <= (500)) {
                    Q602_RUNAR_CHANGERTN = TRUE;
                    B_STARTOTHERROUTINE(PAL_101_SILVESTR_Q602, "Q602_WAIT_E1");
                    NPC_REFRESH(PAL_101_SILVESTR_Q602);
                };
            };
        };
    };
    if ((Q602_GARDINCITY) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM8_PATH_12")) <= (0x9c4)) {
            PRINTD("Flags");
            Q602_GARDINCITY = 2;
            DJG_100351_WOLFSON_Q602.FLAGS = 0;
            DJG_100352_WOLFSON_Q602.FLAGS = 0;
        };
    };
    if ((Q602_TRIMEGISTO_CUTSCENEENABLE) == (1)) {
        if (!(NPC_ISINSTATE(KDF_6404_TRIMEGISTO_Q602, 0xf09f))) {
            HERO.AIVAR[4] = TRUE;
            Q602_TRIMEGISTO_CUTSCENEENABLE = 2;
            FF_APPLYONCEEXT(0x16ff4, 500, 2);
        };
    };
    if ((Q602_TRIMEGISTO_CUTSCENEENABLE) == (3)) {
        if ((NPC_GETDISTTONPC(HERO, KDF_6404_TRIMEGISTO_Q602)) >= (1000)) {
            if (!(NPC_ISINSTATE(KDF_6404_TRIMEGISTO_Q602, 0xf09f))) {
                Q602_TRIMEGISTO_CUTSCENEENABLE = 4;
                CUTSCENE_START(0x16a53);
            };
        };
    };
    if ((Q602_TRIMEGISTO_FIGHT) == (1)) {
        if (NPC_ISDEAD(KDF_6404_TRIMEGISTO_Q602)) {
            Q602_TRIMEGISTO_FIGHT = 2;
            Q602_TELEPORTTENGRAL = 1;
            Q602_TRIMEGISTO_FINISHWAY = 1;
        };
    };
    if (((Q602_TELEPORTTENGRAL) == (1)) && ((NPC_ISINSTATE(KDF_9004_TENGRAL_Q602, 0xf09f)) == (FALSE))) {
        PRINTD("Teleport");
        Q602_TELEPORTTENGRAL = 2;
        TELEPORTNPCTOWP(0xe8f0, "PARTE8_PATH_04");
        AI_TELEPORTALWAYS(KDF_9004_TENGRAL_Q602, "PARTE8_PATH_04", TRUE);
        B_STARTOTHERROUTINE(KDF_9004_TENGRAL_Q602, "Q602_FOLLOW");
        NPC_REFRESH(KDF_9004_TENGRAL_Q602);
    };
    if ((Q602_HAVEN_LOGENTRY_V2) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_PATH_83")) <= (900)) {
            if ((Q602_HAVEN_LOGENTRY) == (TRUE)) {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_HAVEN_SECOND_V2);
            } else {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_HAVEN_SECOND_V1);
            } else {
                Q602_HAVEN_LOGENTRY_V2 = 1;
            };
        };
    };
    if ((Q602_BLOCKYOURPATHFIGHT_CHECK) == (FALSE)) {
        if ((SQ305_MARVINCANUSEBLAKELEVER) == (2)) {
            if ((((NONE_6410_BLAKE_Q602.ATTRIBUTE[0]) != (NONE_6410_BLAKE_Q602.ATTRIBUTE[1])) || ((NONE_6411_HASMETH_Q602.ATTRIBUTE[0]) != (NONE_6411_HASMETH_Q602.ATTRIBUTE[1]))) || ((NONE_6412_THULSA_Q602.ATTRIBUTE[0]) != (NONE_6412_THULSA_Q602.ATTRIBUTE[1]))) {
                Q602_FIGHTWITHBLAKE();
            };
        } else if ((((NONE_10083_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10083_VOLKERGUARD_Q602.ATTRIBUTE[1])) || ((NONE_10084_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10084_VOLKERGUARD_Q602.ATTRIBUTE[1]))) || ((NONE_10085_VOLKERGUARD_Q602.ATTRIBUTE[0]) != (NONE_10085_VOLKERGUARD_Q602.ATTRIBUTE[1]))) {
            Q602_FIGHTWITHVOLKERMAN_ATBLAKEPLACE();
        };
    };
    if ((Q602_BARRACK_GATE_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_PATH_27")) <= (900)) {
            if ((LOG_GETSTATUS(MIS_SQ419)) == (LOG_SUCCESS)) {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_GATE_V2);
            } else {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_GATE_V1);
            } else {
                Q602_BARRACK_GATE_LOGENTRY = 1;
            };
        };
    };
    if ((Q602_BARRACK_AFTERFIGHT_LOGENTRY) == (0)) {
        if (((NPC_ISDEAD(DJG_10086_WOLFSON_Q602)) && (NPC_ISDEAD(DJG_10087_WOLFSON_Q602))) && (NPC_ISDEAD(DJG_10088_WOLFSON_Q602))) {
            if ((Q602_HELPSALL) >= (2)) {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_AFTERFIGHT_V2);
            } else {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_AFTERFIGHT_V1);
            } else {
                Q602_BARRACK_AFTERFIGHT_LOGENTRY = 1;
            };
        };
    };
    if ((Q602_BARRACK_EMPTYHOUSE_01_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM3_BARRACK_HOUSE2_02")) <= (350)) {
            Q602_BARRACK_EMPTYHOUSE_01_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_EMPTYHOUSE_01);
        };
    };
    if ((Q602_BARRACK_EMPTYHOUSE_02_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTE3_PATH_04")) <= (350)) {
            Q602_BARRACK_EMPTYHOUSE_02_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_EMPTYHOUSE_03);
        };
    };
    if ((Q602_BARRACK_EMPTYHOUSE_03_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTE3_PATH_09")) <= (350)) {
            Q602_BARRACK_EMPTYHOUSE_03_LOGENTRY = 1;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_BARRACK_EMPTYHOUSE_02);
        };
    };
    if ((Q602_YEZEGANFIGHTSTATE) == (0)) {
        if ((((DJG_10002_YEZEGAN_Q602.ATTRIBUTE[0]) != (DJG_10002_YEZEGAN_Q602.ATTRIBUTE[1])) || ((DJG_10089_WOLFSON_Q602.ATTRIBUTE[0]) != (DJG_10089_WOLFSON_Q602.ATTRIBUTE[1]))) || ((DJG_10091_WOLFSON_Q602.ATTRIBUTE[0]) != (DJG_10091_WOLFSON_Q602.ATTRIBUTE[1]))) {
            Q602_FIGHTWITHYEZEGAN();
        };
    };
    if ((Q602_YEZEGANFIGHTSTATE) == (1)) {
        if (NPC_ISINSTATE(DJG_10002_YEZEGAN_Q602, 0xf0a3)) {
            if ((NPC_ISDEAD(DJG_10089_WOLFSON_Q602)) && (NPC_ISDEAD(DJG_10091_WOLFSON_Q602))) {
                Q602_YEZEGANFIGHTSTATE = 2;
                PRINTD("Yezegan wstaje");
                AI_WAIT(DJG_10002_YEZEGAN_Q602, 0x3f800000);
                DJG_10002_YEZEGAN_Q602.AIVAR[96] = 2;
                DJG_10002_YEZEGAN_Q602.AIVAR[15] = TRUE;
                DJG_10002_YEZEGAN_Q602.FLAGS = 2;
                DJG_10002_YEZEGAN_Q602.ATTRIBUTE[0] = DJG_10002_YEZEGAN_Q602.ATTRIBUTE[1];
                NPC_EXCHANGEROUTINE(DJG_10002_YEZEGAN_Q602, FOLLOW);
                NPC_SETATTITUDE(DJG_10002_YEZEGAN_Q602, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(DJG_10002_YEZEGAN_Q602, ATT_NEUTRAL);
                DJG_10002_YEZEGAN_Q602.AIVAR[1] = CRIME_NONE;
                DJG_10002_YEZEGAN_Q602.AIVAR[0] = FIGHT_NONE;
                DJG_10002_YEZEGAN_Q602.GUILD = GIL_FRIENDLY_HUMAN;
                NPC_SETTRUEGUILD(DJG_10002_YEZEGAN_Q602, GIL_FRIENDLY_HUMAN);
            };
        };
    };
    if ((Q602_YEZEGANFIGHTSTATE) == (3)) {
        if ((NPC_GETDISTTOWP(DJG_10002_YEZEGAN_Q602, "PARTE3_BLAKE")) <= (750)) {
            if (!(NPC_ISDEAD(DJG_10002_YEZEGAN_Q602))) {
                Q602_YEZEGANFIGHTSTATE = 4;
                B_REMOVENPC(0xe85c);
                PRINTD("Yezegan uciek³!");
            };
        };
    };
    if ((Q308_WHOWILLDIE) != (2)) {
        if ((Q602_OSIP_FIGHT) == (0)) {
            if ((((STRF_6405_OSIP_Q602.ATTRIBUTE[0]) != (STRF_6405_OSIP_Q602.ATTRIBUTE[1])) || ((NONE_6408_OSIPFRIEND_Q602.ATTRIBUTE[0]) != (NONE_6408_OSIPFRIEND_Q602.ATTRIBUTE[1]))) || ((NONE_6409_OSIPFRIEND_Q602.ATTRIBUTE[0]) != (NONE_6409_OSIPFRIEND_Q602.ATTRIBUTE[1]))) {
                Q602_FIGHTWITHOSIP();
            };
        };
    };
    if ((Q602_OSIP_FLEE_01) == (1)) {
        if ((NPC_GETDISTTOWP(STRF_6405_OSIP_Q602, "PARTE3_BLAKE")) <= (750)) {
            if (!(NPC_ISDEAD(STRF_6405_OSIP_Q602))) {
                Q602_OSIP_FLEE_01 = 2;
                B_REMOVENPC(0xea81);
                PRINTD("Osip uciek³!");
            };
        };
    };
    if ((Q602_OSIP_FLEE_02) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_6408_OSIPFRIEND_Q602, "PARTE3_BLAKE")) <= (750)) {
            if (!(NPC_ISDEAD(NONE_6408_OSIPFRIEND_Q602))) {
                Q602_OSIP_FLEE_02 = 2;
                B_REMOVENPC(0xea3a);
                PRINTD("Osip Friend 01 uciek³!");
            };
        };
    };
    if ((Q602_OSIP_FLEE_03) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_6409_OSIPFRIEND_Q602, "PARTE3_BLAKE")) <= (750)) {
            if (!(NPC_ISDEAD(NONE_6409_OSIPFRIEND_Q602))) {
                Q602_OSIP_FLEE_03 = 2;
                B_REMOVENPC(0xea3e);
                PRINTD("Osip Friend 01 uciek³!");
            };
        };
    };
    if ((Q602_GALBO_CHANGERTN) == (1)) {
        if ((NPC_GETDISTTOWP(NONE_6363_GALBO_Q602, "PARTE3_GALBO_RUN")) <= (750)) {
            if ((!(NPC_ISDEAD(NONE_6363_GALBO_Q602))) && ((NPC_ISINSTATE(NONE_6363_GALBO_Q602, 0xf09f)) == (FALSE))) {
                Q602_GALBO_CHANGERTN = 2;
                B_STARTOTHERROUTINE(NONE_6363_GALBO_Q602, "Q602_BREATH");
                NPC_REFRESH(NONE_6363_GALBO_Q602);
                PRINTD("Zmiana RTN!");
            };
        };
    };
    if ((Q602_GALBO_CHANGERTN) == (3)) {
        if ((NPC_GETDISTTOWP(NONE_6363_GALBO_Q602, "Q602_START")) <= (750)) {
            if (!(NPC_ISDEAD(NONE_6363_GALBO_Q602))) {
                Q602_GALBO_CHANGERTN = 4;
                B_REMOVENPC(0xea33);
                PRINTD("Galbo uciek³");
            };
        };
    };
    if ((Q602_FIGHTWITHGALBO) == (1)) {
        if ((NPC_ISINSTATE(HERO, 0xf0a3)) && ((NPC_ISINSTATE(NONE_6363_GALBO_Q602, 0xf09f)) == (FALSE))) {
            Q602_GALBO_CHANGERTN = 3;
            Q602_FIGHTWITHGALBO = 2;
            B_STARTOTHERROUTINE(NONE_6363_GALBO_Q602, "Q602_FLEE_V2");
            NPC_REFRESH(NONE_6363_GALBO_Q602);
            PRINTD("Zmiana RTN!");
        };
    };
    if (((Q401_FABIOANDGANGGONE) == (2)) && ((FINALBOARDS_FABIOISDEAD) == (0))) {
        if ((Q602_FIGHTWITHFABIOEVENTS) == (0)) {
            if (((NONE_6366_FABIO_Q602.ATTRIBUTE[0]) != (NONE_6366_FABIO_Q602.ATTRIBUTE[1])) || ((NONE_6364_SIGMUN_Q602.ATTRIBUTE[0]) != (NONE_6364_SIGMUN_Q602.ATTRIBUTE[1]))) {
                Q602_FIGHTWITHFABIO();
            };
        };
    };
    if ((Q602_FIGHTWITHFABIOEVENTS) == (1)) {
        if ((NPC_ISDEAD(NONE_6366_FABIO_Q602)) && (NPC_ISDEAD(NONE_6364_SIGMUN_Q602))) {
            if ((((NPC_ISINSTATE(VLK_10092_CITIZEN_Q602, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(VLK_10093_CITIZEN_Q602, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(VLK_10094_CITIZEN_Q602, 0xf09f)) == (FALSE))) {
                PRINTD("Zmiana RTN");
                Q602_FIGHTWITHFABIOEVENTS = 2;
                B_STARTOTHERROUTINE(VLK_10092_CITIZEN_Q602, "Q602_AFTERFIGHT");
                NPC_REFRESH(VLK_10092_CITIZEN_Q602);
                B_STARTOTHERROUTINE(VLK_10093_CITIZEN_Q602, "Q602_AFTERFIGHT");
                NPC_REFRESH(VLK_10093_CITIZEN_Q602);
                B_STARTOTHERROUTINE(VLK_10094_CITIZEN_Q602, "Q602_AFTERFIGHT");
                NPC_REFRESH(VLK_10094_CITIZEN_Q602);
            };
        };
    };
    if ((Q602_NEARVOLKERHOUSE_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_45")) <= (500)) {
            Q602_NEARVOLKERHOUSE_LOGENTRY = TRUE;
            if ((Q601_VOLKERMUSTDIE) == (TRUE)) {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_VOLKERHOUSE_V2);
            } else {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_VOLKERHOUSE_V1);
            };
        };
    };
    if ((Q602_GUILD_V3) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM4_VOLKER_HOUSE_16")) <= (300)) {
            Q602_SPAWNRIORDIAN();
        };
    };
    if ((Q602_CANPASS) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_57")) <= (500)) {
            if ((Q602_GUILD_V3) == (FALSE)) {
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q602_CantPass_15_01");
                AI_GOTOWP(HERO, "PARTM4_PATH_54");
            } else {
                Q602_CANPASS = TRUE;
                PRINTD("Mo¿esz przejœæ");
            };
        };
    };
    if ((Q602_VOLKERHOUSE_GUARD_LOGENTRY) == (FALSE)) {
        if (NPC_ISDEAD(NONE_10104_VOLKERGUARD_Q602)) {
            Q602_VOLKERHOUSE_GUARD_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_VOLKERHOUSE_GUARD);
        };
    };
    if ((SQ225_FINISHWAY) == (3)) {
        if ((Q602_VINEYARDFIGHT) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTE4_Q602_VINEYARDLEADER")) <= (0x898)) {
                Q602_VINEYARDFIGHT = 2;
                Q602_CHANGEGUILD_VINEYARD();
            };
        } else if ((Q602_VINEYARDFIGHT) == (2)) {
            if (((NPC_ISDEAD(NONE_50200_VOLKERGUARD_Q602)) && (NPC_ISDEAD(NONE_50201_VOLKERGUARD_Q602))) && (NPC_ISDEAD(NONE_50202_VOLKERGUARD_Q602))) {
                if (((((NPC_ISINSTATE(BAU_2245_HOLDWIG_Q602, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(VLK_11181_ANDERAS_Q602, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(NONE_50203_HOLDWIGGUARD_Q602, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(NONE_50205_ANDERASGUARD_Q602, 0xf09f)) == (FALSE))) {
                    Q602_VINEYARDFIGHT = 3;
                    Q602_CHANGERTN_VINEYARD();
                };
            };
        };
    };
    if ((Q602_GUILD_V4) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, PARTM4_PATH_85)) <= (450)) {
            Q602_GUILD_V4 = 1;
            Q602_CHANGEGUILD_RAMSEY();
        };
    };
    if ((Q602_GUILD_V4) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_01")) <= (450)) {
            Q602_GUILD_V4 = 2;
            Q602_CHANGEFLAGS_RAMSEY();
            Q602_TELEPORTRIORDIAN_RAMSEYFIGHT();
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_RAMSEY_FIGHT);
        };
    };
    if ((Q602_GUILD_V4) == (2)) {
        if (!(NPC_ISDEAD(NONE_500_RAMSEY_Q602))) {
            if (NPC_ISINSTATE(NONE_500_RAMSEY_Q602, 0xf0a3)) {
                if ((((NPC_ISDEAD(NONE_10119_RAMSEYGUARD_Q602)) && (NPC_ISDEAD(NONE_10111_RAMSEYGUARD_Q602))) && (NPC_ISDEAD(NONE_10112_RAMSEYGUARD_Q602))) && (NPC_ISDEAD(NONE_10113_RAMSEYGUARD_Q602))) {
                    PRINTD("Ramsey to dobry ch³opiec");
                    NONE_500_RAMSEY_Q602.GUILD = GIL_NONE;
                    NPC_SETTRUEGUILD(NONE_500_RAMSEY_Q602, GIL_NONE);
                    NONE_500_RAMSEY_Q602.NPCTYPE = NPCTYPE_MAIN;
                    NONE_500_RAMSEY_Q602.AIVAR[96] = 3;
                    NPC_SETTRUEGUILD(HERO, HERO.GUILD);
                    Q602_GUILD_V4 = 3;
                };
            };
        };
    };
    if ((Q602_GUILD_V4) >= (2)) {
        if ((Q602_RAMSEY_STATUS) == (FALSE)) {
            if (NPC_ISDEAD(NONE_500_RAMSEY_Q602)) {
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_RAMSEY_DEATH);
                Q602_RAMSEY_STATUS = 1;
            };
        } else if ((Q602_RAMSEY_STATUS) == (2)) {
            if ((NPC_GETDISTTOWP(NONE_500_RAMSEY_Q602, "Q602_START")) <= (750)) {
                if (!(NPC_ISDEAD(NONE_500_RAMSEY_Q602))) {
                    PRINTD("Ramsey usuniêty!");
                    B_REMOVENPC(0xea18);
                    Q602_RAMSEY_STATUS = 3;
                };
            };
        };
    };
    if ((Q602_DOGISDEAD) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_72")) <= (750)) {
            Q602_DOGISDEAD = 2;
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(0xef10, 75, 4);
        };
    };
    if ((Q308_WHOWILLDIE) != (3)) {
        if ((Q602_LUDLOFSTATUS) == (0)) {
            if ((((VLK_6424_LUDLOF_Q602.ATTRIBUTE[0]) != (VLK_6424_LUDLOF_Q602.ATTRIBUTE[1])) || ((NONE_10121_THIEF_Q602.ATTRIBUTE[0]) != (NONE_10121_THIEF_Q602.ATTRIBUTE[1]))) || ((NONE_10122_THIEF_Q602.ATTRIBUTE[0]) != (NONE_10122_THIEF_Q602.ATTRIBUTE[1]))) {
                Q602_FIGHTWITHLUDLOF();
            };
        } else if ((Q602_LUDLOFSTATUS) == (1)) {
            if (((!(NPC_ISDEAD(VLK_6424_LUDLOF_Q602))) && (!(NPC_ISDEAD(NONE_10121_THIEF_Q602)))) && (!(NPC_ISDEAD(NONE_10122_THIEF_Q602)))) {
                if ((((NPC_GETDISTTOWP(VLK_6424_LUDLOF_Q602, "Q602_START")) <= (750)) && ((NPC_GETDISTTOWP(NONE_10121_THIEF_Q602, "Q602_START")) <= (750))) && ((NPC_GETDISTTOWP(NONE_10122_THIEF_Q602, "Q602_START")) <= (750))) {
                    Q602_LUDLOFSTATUS = 2;
                    PRINTD("Ludlof usuniêty!");
                    B_REMOVENPC(0xeaed);
                    B_REMOVENPC(0xe9f8);
                    B_REMOVENPC(0xe9fc);
                };
            };
        } else if ((Q602_LUDLOFSTATUS) == (3)) {
            if (((NPC_ISDEAD(VLK_6424_LUDLOF_Q602)) && (NPC_ISDEAD(NONE_10121_THIEF_Q602))) && (NPC_ISDEAD(NONE_10122_THIEF_Q602))) {
                Q602_LUDLOFSTATUS = 4;
                B_LOGENTRY(TOPIC_Q602, LOG_Q602_LUDLOF_DEATH);
            };
        };
    };
    if ((Q602_VINEYARDFIGHT) >= (1)) {
        if ((Q602_RIORDIANCHECKPOINT_01) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_71")) <= (500)) && ((NPC_ISINSTATE(KDW_203_RIORDIAN_Q602, 0xf09f)) == (FALSE))) {
                Q602_RIORDIANCHECKPOINT_01 = TRUE;
                PRINTD("Riordian Checkpoint - 01");
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN_Q602, "Q602_FOLLOW_01");
                NPC_REFRESH(KDW_203_RIORDIAN_Q602);
                if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN_Q602)) >= (500)) {
                    TELEPORTNPCTOWP(0xe901, KDW_203_RIORDIAN_Q602.WP);
                    AI_TELEPORTALWAYS(KDW_203_RIORDIAN_Q602, KDW_203_RIORDIAN_Q602.WP, FALSE);
                };
            };
        };
        if ((Q602_RIORDIANCHECKPOINT_02) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_87")) <= (500)) && ((NPC_ISINSTATE(KDW_203_RIORDIAN_Q602, 0xf09f)) == (FALSE))) {
                Q602_RIORDIANCHECKPOINT_02 = TRUE;
                PRINTD("Riordian Checkpoint - 02");
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN_Q602, "Q602_FOLLOW_02");
                NPC_REFRESH(KDW_203_RIORDIAN_Q602);
                if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN_Q602)) >= (500)) {
                    TELEPORTNPCTOWP(0xe901, KDW_203_RIORDIAN_Q602.WP);
                    AI_TELEPORTALWAYS(KDW_203_RIORDIAN_Q602, KDW_203_RIORDIAN_Q602.WP, FALSE);
                };
            };
        };
        if ((Q602_RIORDIANCHECKPOINT_03) == (FALSE)) {
            if ((NPC_ISINSTATE(KDW_203_RIORDIAN_Q602, 0xf09f)) == (FALSE)) {
                if (((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_65")) <= (500)) || ((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_05")) <= (500))) {
                    Q602_RIORDIANCHECKPOINT_03 = TRUE;
                    PRINTD("Riordian Checkpoint - 03");
                    B_STARTOTHERROUTINE(KDW_203_RIORDIAN_Q602, "Q602_FOLLOW_03");
                    NPC_REFRESH(KDW_203_RIORDIAN_Q602);
                    if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN_Q602)) >= (300)) {
                        TELEPORTNPCTOWP(0xe901, KDW_203_RIORDIAN_Q602.WP);
                        AI_TELEPORTALWAYS(KDW_203_RIORDIAN_Q602, KDW_203_RIORDIAN_Q602.WP, FALSE);
                    };
                };
            };
        };
        if ((Q602_RIORDIANCHECKPOINT_04) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_400")) <= (450)) && ((NPC_ISINSTATE(KDW_203_RIORDIAN_Q602, 0xf09f)) == (FALSE))) {
                Q602_RIORDIANCHECKPOINT_04 = TRUE;
                PRINTD("Riordian Checkpoint - 04");
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN_Q602, "Q602_FOLLOW_04");
                NPC_REFRESH(KDW_203_RIORDIAN_Q602);
                if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN_Q602)) >= (300)) {
                    TELEPORTNPCTOWP(0xe901, KDW_203_RIORDIAN_Q602.WP);
                    AI_TELEPORTALWAYS(KDW_203_RIORDIAN_Q602, KDW_203_RIORDIAN_Q602.WP, FALSE);
                };
            };
        };
    };
    if (((Q602_FINALBATTLE_COUNT) >= (6)) && ((Q602_FINALBATTLE_STAGE) == (0))) {
        Q602_FINALBATTLE_STAGE = 1;
        Q602_FINALBATTLE_SPAWNNEWWOLFSONS();
    };
    if ((((Q602_FINALBATTLE_COUNT) >= (12)) && ((Q602_FINALBATTLE_STARTFIGHT) == (5))) && ((Q602_FINALBATTLE_STAGE) == (1))) {
        Q602_FINALBATTLE_STAGE = 2;
        Q602_FINALBATTLE_SPAWNWATERMAGES();
    };
    if ((((Q602_FINALBATTLE_COUNT) >= (19)) && ((Q602_FINALBATTLE_STARTFIGHT) == (8))) && ((Q602_FINALBATTLE_STAGE) == (2))) {
        Q602_FINALBATTLE_STAGE = 3;
        Q602_FINALBATTLE_ENDBATTLE();
    };
    if (((Q602_STARTFIGHTWITHULRYK) == (FALSE)) && ((Q602_FINISHFINALWARBATTLE) == (2))) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM5_CITYHALL_09")) <= (300)) {
            Q602_STARTFIGHTWITHULRYK = TRUE;
            EVT_Q602_KICKDOOR_02();
        };
    };
    if ((Q602_FINALBATTLE_PREPAREFIGHT_CHANGEGUILD) == (0)) {
        if ((((((Q308_WHOWILLDIE) != (3)) && (NPC_KNOWSINFO(HERO, 0x12b35))) && (NPC_KNOWSINFO(HERO, 0x16090))) || (((Q308_WHOWILLDIE) != (3)) && ((NPC_KNOWSINFO(HERO, 0x12b35)) == (FALSE)))) || ((Q308_WHOWILLDIE) == (3))) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_ANGRYMOB_HERO_02")) <= (0x4e2)) {
                Q602_FINALBATTLE_PREPAREFIGHT_CHANGEGUILD = 1;
                FF_APPLYONCEEXT(0xef15, 75, 4);
            };
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM5_ANGRYMOB_HERO_02")) <= (500)) {
            if ((Q602_FIGHTCUTSCENE) == (FALSE)) {
                Q602_FINALBATTLE_TELEPORTFIGHT();
                Q602_FIGHTCUTSCENE = 1;
                HERO.AIVAR[4] = TRUE;
                FF_APPLYONCEEXT(0xef17, 75, 4);
                Q602_FINALBATTLE_STARTFIGHT = 1;
            };
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_43")) <= (500)) {
            Q602_FINALBATTLE_STARTFIGHT = 2;
            Q602_FINALBATTLE_FLAGS_MORTAL();
            WLD_SENDTRIGGER("Q602_BLOCKYOURPATH_01");
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_FINALBATTLE_START);
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q602_FinalBattle_15_01");
            if ((NPC_GETDISTTONPC(HERO, KDW_203_RIORDIAN_Q602)) >= (700)) {
                TELEPORTNPCTOWP(0xe901, "PARTM5_PATH_44");
            };
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (3)) {
        if (((((((NPC_GETDISTTOWP(DJG_10181_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0)) && ((NPC_GETDISTTOWP(DJG_10182_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(DJG_10183_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(DJG_10184_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(DJG_10185_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(DJG_10186_WOLFSON_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) {
            HERO.AIVAR[4] = TRUE;
            HERO.FLAGS = 2;
            FF_APPLYONCEEXT(0xef1c, 100, 4);
            Q602_FINALBATTLE_STARTFIGHT = 4;
            Q602_FINALBATTLE_NEWWOLFSONS_RUN();
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (4)) {
        if (((((((NPC_GETDISTTOWP(DJG_10181_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR)) || ((NPC_GETDISTTOWP(DJG_10182_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(DJG_10183_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(DJG_10184_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(DJG_10185_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(DJG_10186_WOLFSON_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) {
            TELEPORTNPCTOWP(0x71b, "PARTE5_FIGHTPOINT_04");
            WLD_SENDUNTRIGGER("Q602_FINALWAR_04");
            Q602_FINALBATTLE_TELEPORTWARRIORS();
            HERO.AIVAR[4] = FALSE;
            HERO.FLAGS = 0;
            Q602_FINALBATTLE_STARTFIGHT = 5;
            Q602_FINALBATTLE_NEWWOLFSONS_ATTACK();
            Q602_FINALBATTLE_FLAGS_MORTAL();
            B_LOGENTRY(TOPIC_Q602, LOG_Q602_FINALBATTLE_MOREWOLFSONS);
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (6)) {
        if (((((((NPC_GETDISTTOWP(KDW_303_RIEROL_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0)) && ((NPC_GETDISTTOWP(KDW_206_OTHEKAR_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(KDW_301_CUSTO_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(KDW_214_BADULF_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(KDW_216_INGOLF_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) && ((NPC_GETDISTTOWP(KDW_215_NOTGER_Q602, "PARTE5_SPAWNPOINT_01")) <= (0x7d0))) {
            HERO.AIVAR[4] = TRUE;
            HERO.FLAGS = 2;
            FF_APPLYONCEEXT(0xef1e, 100, 4);
            Q602_FINALBATTLE_STARTFIGHT = 7;
            Q602_FINALBATTLE_WATERMAGES_RUN();
        };
    };
    if ((Q602_FINALBATTLE_STARTFIGHT) == (7)) {
        if (((((((NPC_GETDISTTOWP(KDW_303_RIEROL_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR)) || ((NPC_GETDISTTOWP(KDW_206_OTHEKAR_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(KDW_301_CUSTO_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(KDW_214_BADULF_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(KDW_216_INGOLF_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) || ((NPC_GETDISTTOWP(KDW_215_NOTGER_Q602, "PARTE5_WAR_48")) <= (Q602_WPDISTANCETOWAR))) {
            Q602_FINALBATTLE_STARTFIGHT = 8;
            HERO.AIVAR[4] = FALSE;
            HERO.FLAGS = 0;
            TELEPORTNPCTOWP(0x71b, "PARTE5_FIGHTPOINT_04");
            TELEPORTNPCTOWP(0xe901, "PARTM5_PATH_62");
            Q602_FINALBATTLE_WATERMAGES_ATTACK();
            Q602_FINALBATTLE_FLAGS_MORTAL();
            WLD_SENDUNTRIGGER("Q602_FINALBATTLE_WATERMAGES");
        };
    };
    if (((Q602_FINALBATTLE_STARTFIGHT) == (8)) && (NPC_ISINSTATE(NONE_15_ULRYK_Q602, 0xf0a3))) {
        PRINTD("Ulryk to dobry ch³opiec");
        NPC_EXCHANGEROUTINE(NONE_15_ULRYK_Q602, "Q602_OBSERVE");
        NPC_CLEARAIQUEUE(MIL_4000_RODERICH_Q602);
        NPC_SETATTITUDE(MIL_4000_RODERICH_Q602, ATT_FRIENDLY);
        NPC_SETTEMPATTITUDE(MIL_4000_RODERICH_Q602, ATT_FRIENDLY);
        MIL_4000_RODERICH_Q602.AIVAR[1] = CRIME_NONE;
        MIL_4000_RODERICH_Q602.AIVAR[0] = FIGHT_NONE;
        PRINTD("RODERICH OGARNIJ DUPE");
        MIL_4000_RODERICH_Q602.AIVAR[96] = 3;
        MIL_4000_RODERICH_Q602.AIVAR[4] = FALSE;
        B_STARTOTHERROUTINE(MIL_4000_RODERICH_Q602, "Q602_TIRED");
        NPC_REFRESH(MIL_4000_RODERICH_Q602);
        NPC_CLEARAIQUEUE(KDW_203_RIORDIAN_Q602);
        NPC_SETATTITUDE(KDW_203_RIORDIAN_Q602, ATT_FRIENDLY);
        NPC_SETTEMPATTITUDE(KDW_203_RIORDIAN_Q602, ATT_FRIENDLY);
        KDW_203_RIORDIAN_Q602.AIVAR[1] = CRIME_NONE;
        KDW_203_RIORDIAN_Q602.AIVAR[0] = FIGHT_NONE;
        PRINTD("RIORDIAN OGARNIJ DUPE");
        NONE_15_ULRYK_Q602.GUILD = GIL_NONE;
        NPC_SETTRUEGUILD(NONE_15_ULRYK_Q602, GIL_NONE);
        NONE_15_ULRYK_Q602.NPCTYPE = NPCTYPE_MAIN;
        NPC_SETTRUEGUILD(KDW_203_RIORDIAN_Q602, KDW_203_RIORDIAN_Q602.GUILD);
        Q602_FINALBATTLE_STARTFIGHT = 9;
        NPC_SETTRUEGUILD(MIL_4000_RODERICH_Q602, MIL_4000_RODERICH_Q602.GUILD);
        WLD_SENDTRIGGER("Q602_FIGHTULRYK_ALPHA");
        NPC_SETTRUEGUILD(HERO, HERO.GUILD);
        MUSIC_DISABLEOVERRIDE();
    };
    if ((((Q602_FINALBATTLE_STARTFIGHT) == (10)) && ((NPC_GETDISTTOWP(KDW_215_NOTGER_Q602, "PARTM5_CITYHALL_07")) <= (700))) && ((NPC_ISINSTATE(KDW_215_NOTGER_Q602, 0xf09f)) == (FALSE))) {
        Q602_FINALBATTLE_STARTFIGHT = 11;
        B_STARTOTHERROUTINE(KDW_215_NOTGER_Q602, "Q602_ULRYK");
        NPC_REFRESH(KDW_215_NOTGER_Q602);
        AI_STANDUP(KDW_215_NOTGER_Q602);
        AI_SETWALKMODE(KDW_215_NOTGER_Q602, NPC_RUN);
        AI_GOTOWP(KDW_215_NOTGER_Q602, "PARTE5_NOTGER");
        AI_STARTSTATE(KDW_215_NOTGER_Q602, 0xf09f, 1, "");
        HERO.AIVAR[4] = FALSE;
    };
    if (((Q602_FINALBATTLE_STARTFIGHT) == (12)) && ((NPC_GETDISTTOWP(HERO, "PARTM5_PATH_111")) <= (700))) {
        Q602_FINALBATTLE_STARTFIGHT = 13;
        B_LOGENTRY(TOPIC_Q602, LOG_Q602_FINALBATTLE_VOLKER);
    };
    if ((Q602_STARTFIGHTWITHULRYK) == (1)) {
        if ((NONE_15_ULRYK_Q602.ATTRIBUTE[0]) <= (((NONE_15_ULRYK_Q602.ATTRIBUTE[1]) / (4)) * (3))) {
            PRINTD("Wy³¹czamy Rodericha");
            Q602_STARTFIGHTWITHULRYK = 2;
            if (NPC_ISINSTATE(NONE_15_ULRYK_Q602, 0xab50)) {
                NPC_SETSTATETIME(NONE_15_ULRYK_Q602, (SPL_TIME_FREEZE) + (1));
            };
            if (NPC_ISINSTATE(NONE_15_ULRYK_Q602, 0xab85)) {
                NPC_SETSTATETIME(NONE_15_ULRYK_Q602, (SPL_TIME_SHORTZAPPED) + (1));
            };
            if (NPC_ISINSTATE(NONE_15_ULRYK_Q602, 0xab81)) {
                NPC_SETSTATETIME(NONE_15_ULRYK_Q602, (SPL_TIME_WHIRLWIND) + (1));
            };
            NPC_CLEARAIQUEUE(NONE_15_ULRYK_Q602);
            AI_TURNTONPC(NONE_15_ULRYK_Q602, MIL_4000_RODERICH_Q602);
            AI_PLAYANI(NONE_15_ULRYK_Q602, "T_1HSFINISH");
            if ((NONE_15_ULRYK_Q602.AIVAR[17]) == (TRUE)) {
                FF_APPLYONCEEXT(0x166d0, 1000, 2);
            } else {
                FF_APPLYONCEEXT(0x166d0, 500, 2);
            };
        };
    };
    if ((Q602_SPAWNIVYBATTLE) == (0)) {
        if ((NPC_GETDISTTOWP(HERO, "PARTE5_SEWERS_11")) <= (0x7d0)) {
            Q602_SPAWNIVYBATTLE = 1;
            NONE_16_IVY_Q602.AIVAR[15] = TRUE;
            WLD_INSERTNPC(0xc470, "FP_PARTE5_SEWERS_01");
        };
    };
    if ((Q602_FINALBOSS_READYTOFIGHT) == (1)) {
        if ((VLK_15000_VOLKER_Q602.ATTRIBUTE[0]) != (VLK_15000_VOLKER_Q602.ATTRIBUTE[1])) {
            PRINTD("SAM ZACZ¥£EŒ!");
            Q602_FINALBOSS_READYTOFIGHT = 2;
            B_TURNTONPC(VLK_15000_VOLKER_Q602, HERO);
            AI_REMOVEWEAPON(VLK_15000_VOLKER_Q602);
            CREATEINVITEM(VLK_15000_VOLKER_Q602, 0x92fe);
            AI_USEITEM(VLK_15000_VOLKER_Q602, 0x92fe);
            AI_FUNCTION(VLK_15000_VOLKER_Q602, 0xef09);
            WLD_SENDTRIGGER("Q602_VOLKERGATE");
            VLK_15000_VOLKER_Q602.AIVAR[15] = FALSE;
        };
    };
    if ((Q602_FINALBOSSTIME) == (1)) {
        if ((Q602_VOLKERSPECIALATTACK) == (0)) {
            if ((VLK_15000_VOLKER_Q602.ATTRIBUTE[0]) <= ((VLK_15000_VOLKER_Q602.ATTRIBUTE[1]) / (2))) {
                PRINTD("Special attack");
                Q602_VOLKERSPECIALATTACK = 1;
                Q602_VOLKER_RUNTOHERO();
            };
        } else if ((Q602_VOLKERSPECIALATTACK) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, VLK_15000_VOLKER_Q602)) <= (300)) {
                Q602_VOLKERSPECIALATTACK = 2;
                PRINTD("Atakuje");
                Q602_VOLKER_ATTACK();
            };
        };
        if ((VLK_15000_VOLKER_Q602.ATTRIBUTE[0]) <= ((VLK_15000_VOLKER_Q602.ATTRIBUTE[1]) / (4))) {
            PRINTD("1/4 ¿ycia zosta³a");
            Q602_FINALBOSSTIME = 2;
            VLK_15000_VOLKER_Q602.PROTECTION[2] += Q602_VOLKER_PROTECTIONBUFF;
            VLK_15000_VOLKER_Q602.PROTECTION[1] += Q602_VOLKER_PROTECTIONBUFF;
            VLK_15000_VOLKER_Q602.PROTECTION[6] += Q602_VOLKER_PROTECTIONBUFF;
            VLK_15000_VOLKER_Q602.PROTECTION[5] += Q602_VOLKER_PROTECTIONBUFF;
            VLK_15000_VOLKER_Q602.PROTECTION[3] += Q602_VOLKER_PROTECTIONBUFF;
            MDL_REMOVEOVERLAYMDS(VLK_15000_VOLKER_Q602, "Humans_1HST1.mds");
            MDL_REMOVEOVERLAYMDS(VLK_15000_VOLKER_Q602, "Humans_1HST2.mds");
            MDL_REMOVEOVERLAYMDS(VLK_15000_VOLKER_Q602, "Humans_Wounded.mds");
            MDL_REMOVEOVERLAYMDS(VLK_15000_VOLKER_Q602, "Humans_Hurt.mds");
            MDL_APPLYOVERLAYMDS(VLK_15000_VOLKER_Q602, "Humans_Wounded.mds");
            VLK_15000_VOLKER_Q602.FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
        };
    };
    if ((Q602_FINALBOSSTIME) == (2)) {
        if (NPC_ISINSTATE(VLK_15000_VOLKER_Q602, 0xf0a3)) {
            MUSIC_DISABLEOVERRIDE();
            PRINTD("POKONA£EŒ FINAL BOSSA!");
            Q602_FINALBOSSTIME = 3;
            if (((IVY_Q602_JOINEDTEAM) == (TRUE)) && ((NPC_ISINSTATE(NONE_16_IVY_Q602, 0xf0a3)) == (FALSE))) {
                NPC_CLEARAIQUEUE(NONE_16_IVY_Q602);
                B_CLEARPERCEPTIONS(NONE_16_IVY_Q602);
                AI_SETWALKMODE(NONE_16_IVY_Q602, NPC_RUN);
                AI_DRAWWEAPON(NONE_16_IVY_Q602);
                AI_TURNTONPC(NONE_16_IVY_Q602, VLK_15000_VOLKER_Q602);
                AI_GOTONPC(NONE_16_IVY_Q602, VLK_15000_VOLKER_Q602);
                AI_FINISHINGMOVE(NONE_16_IVY_Q602, VLK_15000_VOLKER_Q602);
            } else {
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_Q602_AfterFinalBoss_15_01");
            } else {
                VLK_15000_VOLKER_Q602.FLAGS = 0;
            } else {
                NPC_SETATTITUDE(VLK_15000_VOLKER_Q602, ATT_NEUTRAL);
            } else {
                NPC_SETTEMPATTITUDE(VLK_15000_VOLKER_Q602, ATT_NEUTRAL);
            } else {
                VLK_15000_VOLKER_Q602.AIVAR[1] = CRIME_NONE;
            } else {
                VLK_15000_VOLKER_Q602.AIVAR[0] = FIGHT_NONE;
            } else {
                VLK_15000_VOLKER_Q602.GUILD = GIL_FRIENDLY_HUMAN;
            } else {
                NPC_EXCHANGEROUTINE(VLK_15000_VOLKER_Q602, FOLLOW);
            } else {
                VLK_15000_VOLKER_Q602.AIVAR[95] = TRUE;
            } else {
                HERO.AIVAR[95] = TRUE;
            };
        };
    };
    if ((Q602_FINALBOSSTIME) == (3)) {
        if ((NPC_ISDEAD(VLK_15000_VOLKER_Q602)) && ((NPC_KNOWSINFO(HERO, 0x16271)) == (FALSE))) {
            Q602_FINALBOSSTIME = 4;
            FINALBOARDS_VOLKERSTATUS = 1;
            FINALBOARDS();
        };
    };
}

var int EVENTSMANAGER_Q602.Q602_SPAWN = 0;
var int EVENTSMANAGER_Q602.Q602_BLOCKTIME = 0;
var int EVENTSMANAGER_Q602.Q602_RIORDIANCHECKPOINT_01 = 0;
var int EVENTSMANAGER_Q602.Q602_RIORDIANCHECKPOINT_02 = 0;
var int EVENTSMANAGER_Q602.Q602_RIORDIANCHECKPOINT_03 = 0;
var int EVENTSMANAGER_Q602.Q602_RIORDIANCHECKPOINT_04 = 0;
var int EVENTSMANAGER_Q602.Q602_FINALBATTLE_STAGE = 0;
var int EVENTSMANAGER_Q602.Q602_FINALBATTLE_PREPAREFIGHT_CHANGEGUILD = 0;
const int EVENTSMANAGER_Q602.Q602_WPDISTANCETOWAR = 1200;
var int EVENTSMANAGER_Q602.Q602_SPAWNIVYBATTLE = 0;
var int EVENTSMANAGER_Q602.Q602_VOLKERSPECIALATTACK = 0;
const int EVENTSMANAGER_Q602.Q602_VOLKER_PROTECTIONBUFF = 100;
func void Q602_TRIMEGISTO_CUTSCENEENABLE_APPLY() {
    Q602_TRIMEGISTO_CUTSCENEENABLE_COUNT = (Q602_TRIMEGISTO_CUTSCENEENABLE_COUNT) + (1);
    if ((Q602_TRIMEGISTO_CUTSCENEENABLE_COUNT) == (2)) {
        CUTSCENE_START(0x16a53);
    };
}

var int Q602_TRIMEGISTO_CUTSCENEENABLE_APPLY.Q602_TRIMEGISTO_CUTSCENEENABLE_COUNT = 0;
