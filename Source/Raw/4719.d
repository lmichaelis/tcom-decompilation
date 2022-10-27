func void EVENTSMANAGER_Q514_LOGENTRIES() {
    if ((Q514_INSIDEVOLFZACKE) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_01")) <= (750)) {
            Q514_INSIDEVOLFZACKE = TRUE;
            B_LOGENTRY(TOPIC_Q514, LOG_Q514_START);
        };
    };
    if ((Q514_FIRSTGATEOPENED) == (TRUE)) {
        if ((Q514_GARGOYLECHAMBERLOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_18")) <= (400)) {
                Q514_GARGOYLECHAMBERLOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_GARGOYLECHAMBER);
            };
        };
        if ((Q514_GARGOYLECHAMBER_CLOSEDGATELOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_29")) <= (400)) {
                Q514_GARGOYLECHAMBER_CLOSEDGATELOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_GARGOYLECHAMBER_CLOSEDGATE);
                WLD_SENDTRIGGER("VZ_GARGOYLE_STATUE_05_A");
            };
        };
        if ((Q514_BIGROCKSBLOCKWAY_V1_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_TRAININGHALL_ROCKS")) <= (350)) {
                Q514_BIGROCKSBLOCKWAY_V1_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_BIGROCKBLOCKWAY_V1);
            };
        };
        if ((Q514_BIGROCKSBLOCKWAY_V2_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_KITCHEN_05")) <= (400)) {
                Q514_BIGROCKSBLOCKWAY_V2_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_BIGROCKBLOCKWAY_V2);
            };
        };
        if ((Q514_VARINWORK_LADDER) == (3)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_SIDEQUEST_V1_05")) <= (1000)) {
                if ((Q514_VARINWORK_LADDER_LOGENTRY) == (FALSE)) {
                    Q514_VARINWORK_LADDER_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_Q514, LOG_Q514_VARINWORK_LADDER_MISSING);
                };
            };
        };
    };
    if ((Q514_SECONDGATEOPENED) == (TRUE)) {
        if ((Q514_PUZZLECHAMBER_ENTER_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_PUZZLE_02")) <= (450)) {
                Q514_PUZZLECHAMBER_ENTER_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_PUZZLECHAMBER_ENTER);
            };
        };
        if ((Q514_CHESS_THRONEROOM_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CHESS_18")) <= (1000)) {
                Q514_CHESS_THRONEROOM_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CHESSCHAMBER_ENTER);
            };
        };
    };
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_TRAPROOM_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CHESS_23")) <= (300)) {
                Q514_CHESS_TRAPROOM_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CHESSCHAMBER_TRAPROOM);
            };
        };
    };
    if ((Q514_CHESS_FINISH) == (TRUE)) {
        if ((Q514_CATACOMBS_ENTER_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CATACOMBS_02")) <= (400)) {
                Q514_CATACOMBS_ENTER_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CATACOMBS_ENTER);
            };
        };
    };
    if ((Q514_SWORD_FINISH) == (1)) {
        if ((Q514_CRAWLER_KILLDACK) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, MIL_63710_DUSTER_VZ)) <= (400)) {
                Q514_CRAWLER_KILLDACK = 2;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CRAWLER_FOUNDDEADDACK);
            };
        };
        if ((Q514_CRAWLER_FINISH) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACKE_RUINS_WATER")) <= (500)) {
                Q514_CRAWLER_FINISH = 1;
                WLD_SENDTRIGGER("Q514_MOVER_LIGHT");
                WLD_INSERTNPC(0xc730, "FP_VZ_DESTROYEDGOLEM_01");
                WLD_INSERTNPC(0xc731, "FP_VZ_DESTROYEDGOLEM_02");
                WLD_INSERTNPC(0xc732, "FP_VZ_DESTROYEDGOLEM_03");
                if ((Q509_CORTEZVOLFZACKE) == (1)) {
                    if ((NPC_ISDEAD(PIR_1303_CORTEZ_VZ)) == (FALSE)) {
                        PRINTD("Przygotuj Corteza");
                        B_KILLNPC(0xc730);
                        B_KILLNPC(0xc731);
                        B_KILLNPC(0xc732);
                        if ((NPC_ISDEAD(SKELETON_VZ_GOLEM_01)) == (FALSE)) {
                            B_REMOVENPC(0xc3d8);
                        };
                        if ((NPC_ISDEAD(SKELETON_VZ_GOLEM_02)) == (FALSE)) {
                            B_REMOVENPC(0xc3d9);
                        };
                        B_STARTOTHERROUTINE(PIR_1303_CORTEZ_VZ, "AMBUSH");
                        NPC_REFRESH(PIR_1303_CORTEZ_VZ);
                        TELEPORTNPCTOWP(0xe7b1, "VOLFZACK_RUINS_02");
                    };
                };
                WLD_SENDTRIGGER("VZ_BRIDGE_REPAIR");
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CRAWLER_FINISH);
                B_STARTOTHERROUTINE(KDW_203_RIORDIAN_VZ, "LOOKINGFORUS");
                NPC_REFRESH(KDW_203_RIORDIAN_VZ);
                TELEPORTNPCTOWP(0xe700, KDW_203_RIORDIAN_VZ.WP);
                B_STARTOTHERROUTINE(SLD_13784_VARIN_VZ, "LOOKINGFORUS");
                NPC_REFRESH(SLD_13784_VARIN_VZ);
                TELEPORTNPCTOWP(0xe7d0, SLD_13784_VARIN_VZ.WP);
                Q514_FAKECAMP();
                Q514_FRIENDS_FAKECAMPRTN();
                Q514_PREPARECAMP();
            };
        } else if ((Q514_COMEBACKSWORD) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_49")) <= (500)) {
                if ((NPC_HASITEMS(HERO, 0x9a2a)) == (0)) {
                    Q514_COMEBACKSWORD = TRUE;
                    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_NOSWORD_15_01");
                    AI_FUNCTION(HERO, 0xefd7);
                };
            };
        };
        if ((Q514_CORTEZDECISION) == (2)) {
            if (NPC_ISDEAD(PIR_1303_CORTEZ_VZ)) {
                Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_12 = TRUE;
                Q514_CORTEZDECISION = 3;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CORTEZDECISION_V1);
            };
        };
    };
}

var int EVENTSMANAGER_Q514_LOGENTRIES.Q514_VARINWORK_LADDER_LOGENTRY = 0;
func void EVENTSMANAGER_Q514() {
    if (((LOG_GETSTATUS(MIS_Q514)) != (LOG_RUNNING)) || ((CURRENTLEVEL) != (ARCHOLOS_VOLFZACKE_ZEN))) {
        return;
    };
    if ((Q514_CAMPISREADY) == (TRUE)) {
        if (((FINALBOARDS_PALADINSTATUS) == (0)) || ((FINALBOARDS_PALADINSTATUS) == (1))) {
            if ((Q509_CANDACVOLFZACKE) == (TRUE)) {
                if (NPC_ISDEAD(PAL_100_CANDAC_VZ)) {
                    Q509_CANDACVOLFZACKE = 2;
                    FINALBOARDS_PALADINSTATUS = (FINALBOARDS_PALADINSTATUS) + (1);
                    PRINTD("Candac nie¿yje!");
                };
            };
        };
        if ((FINALBOARDS_ARWIDISDEAD) == (FALSE)) {
            if ((Q509_ARWIDVOLFZACKE) == (TRUE)) {
                if (NPC_ISDEAD(MIL_4017_ARWID_VZ)) {
                    FINALBOARDS_ARWIDISDEAD = TRUE;
                    PRINTD("Arwid nie¿yje!");
                };
            };
        };
        if ((FINALBOARDS_CARAMONISDEAD) == (FALSE)) {
            if ((Q509_CARAMONVOLFZACKE) == (TRUE)) {
                if (NPC_ISDEAD(SLD_1009_CARAMON_VZ)) {
                    FINALBOARDS_CARAMONISDEAD = TRUE;
                    PRINTD("Caramon nie¿yje!");
                };
            };
        };
    };
    EVENTSMANAGER_Q514_LOGENTRIES();
    if ((Q514_SPAWNKESSELANDRIORDIAN) == (FALSE)) {
        if ((((NPC_ISDEAD(ZOMBIE_VOLFZACKE_STORYRISE_01)) && (NPC_ISDEAD(ZOMBIE_VOLFZACKE_STORYRISE_02))) && (NPC_ISDEAD(SKELETON_VZ_STORY_01))) && (NPC_ISDEAD(SKELETON_VZ_STORY_02))) {
            Q514_SPAWNKESSELANDRIORDIAN = TRUE;
            WLD_INSERTNPC(0xe77b, "VOLFZACK_02");
            WLD_INSERTNPC(0xe700, "VOLFZACK_01");
            NONE_202_KESSEL_VZ.AIVAR[15] = TRUE;
            KDW_203_RIORDIAN_VZ.AIVAR[15] = TRUE;
        };
    };
    if ((Q514_KESSELGUIDE_BRIDGE) == (0)) {
        if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_BRIDGE_01")) <= (300)) {
            Q514_VOLFZACKEBRIDGE_STOP();
        };
    };
    if ((Q514_KESSELGUIDE_BRIDGE) == (1)) {
        if (((NPC_GETDISTTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_13")) <= (300)) && ((NPC_ISINSTATE(NONE_202_KESSEL_VZ, 0xf09f)) == (FALSE))) {
            Q514_KESSELGUIDE_BRIDGE = 2;
            B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "GUIDEBRIDGE");
            NPC_REFRESH(NONE_202_KESSEL_VZ);
            PRINTD("Kessel zmieni³ RTN!");
            FF_APPLYONCEEXT(0xefea, 1000, 8);
        };
    };
    if ((Q514_BRIDGECUTSCENE_MOVENPC) == (0)) {
        if ((((((NPC_GETDISTTOWP(NONE_11037_MARKUS_VZ, "VOLFZACK_10")) <= (1000)) && ((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_10")) <= (1000))) && ((NPC_GETDISTTOWP(SLD_13784_VARIN_VZ, "VOLFZACK_10")) <= (1000))) && ((NPC_GETDISTTOWP(NONE_13795_DISMAS_VZ, "VOLFZACK_10")) <= (1000))) && ((NPC_GETDISTTOWP(NONE_10039_WORKER_VZ, "VOLFZACK_10")) <= (1000))) {
            Q514_BRIDGECUTSCENE_MOVENPC = 1;
            PRINTD("Id¹ NPC");
            AI_UNEQUIPWEAPONS(NONE_11037_MARKUS_VZ);
            AI_EQUIPBESTMELEEWEAPON(NONE_11037_MARKUS_VZ);
            AI_DRAWWEAPON(NONE_11037_MARKUS_VZ);
            AI_UNEQUIPWEAPONS(MIL_63710_DUSTER_VZ);
            AI_EQUIPBESTMELEEWEAPON(MIL_63710_DUSTER_VZ);
            AI_DRAWWEAPON(MIL_63710_DUSTER_VZ);
            AI_UNEQUIPWEAPONS(SLD_13784_VARIN_VZ);
            AI_EQUIPBESTMELEEWEAPON(SLD_13784_VARIN_VZ);
            AI_DRAWWEAPON(SLD_13784_VARIN_VZ);
            AI_UNEQUIPWEAPONS(NONE_13795_DISMAS_VZ);
            AI_EQUIPBESTMELEEWEAPON(NONE_13795_DISMAS_VZ);
            AI_DRAWWEAPON(NONE_13795_DISMAS_VZ);
            AI_UNEQUIPWEAPONS(NONE_10039_WORKER_VZ);
            AI_EQUIPBESTMELEEWEAPON(NONE_10039_WORKER_VZ);
            AI_DRAWWEAPON(NONE_10039_WORKER_VZ);
            AI_SETWALKMODE(NONE_11037_MARKUS_VZ, NPC_RUN);
            AI_SETWALKMODE(MIL_63710_DUSTER_VZ, NPC_RUN);
            AI_SETWALKMODE(SLD_13784_VARIN_VZ, NPC_RUN);
            AI_SETWALKMODE(NONE_13795_DISMAS_VZ, NPC_RUN);
            AI_SETWALKMODE(NONE_10039_WORKER_VZ, NPC_RUN);
            AI_GOTOWP(NONE_11037_MARKUS_VZ, "VOLFZACKE_LEAVE_CUTSCENE_HERO_START");
            AI_GOTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_BRIDGE_CUTSCENE_DUSTER");
            AI_GOTOWP(SLD_13784_VARIN_VZ, "VOLFZACK_BRIDGE_CUTSCENE_DACK");
            AI_WAIT(NONE_13795_DISMAS_VZ, 0x41100000);
            AI_WAIT(NONE_10039_WORKER_VZ, 0x41280000);
            AI_GOTOWP(NONE_13795_DISMAS_VZ, "VOLFZACKE_LEAVE_CUTSCENE_HERO_START");
            AI_GOTOWP(NONE_10039_WORKER_VZ, "VOLFZACKE_LEAVE_CUTSCENE_HERO_START");
            AI_TURNAWAY(NONE_11037_MARKUS_VZ, HERO);
            AI_TURNAWAY(MIL_63710_DUSTER_VZ, HERO);
            AI_TURNAWAY(SLD_13784_VARIN_VZ, HERO);
        };
    };
    if ((Q514_FIRSTGATEOPENED) == (TRUE)) {
        if ((Q514_CAMPISREADY) == (FALSE)) {
            if (((NPC_GETDISTTOWP(HERO, "VOLFZACK_14")) >= (0xfa0)) && ((NPC_ISINSTATE(NONE_202_KESSEL_VZ, 0xf09f)) == (FALSE))) {
                Q514_CAMPISREADY = TRUE;
                Q514_FAKECAMP();
                Q514_PREPARECAMP();
                Q514_FRIENDS_CAMPRTN();
                B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "CAMPREADY");
                NPC_REFRESH(NONE_202_KESSEL_VZ);
                TELEPORTNPCTOWP(0xe77b, NONE_202_KESSEL_VZ.WP);
            };
        };
        if ((Q514_DUSTERWORK_KITCHEN) == (1)) {
            if ((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_KITCHEN_03")) <= (600)) {
                if (((((((NPC_GETDISTTOWP(NONE_11136_REFIR_VZ, "VOLFZACK_KITCHEN_05")) <= (700)) || ((NPC_GETDISTTOWP(NONE_11137_NERAL_VZ, "VOLFZACK_KITCHEN_05")) <= (700))) || ((NPC_GETDISTTOWP(NONE_13706_TOLLEK_VZ, "VOLFZACK_KITCHEN_05")) <= (700))) || ((NPC_GETDISTTOWP(NONE_13708_LOAFS_VZ, "VOLFZACK_KITCHEN_05")) <= (700))) || ((NPC_GETDISTTOWP(VLK_6357_NIVEL_VZ, "VOLFZACK_KITCHEN_05")) <= (700))) || ((NPC_GETDISTTOWP(VLK_6358_MIROH_VZ, "VOLFZACK_KITCHEN_05")) <= (700))) {
                    PRINTD("Pracuj¹ w kuchni");
                    Q514_DUSTERWORK_KITCHEN = 2;
                };
            };
        } else if ((Q514_DUSTERWORK_KITCHEN) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_46")) >= (0xbb8)) {
                PRINTD("Po pracy w kuchni");
                Q514_DUSTERWORK_KITCHEN = 3;
                Q514_DUSTERWORK_KITCHENFIGHT();
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_KITCHEN_CHECK);
            };
        } else if ((Q514_DUSTERWORK_KITCHEN) == (3)) {
            if (NPC_KNOWSINFO(HERO, 0x153b8)) {
                if ((NPC_ISDEAD(SKELETON_VZ_KITCHEN_01)) && (NPC_ISDEAD(SKELETON_VZ_KITCHEN_02))) {
                    Q514_DUSTERWORK_KITCHEN = 4;
                    B_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_KITCHEN_DEAD);
                };
            };
        };
        if ((Q514_DUSTERWORK_TRAININGHALL) == (1)) {
            if ((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_TRAININGHALL_DUSTER")) <= (600)) {
                if (((((((NPC_GETDISTTOWP(NONE_11136_REFIR_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700)) || ((NPC_GETDISTTOWP(NONE_11137_NERAL_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700))) || ((NPC_GETDISTTOWP(NONE_13706_TOLLEK_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700))) || ((NPC_GETDISTTOWP(NONE_13708_LOAFS_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700))) || ((NPC_GETDISTTOWP(VLK_6357_NIVEL_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700))) || ((NPC_GETDISTTOWP(VLK_6358_MIROH_VZ, "VOLFZACK_TRAININGHALL_ROCKS")) <= (700))) {
                    PRINTD("Pracuj¹ w sali treningowej");
                    Q514_DUSTERWORK_TRAININGHALL = 2;
                };
            };
        } else if ((Q514_DUSTERWORK_TRAININGHALL) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_38")) >= (0xbb8)) {
                PRINTD("Po pracy w sali treningowej");
                Q514_DUSTERWORK_TOTHETRAININGHALL_AFTERWORK();
                Q514_DUSTERWORK_TRAININGHALL = 3;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_TRAININGHALL_CHECK);
            };
        };
        if ((Q514_SECONDGATE_FOUNDSWORD01_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x9aba)) >= (1)) {
                Q514_SECONDGATE_FOUNDSWORD01_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_SWORD_V1);
            };
        };
        if ((Q514_SECONDGATE_WATERLEVEL_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_RUINS_11")) <= (700)) {
                Q514_SECONDGATE_WATERLEVEL_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_WATERLEVEL);
            };
        } else if ((Q514_SECONDGATE_FOUNDSWORD02_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x9abb)) >= (1)) {
                Q514_SECONDGATE_FOUNDSWORD02_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_SWORD_V2);
            };
        };
        if ((Q514_SECONDGATE_FOUNDALLSWORDS) == (FALSE)) {
            if (((NPC_HASITEMS(HERO, 0x9aba)) >= (1)) && ((NPC_HASITEMS(HERO, 0x9abb)) >= (1))) {
                Q514_SECONDGATE_FOUNDALLSWORDS = TRUE;
                MOB_CHANGEFOCUSNAME("VZ_SECONDGATE_SWORD_02", "MOBNAME_SWITCH_USESWORD");
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_FOUNDALLSWORDS_V1);
            };
        };
    };
    if ((Q514_SECONDGATEOPENED) == (TRUE)) {
        if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_ARMORROOM_08")) <= (0x4e2)) {
            if ((Q514_TRAP04_COLORS) == (0)) {
                PRINTD("Hero widzia³ pokój z kolorami");
                Q514_TRAP04_COLORS = 1;
            };
        };
        if ((((NPC_GETDISTTOWP(HERO, "VOLFZACK_MEATBUG_04")) <= (300)) || ((NPC_GETDISTTOWP(HERO, "VOLFZACK_MEATBUG_05")) <= (300))) || ((NPC_GETDISTTOWP(HERO, "VOLFZACK_MEATBUG_06")) <= (300))) {
            if ((VZ_Q514_TRAP03_MOVER) == (0)) {
                VZ_Q514_TRAP03_MOVER = 1;
                WLD_SENDTRIGGER("VZ_SIDEQUEST_TRAP_02");
                FF_APPLYONCEEXT(0xef53, 300, 5);
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_VARINWORK_ROOM_MEATBUG);
                if ((Q514_CRAWLER_FINISH) == (0)) {
                    Q514_REMOVEVIRAN();
                };
            };
        };
        if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_SIDEQUEST_V1_06")) <= (500)) {
            if ((VZ_Q514_TRAP02_MOVER) == (0)) {
                VZ_Q514_TRAP02_MOVER = 1;
                WLD_SENDTRIGGER("VZ_SIDEQUEST_TRAP_01");
                if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (0)) {
                    FF_APPLYONCEEXT(0xef50, 500, 10);
                    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
                    SND_PLAY("MFX_EarthQuake");
                };
            };
        };
    };
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESSCHAMBER_BUTTONPUZZLE) == (1)) {
            if ((Q514_CHESS_DEATH) == (1)) {
                Q514_CHESS_DEATH = 2;
                PRINTD("Ktoœ umar³ hehe");
            } else if ((Q514_CHESS_BOSSFIGHT) == (1)) {
                WLD_INSERTNPC(0xe7bf, "VOLFZACK_CHESS_20");
                HERO.AIVAR[4] = TRUE;
                FF_APPLYONCEEXT(0xefe0, 75, 4);
                Q514_CHESS_BOSSFIGHT = 2;
                Q514_CHESS_CANTUSEBUTTON = 1;
            };
            if ((Q514_CHESS_FINISH) == (FALSE)) {
                if ((Q514_CHESS_BOSSFIGHT) == (2)) {
                    if (NPC_ISDEAD(SKELETON_VZ_BOSS)) {
                        MUSIC_DISABLEOVERRIDE();
                        Q514_CHESS_FINISH = TRUE;
                        Q514_CHESSCHAMBER_BUTTONPUZZLE = 2;
                        B_LOGENTRY(TOPIC_Q514, LOG_Q514_CHESSCHAMBER_FINISH);
                        CHANGEVOBCOLLISION("VZ_GIANTTHRONE_MOBINTER", FALSE, FALSE, FALSE, TRUE);
                        WLD_SENDTRIGGER("Q514_MOVER_THRONE_01");
                        WLD_SENDTRIGGER("VZ_BOSSFIGHT_GATE");
                    };
                };
            };
        };
    };
    if ((Q514_CHESS_FINISH) == (TRUE)) {
        if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (FALSE)) {
            if (NPC_ISDEAD(GARGOYLE_STORY_01)) {
                Q514_CATACOMBS_GARGOYLE_FIRSTMEETING = TRUE;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_CATACOMBS_GARGOYLE);
                Q514_RELASEGARGOYLES();
                Q514_CHANGEDOOR();
            };
        };
        if ((((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (1)) && ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CATACOMBS_GRAVEROOM_ENTER")) <= (150))) || (((NPC_HASITEMS(HERO, 0x901a)) >= (1)) && ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CATACOMBS_GRAVEROOM_ENTER")) <= (150)))) {
            if ((Q514_CATACOMBS_GRAVEROOM_BLOCKPLAYER) == (FALSE)) {
                Q514_VOLFZACKEGARGOYLE_STOP();
            };
        };
    };
    if ((Q514_CATACOMBS_FINISH) == (TRUE)) {
        if ((Q514_TREASURY_EVENT) == (1)) {
            Q514_TREASURY_EVENT = 2;
            FF_APPLYONCEEXT(0x16fd9, 500, 2);
        };
        if ((Q514_CHECKGAS) == (1)) {
            MOVPTR1 = MEM_SEARCHVOBBYNAME("VZ_TREASURY_DOOR_01");
            MOVER1 = MEM_PTRTOINST(MOVPTR1);
            MOVPTR2 = MEM_SEARCHVOBBYNAME("VZ_TREASURY_DOOR_02");
            MOVER2 = MEM_PTRTOINST(MOVPTR2);
            if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
                PRINTD("Gas");
                Q514_CHECKGAS = 2;
                WLD_SENDTRIGGER("Q515_MOVER_GAS");
                if ((NPC_ISDEAD(NONE_11037_MARKUS_VZ)) == (FALSE)) {
                    B_KILLNPC(0xe746);
                };
            };
        };
        if ((Q514_TREASURY_EVENT) == (2)) {
            if ((Q514_TREASURY_CHANGERTN_KESSEL) == (FALSE)) {
                if (((NPC_GETDISTTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_SWORD_KESSEL")) <= (300)) && ((NPC_ISINSTATE(NONE_202_KESSEL_VZ, 0xf09f)) == (FALSE))) {
                    Q514_TREASURY_CHANGERTN_KESSEL = TRUE;
                    B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "TREASURYTIRED");
                    NPC_REFRESH(NONE_202_KESSEL_VZ);
                };
            };
            if ((Q514_TREASURY_CHANGERTN_DACK) == (FALSE)) {
                if (((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_SWORD_DACK")) <= (300)) && ((NPC_ISINSTATE(MIL_63710_DUSTER_VZ, 0xf09f)) == (FALSE))) {
                    Q514_TREASURY_CHANGERTN_DACK = TRUE;
                    B_STARTOTHERROUTINE(MIL_63710_DUSTER_VZ, "TREASURYTIRED");
                    NPC_REFRESH(MIL_63710_DUSTER_VZ);
                };
            };
            if ((Q514_TREASURY_FINISH) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_SWORD_01")) <= (300)) {
                    Q514_TREASURY_FINISH = TRUE;
                    CUTSCENE_START(0x16a21);
                };
            };
        };
    };
    if ((Q514_TREASURY_FINISH) == (TRUE)) {
        if ((Q514_SWORD_CUTSCENE) == (1)) {
            Q514_SWORD_CUTSCENE = 2;
            FF_APPLYONCEEXT(0x16fdb, 500, 2);
        };
        if ((Q514_SWORD_CUTSCENE) == (4)) {
            if (((NPC_HASITEMS(HERO, 0x9a2a)) >= (1)) && ((NPC_HASITEMS(HERO, 0x92f7)) >= (1))) {
                if ((Q514_SWORD_LEAVE_LOGENTRY) == (1)) {
                    Q514_SWORD_LEAVE_LOGENTRY = 2;
                    B_LOGENTRY(TOPIC_Q514, LOG_Q514_KESSEL_AFTERSWORD_GOTEVERYTHING_V2);
                };
            };
        };
    };
    if ((Q514_SWORD_FINISH) == (TRUE)) {
        if ((Q514_CRAWLER_SPOOKYNOISES) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CRAWLER_04")) <= (375)) {
                SND_PLAY("CRW_Warn");
                Q514_CRAWLER_SPOOKYNOISES = 1;
                NPC_CLEARAIQUEUE(HERO);
                AI_PLAYANI(HERO, T_SEARCH);
            };
        } else if ((Q514_CRAWLER_SPOOKYNOISES) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "VOLFZACK_CRAWLER_07")) <= (375)) {
                SND_PLAY("CRW_Warn_A1");
                Q514_CRAWLER_SPOOKYNOISES = 2;
                NPC_CLEARAIQUEUE(HERO);
                AI_PLAYANI(HERO, T_SEARCH);
            };
        } else if ((Q514_CRAWLER_SPOOKYNOISES) == (2)) {
            if ((Q514_CRAWLER_KILLDACK) == (0)) {
                if ((NPC_GETDISTTOWP(MIL_63710_DUSTER_VZ, "VOLFZACK_CRAWLER_DACK")) <= (500)) {
                    Q514_CRAWLER_KILLDACK = 1;
                    B_KILLNPC(0xe730);
                    PRINTD("Duster nie ¿yje");
                };
            };
        };
        if ((Q514_HAVARDDECISION) == (2)) {
            if (NPC_ISDEAD(DJG_13790_HAVARD_VZ)) {
                Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_10 = TRUE;
                Q514_HAVARDDECISION = 3;
                B_LOGENTRY(TOPIC_Q514, LOG_Q514_HAVARDDECISION_V2);
            };
        };
    };
}

instance EVENTSMANAGER_Q514.MOVER1(ZCMOVER)
instance EVENTSMANAGER_Q514.MOVER2(ZCMOVER)
var int EVENTSMANAGER_Q514.MOVPTR1 = 0;
var int EVENTSMANAGER_Q514.MOVPTR2 = 0;
func void Q514_SKELETON_BOSSFIGHT() {
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
    if (HLP_ISVALIDNPC(SKELETON_VZ_BOSS)) {
        START_BOSSUI(SKELETON_VZ_BOSS, 1);
    };
    HERO.AIVAR[4] = FALSE;
    SKELETON_VZ_BOSS.AIVAR[4] = FALSE;
}

func void Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY() {
    Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY_COUNT = (Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY_COUNT) + (1);
    if ((Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY_COUNT) == (2)) {
        CUTSCENE_START(0x16a25);
    };
}

var int Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY.Q514_VOLFZACKETREASURYTRAPCUTSCENE_APPLY_COUNT = 0;
func void Q514_VOLFZACKESWORDCUTSCENE_APPLY_START() {
    Q514_VOLFZACKESWORDCUTSCENE_START_APPLY_COUNT = (Q514_VOLFZACKESWORDCUTSCENE_START_APPLY_COUNT) + (1);
    if ((Q514_VOLFZACKESWORDCUTSCENE_START_APPLY_COUNT) == (2)) {
        CUTSCENE_START(0x16a13);
    };
}

var int Q514_VOLFZACKESWORDCUTSCENE_APPLY_START.Q514_VOLFZACKESWORDCUTSCENE_START_APPLY_COUNT = 0;
