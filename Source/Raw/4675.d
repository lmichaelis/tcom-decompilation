func void Q406_13415_MANHUNTER() {
    B_IMMEDIATEATTACKPLAYER(NONE_13415_MANHUNTER, AR_KILL);
    NONE_13415_MANHUNTER.FLAGS = 0;
    NONE_13415_MANHUNTER.GUILD = GIL_DMT;
    B_IMMEDIATEATTACKPLAYER(NONE_13414_MANHUNTER, AR_KILL);
    NONE_13414_MANHUNTER.FLAGS = 0;
    NONE_13414_MANHUNTER.GUILD = GIL_DMT;
}

func void EVENTSMANAGER_OTHERS() {
    if ((HAVEN_THIAGOENCOUNTER) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART17_HAVEN_CAVE_END")) <= (1000)) {
            HAVEN_THIAGOENCOUNTER = TRUE;
            WLD_SENDTRIGGER("CH3_THIAGO_01");
            DIACAM_DISABLE();
            AI_SETWALKMODE(HERO, NPC_RUN);
            AI_GOTOWP(HERO, "PART17_HAVEN_CAVE_END");
            AI_LOOKATNPC(HERO, PIR_1311_THIAGO);
            B_CLEARPERCEPTIONS(PIR_1311_THIAGO);
            NPC_CLEARAIQUEUE(PIR_1311_THIAGO);
            AI_SETWALKMODE(PIR_1311_THIAGO, NPC_RUN);
            AI_GOTOWP(PIR_1311_THIAGO, "P17_THIAGO_ENCOUNTER_01");
            AI_TURNTONPC(PIR_1311_THIAGO, HERO);
            PIR_1311_THIAGO.HITCHANCE[3] = 100;
            B_CLEARPERCEPTIONS(PIR_6322_GHOST);
            NPC_CLEARAIQUEUE(PIR_6322_GHOST);
            AI_SETWALKMODE(PIR_6322_GHOST, NPC_RUN);
            AI_GOTOWP(PIR_6322_GHOST, "P17_GHOST_ENCOUNTER_01");
            AI_TURNTONPC(PIR_6322_GHOST, HERO);
            AI_READYRANGEDWEAPON(PIR_6322_GHOST);
            AI_AIMAT(PIR_6322_GHOST, HERO);
            AI_WAITTILLEND(PIR_1311_THIAGO, HERO);
            AI_STARTSTATE(PIR_1311_THIAGO, 0xf09f, 0, "");
            PRINTD("Thiago i czatownik zmienili RTN!");
        };
    };
    if ((CITYENTERED) == (TRUE)) {
        if ((Q602_HOMELESSDUDEDEAD) == (FALSE)) {
            if (NPC_ISDEAD(VLK_11069_HOMELESS)) {
                Q602_HOMELESSDUDEDEAD = TRUE;
            };
        };
    };
    if ((BOUNTY_SHADOWBEAST_WAKEUP) == (1)) {
        if ((NPC_ISDEAD(BDT_8027_SHADOWBEAST)) == (FALSE)) {
            if ((BDT_8027_SHADOWBEAST.ATTRIBUTE[0]) != (BDT_8027_SHADOWBEAST.ATTRIBUTE[1])) {
                BOUNTY_SHADOWBEAST_WAKEUP = 2;
                B_STARTOTHERROUTINE(BDT_8027_SHADOWBEAST, "FIGHT");
                NPC_REFRESH(BDT_8027_SHADOWBEAST);
            };
        };
    };
    if ((BOUNTY_SHADOWBEAST_WAKEUP) == (3)) {
        BOUNTY_SHADOWBEAST_WAKEUP = 4;
        B_STARTOTHERROUTINE(BDT_8027_SHADOWBEAST, "DANCE");
        NPC_REFRESH(BDT_8027_SHADOWBEAST);
    };
    if ((Q401_SWAMPMONSTERS) == (FALSE)) {
        if ((((((NPC_ISDEAD(SWAMPZOMBIE_Q401_01)) && (NPC_ISDEAD(SWAMPZOMBIE_Q401_02))) && (NPC_ISDEAD(SWAMPZOMBIE_Q401_03))) && (NPC_ISDEAD(SWAMPZOMBIE_Q401_04))) && (NPC_ISDEAD(SWAMPGOLEM_Q401_01))) && (NPC_ISDEAD(SWAMPGOLEM_Q401_02))) {
            Q401_SWAMPMONSTERS = TRUE;
            if (((Q401_NEARSWAMPHOUSE) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING))) {
                B_LOGENTRY(TOPIC_Q401, LOG_Q401_MONSTERSSWAMPGONE);
            };
        };
    };
    if ((CORPSEEVENT_01_TRIGGER) == (1)) {
        if (HLP_ISVALIDNPC(BDT_12000_BANDIT)) {
            if (((NPC_GETDISTTOWP(BDT_12000_BANDIT, "PART15_PATH_301")) <= (0x7d0)) && ((NPC_ISINSTATE(BDT_12000_BANDIT, 0xf09f)) == (FALSE))) {
                CORPSEEVENT_01_TRIGGER = 2;
                B_STARTOTHERROUTINE(BDT_12000_BANDIT, "FIGHT");
                NPC_REFRESH(BDT_12000_BANDIT);
                PRINTD("Bandyta biegnie");
            };
        };
    };
    if ((CORPSEEVENT_01_TRIGGER) == (2)) {
        if ((NPC_ISDEAD(BDT_12001_BANDIT)) && (NPC_ISDEAD(BDT_12000_BANDIT))) {
            if ((KAPITEL) >= (2)) {
                if ((NPC_GETDISTTOWP(HERO, "PART15_COPRSEEVENT_01")) >= (0xfa0)) {
                    CORPSEEVENT_01_TRIGGER = 3;
                    WLD_INSERTNPC(0xc543, "FP_ROAM_PART15_85");
                    WLD_INSERTNPC(0xc544, "FP_ROAM_PART15_89");
                    WLD_INSERTNPC(0xc545, "FP_ROAM_PART15_82");
                };
            };
        };
    };
    if ((SQ219_WOLFSDEN_VISITED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_PATH_25")) <= (0xdac)) {
            SQ219_WOLFSDEN_VISITED = TRUE;
            PRINTD("Marvin to se normalnie widzia? Wilcze");
        };
    };
    if ((SQ219_VINEYARD_VISITED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART15_PATH_203")) <= (0x4b0)) {
            SQ219_VINEYARD_VISITED = TRUE;
            PRINTD("Marvin to se normalnie widzia? piwnice w winnicy");
        };
    };
    if ((SQ219_SWAMP_VISITED) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART11_MOB_118")) <= (0x1b58)) {
            SQ219_SWAMP_VISITED = TRUE;
            PRINTD("Marvin to se normalnie widzia? bagno");
        };
    };
    if ((BERMARFARM_SAWMILL) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "PART4_MOB_57")) <= (0x1388)) {
            BERMARFARM_SAWMILL = TRUE;
            PRINTD("Marvin zauwa?y? zniszczony m?yn");
        };
    };
    if ((MARVIN_FOUNDVRAZKA) == (2)) {
        if ((MARVIN_FOUNDVRAZKA_DAY) <= ((WLD_GETDAY()) - (1))) {
            MARVIN_FOUNDVRAZKA = 3;
            SECRET_REMOVEVRAZKA();
        };
    };
    if ((PART8CARRIER_STATUS) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, BAU_6506_CARRIER)) >= (0x4844)) {
            PRINTD("Przewodnik wraca do domu");
            PART8CARRIER_STATUS = 0;
            WLD_SENDTRIGGER("KM_FASTTRAEVEL_PART10_BOAT");
            WLD_SENDTRIGGER("KM_FASTTRAEVEL_PART8_BOAT");
            B_STARTOTHERROUTINE(BAU_6506_CARRIER, START);
        };
    };
    if ((PART1CARRIER_STATUS) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, BAU_6373_DUNCAN)) >= (0x4844)) {
            PRINTD("Przewodnik wraca do domu");
            PART1CARRIER_STATUS = 0;
            B_STARTOTHERROUTINE(BAU_6373_DUNCAN, START);
            WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_01");
            WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_02");
        };
    };
    if ((SQ103_RUPERTWILLDIE) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, NONE_100007_RUPERT)) >= (0xbb8)) {
            if (!(NPC_ISDEAD(NONE_100007_RUPERT))) {
                SQ103_KILLRUPERT();
                SQ103_RUPERTWILLDIE = 2;
            };
        };
    };
    if ((PART7_REMOVERENEGADES) == (FALSE)) {
        if (((!(HLP_ISVALIDNPC(MIL_6270_JERRAN))) || (NPC_ISDEAD(MIL_6270_JERRAN))) || ((!(HLP_ISVALIDNPC(MIL_6271_RENEGADE))) || (NPC_ISDEAD(MIL_6271_RENEGADE)))) {
            if ((NPC_GETDISTTOWP(HERO, "PART7_RENEGADE_01")) >= (0xbb8)) {
                PART7_REMOVERENEGADES = TRUE;
                PRINTD("Renegaci zmienili gildi?");
                if (HLP_ISVALIDNPC(MIL_6270_JERRAN)) {
                    MIL_6270_JERRAN.AIVAR[61] = FALSE;
                    B_IMMEDIATEATTACKPLAYER(MIL_6270_JERRAN, AR_KILL);
                };
                if (HLP_ISVALIDNPC(MIL_6271_RENEGADE)) {
                    MIL_6271_RENEGADE.AIVAR[61] = FALSE;
                    B_IMMEDIATEATTACKPLAYER(MIL_6271_RENEGADE, AR_KILL);
                };
            };
        };
    };
    if ((SQ411_MARVINGOTKEYS) == (TRUE)) {
        if ((OURHOME_INSIDEFIRSTTIME_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_HEROHOUSE_04")) <= (500)) {
                OURHOME_INSIDEFIRSTTIME_LOGENTRY = TRUE;
                LOG_CREATETOPIC(TOPIC_OURHOUME, LOG_NOTE);
                B_LOGENTRY(TOPIC_OURHOUME, LOG_OURHOME_INHOUSE);
            };
        } else if ((OURHOME_INSIDEFIRSTTIME_LOGENTRY) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PARTM5_HEROHOUSE_TELEPORT")) <= (350)) {
                OURHOME_INSIDEFIRSTTIME_LOGENTRY = 2;
                LOG_CREATETOPIC(TOPIC_OURHOUME, LOG_NOTE);
                B_LOGENTRY(TOPIC_OURHOUME, LOG_OURHOME_TELEPORT);
            };
        };
    };
    if ((DETLOWDIED) == (FALSE)) {
        if (NPC_ISDEAD(VLK_3015_DETLOW)) {
            DETLOWDIED = TRUE;
            PRINTD("Detlow nie ?yje!");
        };
    };
    if (((DETLOWDIED) == (TRUE)) || ((LOG_GETSTATUS(MIS_SQ204)) == (LOG_SUCCESS))) {
        if ((KAPITEL) >= (3)) {
            if ((SPAWNMONSTERS_KAPITEL3_AFTERDETLOWQUEST) == (FALSE)) {
                SPAWNMONSTERS_KAPITEL3_AFTERDETLOWQUEST = TRUE;
                WLD_INSERTNPC(0xdf9e, "PART11_BANDIT_01");
                WLD_INSERTNPC(0xdfa0, "PART11_BANDIT_02");
                WLD_INSERTNPC(0xdfa2, "PART11_BANDIT_03");
                if ((NPC_ISDEAD(NONE_13376_TRAVELER)) == (FALSE)) {
                    B_KILLNPC(0xdfa7);
                };
                WLD_INSERTNPC(0xc76a, "FP_ROAM_PART11_03");
                WLD_INSERTNPC(0xc76a, "FP_ROAM_PART11_04");
                WLD_INSERTNPC(0xc3dc, "FP_ROAM_PART11_11");
                WLD_INSERTNPC(0xc3dc, "FP_ROAM_PART11_07");
                WLD_INSERTNPC(0xc3dc, "FP_ROAM_PART11_09");
                WLD_INSERTNPC(0xc4a0, "FP_ROAM_PART11_207");
                WLD_INSERTNPC(0xc4a0, "FP_ROAM_PART11_206");
            };
        };
    };
    if ((CITYGUIDE_PLACE_GERSTAND) == (1)) {
        if (((((((((NPC_GETDISTTOWP(SLD_10096_GUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_10096_GUIDE, 0xf09f)) == (FALSE))) || (((NPC_GETDISTTOWP(SLD_11062_GUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_11062_GUIDE, 0xf09f)) == (FALSE)))) || (((NPC_GETDISTTOWP(SLD_10097_GUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_10097_GUIDE, 0xf09f)) == (FALSE)))) || (((NPC_GETDISTTOWP(SLD_11065_RYCHU, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_11065_RYCHU, 0xf09f)) == (FALSE)))) || (((NPC_GETDISTTOWP(SLD_11064_GUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_11064_GUIDE, 0xf09f)) == (FALSE)))) || (((NPC_GETDISTTOWP(SLD_11063_GUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_11063_GUIDE, 0xf09f)) == (FALSE)))) || (((NPC_GETDISTTOWP(SLD_11067_DRUNKENGUIDE, PARTM4_PATH_54)) <= (500)) && ((NPC_ISINSTATE(SLD_11067_DRUNKENGUIDE, 0xf09f)) == (FALSE)))) {
            if ((NPC_GETDISTTOWP(SLD_10096_GUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_10096_GUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_10096_GUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_11062_GUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_11062_GUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_11062_GUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_10097_GUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_10097_GUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_10097_GUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_11064_GUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_11064_GUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_11064_GUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_11063_GUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_11063_GUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_11063_GUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_11067_DRUNKENGUIDE, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_11067_DRUNKENGUIDE, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_11067_DRUNKENGUIDE);
            } else if ((NPC_GETDISTTOWP(SLD_11065_RYCHU, PARTM4_PATH_54)) <= (500)) {
                B_STARTOTHERROUTINE(SLD_11065_RYCHU, "CITYGUIDE_GERSTAND_V2");
                NPC_REFRESH(SLD_11065_RYCHU);
            };
            CITYGUIDE_PLACE_GERSTAND = 2;
        };
    };
    if ((Q406_MANHUNTERSSILBACH) == (2)) {
        if (((((NPC_GETDISTTOWP(HERO, "VILLAGE_PATH_205")) >= (0x2d82)) || ((NPC_GETDISTTOWP(HERO, "PART13_PATH_08")) < (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "PART9_PATH_46")) < (0x4b0))) || ((NPC_GETDISTTOWP(HERO, "PART15_PATH_340")) < (0x4b0))) {
            Q406_13415_MANHUNTER();
            PRINTD("Atak ludzi Volkera!");
            Q406_MANHUNTERSSILBACH = 3;
        };
    };
    if (((REGRETISTHEONLYTHINGYOUWILLFIND_CHECK) == (TRUE)) && ((ARG_05_CHECK) == (FALSE))) {
        if (((NPC_GETDISTTOWP(SUMMONED_DEMON, "TELEPORT_LURKER")) <= (300)) && (NPC_ISDEAD(SUMMONED_DEMON))) {
            ARG_05_CHECK = TRUE;
            WLD_SENDTRIGGER("ARG_SECRET05");
            CREATEINVITEMS(SUMMONED_DEMON, 0x9c51, 1);
        };
    };
    if ((VOLKERREPUTATION) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, VLK_915_TOMAS)) >= (0xbb8)) {
            VOLKERREPUTATION = 2;
            B_STARTOTHERROUTINE(VLK_915_TOMAS, START);
            NPC_REFRESH(VLK_915_TOMAS);
            TELEPORTNPCTOWP(0xcd35, VLK_915_TOMAS.WP);
        };
    };
}

var int EVENTSMANAGER_OTHERS.PART7_REMOVERENEGADES = 0;
var int EVENTSMANAGER_OTHERS.OURHOME_INSIDEFIRSTTIME_LOGENTRY = 0;
var int EVENTSMANAGER_OTHERS.SPAWNMONSTERS_KAPITEL3_AFTERDETLOWQUEST = 0;
var int EVENTSMANAGER_OTHERS.ARG_05_CHECK = 0;
