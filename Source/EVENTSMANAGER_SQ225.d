func void EVENTSMANAGER_SQ225() {
    var int SQ225_MOVERGERHARDVINEYARD;
    var int SQ225_CHECKDISABLEMUSIC;
    var int SQ225_STEALTOOLS_SECONDCHEST;
    var int LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) {
        if ((DUSTER_SQ225_VENZELWAIT) == (1)) {
            if (((DUSTER_SQ225_VENZELWAIT_HOUR) <= ((WLD_GETHOUR()) - (6))) || ((DUSTER_SQ225_VENZELWAIT_DAY) != (WLD_GETDAY()))) {
                DUSTER_SQ225_VENZELWAIT = 2;
                B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_DUSTERWAIT);
            };
        };
        if ((SQ225_OLDCITYUNLOCKED) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, MIL_11180_CITYGUARD)) >= (1200)) {
                SQ225_OLDCITYUNLOCKED = 2;
                PRINTD("Oddali³eœ siê za bardzo!");
                PRINT(PRINT_SQ225_OLDCITYGUARDWARNING);
            };
        } else if ((SQ225_OLDCITYUNLOCKED) == (2)) {
            if ((NPC_GETDISTTONPC(HERO, MIL_11180_CITYGUARD)) <= (700)) {
                SQ225_OLDCITYUNLOCKED = 1;
                PRINTD("Wróci³eœ do stra¿nika.");
            };
        };
        if ((SQ225_OLDCITYDISABLED) == (1)) {
            if (NPC_KNOWSINFO(HERO, 65639)) {
                if ((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_64")) <= (700)) {
                    SQ225_OLDCITYDISABLED = 2;
                    PRINTD("WP");
                };
            };
        } else if ((SQ225_OLDCITYDISABLED) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM4_PATH_64")) >= (4500)) {
                SQ225_OLDCITYDISABLED = 3;
                PRINTD("Czyœci");
                SQ225_ANDERASTAVERN();
            };
        };
        if (((SQ225_ANDERASWAY_AGREED) == (TRUE)) && ((SQ225_ANDERASWAY_FAILED) != (2))) {
            if ((NPC_KNOWSINFO(HERO, 72217)) == (FALSE)) {
                if ((LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY) == (FALSE)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_88")) <= (3500)) {
                        if ((NPC_KNOWSINFO(HERO, 88060)) == (FALSE)) {
                            LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY = 2;
                            B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_ONFARM_VIKTORIDEA);
                        } else {
                            LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY = 3;
                            B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_ONFARM_AFTERVIKTORIDEA);
                        };
                    };
                } else if ((LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY) == (2)) {
                    if ((NPC_KNOWSINFO(HERO, 88060)) && ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_88")) <= (3500))) {
                        LOG_SQ225_ONFARM_VIKTORIDEA_LOGENTRY = 3;
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_ONFARM_AFTERVIKTORIDEA);
                    };
                };
                if ((SQ225_GIANTBUG_IDEA_LOGENTRY) == (1)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_FIELD_04")) <= (2000)) {
                        SQ225_GIANTBUG_IDEA_LOGENTRY = 2;
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_GIANTBUG_IDEA);
                    };
                };
                if ((SQ225_FIRECART_IDEA_LOGENTRY) == (FALSE)) {
                    if ((NPC_GETDISTTOWP(HERO, "PART9_SQ225_PLUNDER")) <= (1300)) {
                        SQ225_FIRECART_IDEA_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_CARTS_IDEA);
                    };
                };
            };
            if (((SQ225_STEALTOOLS_IDEA_LOGENTRY) == (FALSE)) && ((NPC_KNOWSINFO(HERO, 72217)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_VINEYARD_70")) <= (1000)) {
                    SQ225_STEALTOOLS_IDEA_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_STEALTOOLS_IDEA);
                    MOB_CHANGEFOCUSNAME("SQ225_CHEST_01", "MOBNAME_CHEST");
                    MOB_CHANGEFOCUSNAME("SQ225_CHEST_02", "MOBNAME_WOODCHEST");
                };
            } else if ((SQ225_STEALTOOLS_IDEA_LOGENTRY) == (TRUE)) {
                if (((((((((MOB_HASITEMS("SQ225_CHEST_01", 33997)) == (0)) && ((MOB_HASITEMS("SQ225_CHEST_01", 34178)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34174)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34181)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34179)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34186)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34180)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 36952)) == (0))) {
                    if ((SQ225_TOOLSSTOLEN) == (0)) {
                        SQ225_TOOLSSTOLEN = 1;
                        SQ225_ANDERASWAY_COUNT = (SQ225_ANDERASWAY_COUNT) + (1);
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_STEALTOOLS_DONE);
                    };
                };
            };
            if ((SQ225_STEALTOOLS_IDEA_LOGENTRY) == (TRUE)) {
                if ((SQ225_STEALTOOLS_SECONDCHEST) == (FALSE)) {
                    if ((((((((MOB_HASITEMS("SQ225_CHEST_02", 34174)) == (0)) && ((MOB_HASITEMS("SQ225_CHEST_02", 34181)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34179)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34186)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 34180)) == (0))) && ((MOB_HASITEMS("SQ225_CHEST_02", 36952)) == (0))) || (((MOB_HASITEMS("SQ225_CHEST_01", 33997)) == (0)) && ((MOB_HASITEMS("SQ225_CHEST_01", 34178)) == (0)))) {
                        SQ225_STEALTOOLS_SECONDCHEST = TRUE;
                        B_SAY(HERO, HERO, "$MARVIN_ThinkingEmoji");
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_SECONDCHEST);
                    };
                };
            };
            if ((SQ225_FIRECARTWAIT) == (1)) {
                if (((SQ225_FIRECARTWAIT_HOUR) <= ((WLD_GETHOUR()) - (6))) || ((SQ225_FIRECARTWAIT_DAY) != (WLD_GETDAY()))) {
                    if ((NPC_GETDISTTOWP(HERO, "PART9_SQ225_PLUNDER")) >= (2500)) {
                        FF_APPLYONCEEXTGT(42061, 0, -(1));
                        WLD_SENDTRIGGER("MOVER_SQ225_CART_FIRE_01");
                        WLD_SENDTRIGGER("MOVER_SQ225_CART_FIRE_02");
                        SQ225_QUESTFAILED_MOVER_01 = FALSE;
                        SQ225_QUESTFAILED_MOVER_02 = FALSE;
                        SQ225_QUESTFAILED_MOVER_03 = FALSE;
                        SQ225_FIRECARTWAIT = 2;
                    };
                };
            } else if ((SQ225_FIRECARTWAIT) == (2)) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_SQ225_PLUNDER")) <= (1300)) {
                    SQ225_FIRECARTWAIT = 3;
                    if ((NPC_KNOWSINFO(HERO, 72217)) == (FALSE)) {
                        SQ225_FIRECARTDONE = TRUE;
                        SQ225_ANDERASWAY_COUNT = (SQ225_ANDERASWAY_COUNT) + (1);
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_CARTS_NOMORE);
                    };
                };
            };
            if ((NPC_KNOWSINFO(HERO, 72217)) == (FALSE)) {
                if ((SQ225_FIGHTWITHSTRAWS) == (0)) {
                    if ((HERO.GUILD) == (GIL_GIANT_BUG)) {
                        SQ225_STARW_FIGHTENABLE();
                        SQ225_FIGHTWITHSTRAWS = 1;
                    };
                } else if ((SQ225_FIGHTWITHSTRAWS) == (1)) {
                    if ((HERO.GUILD) != (GIL_GIANT_BUG)) {
                        PRINTD("DZIA£A2, DZIA£A2, DZIA£A2");
                        SQ225_STARW_FIGHTDISABLE();
                        SQ225_FIGHTWITHSTRAWS = 0;
                    };
                };
            };
            if ((SQ225_MOVERGERHARD) == (1)) {
                if (((NPC_GETDISTTOWP(VLK_3014_GERHARD, "PARTM4_TAVERN_BENCH_01")) <= (750)) && ((NPC_ISINSTATE(VLK_3014_GERHARD, 61599)) == (FALSE))) {
                    SQ225_MOVERGERHARD = 2;
                    B_STARTOTHERROUTINE(VLK_3014_GERHARD, "SQ225_UPSTAIRS");
                    NPC_REFRESH(VLK_3014_GERHARD);
                    PRINTD("Idzie Gerhard");
                };
            };
            if ((SQ225_GERHARD_WAITFORACTION) == (1)) {
                if (((SQ225_GERHARD_WAITFORACTION_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_ISINSTATE(VLK_3014_GERHARD, 61599)) == (FALSE))) {
                    SQ225_GERHARD_WAITFORACTION = 2;
                    B_STARTOTHERROUTINE(VLK_3014_GERHARD, TOT);
                    NPC_REFRESH(VLK_3014_GERHARD);
                    TELEPORTNPCTOWP(53410, VLK_3014_GERHARD.WP);
                };
            };
        };
        if ((SQ225_HOLDWIGWAY_AGREED) == (TRUE)) {
            if ((SQ225_GERSTAND_TALKWITHRODERICH) == (1)) {
                if ((((SQ225_GERSTAND_TALKWITHRODERICH_DAY) <= ((WLD_GETDAY()) - (1))) && ((NPC_ISINSTATE(NONE_839_GERSTAND, 61599)) == (FALSE))) && ((NPC_ISINSTATE(MIL_4000_RODERICH, 61599)) == (FALSE))) {
                    SQ225_GERSTAND_TALKWITHRODERICH = 2;
                    PRINTD("Gerstand wróci³");
                    RESTOREROUTINE_RODERICH();
                    B_STARTOTHERROUTINE(NONE_839_GERSTAND, START);
                    NPC_REFRESH(NONE_839_GERSTAND);
                    MDL_REMOVEOVERLAYMDS(NONE_839_GERSTAND, HUMANSTIREDMDS);
                };
            };
            if ((SQ225_HUNTINGGIANTBUG) == (1)) {
                if (((((((NPC_ISDEAD(GIANT_BUG_SQ225_01)) && (NPC_ISDEAD(GIANT_BUG_SQ225_02))) && (NPC_ISDEAD(GIANT_BUG_SQ225_03))) && (NPC_ISDEAD(GIANT_BUG_SQ225_04))) && (NPC_ISDEAD(GIANT_BUG_SQ225_05))) && (NPC_ISDEAD(GIANT_BUG_SQ225_06))) && (NPC_ISDEAD(GIANT_BUG_SQ225_07))) {
                    if ((SQ225_ANDERASWAY_STARTCUTSCENE) != (2)) {
                        SQ225_HUNTINGGIANTBUG = 2;
                        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_GIANTBUGGONE);
                        SQ225_FIGHTINVINEYARD_HOLDWIGWAY();
                        SQ225_STARTFIGHTINVINEYARD_HOLDWIG();
                    };
                };
            };
        };
        if ((SQ225_DONTCHECKDISABLEMUSIC) == (FALSE)) {
            if (((SQ225_FIGHTINVINEYARD) >= (1)) || ((SQ225_FIGHTINVINEYARD_HOLDWIG) >= (1))) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_DENNIS")) >= (15000)) {
                    if ((SQ225_CHECKDISABLEMUSIC) == (FALSE)) {
                        MUSIC_DISABLEOVERRIDE();
                        SQ225_CHECKDISABLEMUSIC = TRUE;
                    };
                };
            };
        };
        if ((SQ225_MOVERGERHARDVINEYARD) == (0)) {
            if ((SQ225_FIGHTINVINEYARD_ANDERAS) == (1)) {
                if ((NPC_GETDISTTONPC(VLK_3014_GERHARD_VINEYARDFIGHT, HERO)) <= (1650)) {
                    SQ225_MOVERGERHARDVINEYARD = 1;
                    B_STARTOTHERROUTINE(VLK_3014_GERHARD_VINEYARDFIGHT, "SQ225_FOLLOW");
                    NPC_REFRESH(VLK_3014_GERHARD_VINEYARDFIGHT);
                };
            };
        };
        if ((SQ225_FIGHTINVINEYARD) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PART9_DENNIS")) <= (4000)) {
                MUSIC_OVERRIDETRACK(21945);
                SQ225_STARTFIGHTINVINEYARD_FLAGS();
                SQ225_FIGHTINVINEYARD = 2;
            };
        } else if ((SQ225_FIGHTINVINEYARD) == (2)) {
            if (((NPC_GETDISTTOWP(HERO, "PART9_DENNIS")) <= (300)) || ((NPC_GETDISTTOWP(VLK_3014_GERHARD_VINEYARDFIGHT, "PART9_DENNIS")) <= (300))) {
                if (((SQ225_FIGHTINVINEYARD_ANDERAS) == (1)) && ((NPC_ISINSTATE(BAU_2245_HOLDWIG, 61599)) == (FALSE))) {
                    BAU_2245_HOLDWIG.FLAGS = NPC_FLAG_IMPORTANT;
                    BAU_2245_HOLDWIG.GUILD = GIL_BDT;
                    NPC_SETTRUEGUILD(BAU_2245_HOLDWIG, GIL_BDT);
                    B_STARTOTHERROUTINE(BAU_2245_HOLDWIG, "SQ225_FIGHT");
                    NPC_REFRESH(BAU_2245_HOLDWIG);
                    SQ225_FIGHTINVINEYARD = 3;
                };
            };
        } else if ((SQ225_FIGHTINVINEYARD) == (3)) {
            if ((((((NPC_ISINSTATE(BAU_2245_HOLDWIG, 61603)) && ((NPC_ISINSTATE(VLK_3014_GERHARD_VINEYARDFIGHT, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_2265_FARMER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_2267_FARMER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_11182_FARMER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(NONE_11214_MERCENARY, 61599)) == (FALSE))) {
                MUSIC_OVERRIDETRACK(21950);
                SQ225_FIGHTINVINEYARD = 4;
                NPC_REFRESH(VLK_3014_GERHARD_VINEYARDFIGHT);
                B_STARTOTHERROUTINE(BAU_2265_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_2265_FARMER);
                TELEPORTNPCTOWP(57001, BAU_2265_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_2265_FARMER, BAU_2265_FARMER.WP, TRUE);
                B_STARTOTHERROUTINE(BAU_2267_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_2267_FARMER);
                TELEPORTNPCTOWP(57013, BAU_2267_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_2267_FARMER, BAU_2267_FARMER.WP, TRUE);
                B_STARTOTHERROUTINE(BAU_11182_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_11182_FARMER);
                TELEPORTNPCTOWP(56877, BAU_11182_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_11182_FARMER, BAU_11182_FARMER.WP, TRUE);
                B_STARTOTHERROUTINE(NONE_11214_MERCENARY, "SQ225_AFTERFIGHT");
                NPC_REFRESH(NONE_11214_MERCENARY);
            };
        } else if ((SQ225_FIGHTINVINEYARD) == (4)) {
            if ((SQ225_ANDERASWAY_STARTCUTSCENE) == (1)) {
                SQ225_ANDERASWAY_STARTCUTSCENE = 2;
                FF_APPLYONCEEXT(42073, 75, 4);
            };
        };
        if ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (1)) {
            if ((((NPC_GETDISTTOWP(HERO, "PART9_DENNIS")) <= (1800)) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_25")) <= (1800))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_132")) <= (2000))) {
                MUSIC_OVERRIDETRACK(21945);
                SQ225_STARTFIGHTINVINEYARD_HOLDWIG_FLAGS();
                SQ225_FIGHTINVINEYARD_HOLDWIG = 2;
            };
        } else if ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (2)) {
            if (((((((NPC_GETDISTTOWP(BAU_2266_FARMER, "PART9_DENNIS")) <= (300)) || ((NPC_GETDISTTOWP(BAU_11182_FARMER, "PART9_DENNIS")) <= (300))) || ((NPC_GETDISTTOWP(BAU_11186_FARMER, "PART9_DENNIS")) <= (300))) || ((NPC_GETDISTTOWP(BAU_11190_FARMER, "PART9_DENNIS")) <= (300))) || ((NPC_GETDISTTOWP(BAU_11196_FARMER, "PART9_DENNIS")) <= (300))) || ((NPC_GETDISTTOWP(HERO, "PART9_DENNIS")) <= (300))) {
                SQ225_FIGHTAGAINSTANDREAS_HOLDWIGROOM();
                SQ225_FIGHTINVINEYARD_HOLDWIG = 3;
            };
        } else if ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (3)) {
            if (((((NPC_ISINSTATE(VLK_11181_ANDERAS_VINEYARDFIGHT, 61603)) && ((NPC_ISINSTATE(BAU_2245_HOLDWIG, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_2265_FARMER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_2267_FARMER, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_11182_FARMER, 61599)) == (FALSE))) {
                MUSIC_OVERRIDETRACK(21950);
                SQ225_FIGHTINVINEYARD_HOLDWIG = 4;
                B_REMOVENPC(56797);
                B_REMOVENPC(56801);
                B_REMOVENPC(56805);
                B_REMOVENPC(56809);
                B_REMOVENPC(56813);
                NPC_REFRESH(BAU_2245_HOLDWIG);
                B_STARTOTHERROUTINE(BAU_2265_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_2265_FARMER);
                TELEPORTNPCTOWP(57001, BAU_2265_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_2265_FARMER, BAU_2265_FARMER.WP, TRUE);
                B_STARTOTHERROUTINE(BAU_2267_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_2267_FARMER);
                TELEPORTNPCTOWP(57013, BAU_2267_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_2267_FARMER, BAU_2267_FARMER.WP, TRUE);
                B_STARTOTHERROUTINE(BAU_11182_FARMER, "SQ225_FIGHT_WAIT");
                NPC_REFRESH(BAU_11182_FARMER);
                TELEPORTNPCTOWP(56877, BAU_11182_FARMER.WP);
                AI_TELEPORTALWAYS(BAU_11182_FARMER, BAU_11182_FARMER.WP, TRUE);
            };
        } else if ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (4)) {
            if ((SQ225_HOLDWIGWAY_STARTCUTSCENE) == (1)) {
                SQ225_HOLDWIGWAY_STARTCUTSCENE = 2;
                FF_APPLYONCEEXT(42075, 75, 4);
            };
        };
        if ((SQ225_FIGHTINVINEYARD_ANDERAS) >= (1)) {
            if ((SQ225_TELEPORTGERHARD) == (0)) {
                if (SPAWNGERHARDISAVAILABLE("PART9_PATH_17")) {
                    SPAWNGERHARD("PART9_SQ225_GERHARD_SPAWNSPOT_01", "SQ225_SPAWNSPOT_01");
                    PRINTD("Teleport Gerhard - 1");
                } else if (SPAWNGERHARDISAVAILABLE("PART9_PATH_119")) {
                    SPAWNGERHARD("PART9_SQ225_GERHARD_SPAWNSPOT_02", "SQ225_SPAWNSPOT_02");
                    PRINTD("Teleport Gerhard - 2");
                } else if (SPAWNGERHARDISAVAILABLE("PART9_PATH_66")) {
                    SPAWNGERHARD("PART9_SQ225_GERHARD_SPAWNSPOT_03", "SQ225_SPAWNSPOT_03");
                    PRINTD("Teleport Gerhard - 3");
                } else if (SPAWNGERHARDISAVAILABLE("PART9_PATH_176")) {
                    SPAWNGERHARD("PART9_SQ225_GERHARD_SPAWNSPOT_04", "SQ225_SPAWNSPOT_04");
                    PRINTD("Teleport Gerhard - 4");
                };
            };
        } else if ((SQ225_FIGHTINVINEYARD_HOLDWIG) >= (1)) {
            if ((SQ225_TELEPORTFARMER) == (0)) {
                if (SPAWNFARMERISAVAILABLE("PART9_PATH_54")) {
                    SPAWNFARMER("PART9_PATH_54", "SQ225_SPAWNSPOT_01");
                    PRINTD("Teleport Farmer - 1");
                } else if (SPAWNFARMERISAVAILABLE("PART9_PATH_120")) {
                    SPAWNFARMER("PART9_PATH_120", "SQ225_SPAWNSPOT_02");
                    PRINTD("Teleport Farmer - 2");
                } else if (SPAWNFARMERISAVAILABLE("PART9_PATH_17")) {
                    SPAWNFARMER("PART9_PATH_17", "SQ225_SPAWNSPOT_03");
                    PRINTD("Teleport Farmer - 3");
                } else if (SPAWNFARMERISAVAILABLE("PART9_PATH_67")) {
                    SPAWNFARMER("PART9_PATH_67", "SQ225_SPAWNSPOT_04");
                    PRINTD("Teleport Farmer - 4");
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) {
        if ((SQ225_BRADLOCKREWARDWAIT) == (1)) {
            if ((SQ225_BRADLOCKREWARDWAIT_DAY) <= ((WLD_GETDAY()) - (1))) {
                if (((LOG_GETSTATUS(MIS_Q308)) != (LOG_RUNNING)) && ((NPC_ISINSTATE(NONE_2246_BRADLOCK, 61599)) == (FALSE))) {
                    SQ225_BRADLOCKREWARDWAIT = 2;
                    B_STARTOTHERROUTINE(NONE_2246_BRADLOCK, START);
                    NPC_REFRESH(NONE_2246_BRADLOCK);
                    PRINTD("Nagroda gotowa");
                };
            };
        };
    };
}

