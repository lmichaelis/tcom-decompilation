func void EVENTSMANAGER_KQ407() {
    var int KQ407_ORCLEADER_SECONDROUNDDONE_LOGENTRY;
    var int KQ407_ORCLEADER_FIRSTROUNDDONE_LOGENTRY;
    var int KQ407_SILBACHLOGENTRY;
    var int SQ414_CHECKSTATUS;
    if ((LOG_GETSTATUS(MIS_KQ407)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ414_CHECKSTATUS) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ414)) == (LOG_RUNNING)) {
            SQ414_CHECKSTATUS = TRUE;
            B_LOGENTRY(TOPIC_SQ414, LOG_KQ407_ABOUTSQ414);
        };
    };
    if ((KQ407_CHANGEOLIVERRTN) == (1)) {
        if ((NPC_GETDISTTOWP(MIL_13643_OLIVER, "PARTM3_PATH_167")) <= (500)) {
            PRINTD("Zmiana RTN");
            KQ407_CHANGEOLIVERRTN = 2;
            B_STARTOTHERROUTINE(MIL_13643_OLIVER, "KQ407_GUIDE_01");
            NPC_REFRESH(MIL_13643_OLIVER);
        };
    };
    if ((KQ407_OLIVERUSELEVER) == (0)) {
        if (((NPC_KNOWSINFO(HERO, 65899)) && ((NPC_GETDISTTOWP(MIL_13643_OLIVER, "PARTM3_PRISON_06")) <= (500))) && ((NPC_ISINSTATE(MIL_13643_OLIVER, 61599)) == (FALSE))) {
            KQ407_OLIVERUSELEVER = 1;
            PRINTD("Biegnie do dŸwigni");
            NPC_CLEARAIQUEUE(MIL_13643_OLIVER);
            B_CLEARPERCEPTIONS(MIL_13643_OLIVER);
            AI_SETWALKMODE(MIL_13643_OLIVER, NPC_RUN);
            AI_GOTOWP(MIL_13643_OLIVER, "PARTM3_PRISON_06");
            AI_USEMOB(MIL_13643_OLIVER, NPC_GETDETECTEDMOB(MIL_13643_OLIVER), -(1));
            AI_STANDUP(MIL_13643_OLIVER);
        };
    };
    if ((KQ407_OLIVERUSELEVER) == (2)) {
        KQ407_OLIVERUSELEVER = 3;
        PRINTD("Restet AI");
        B_STARTOTHERROUTINE(MIL_13643_OLIVER, "KQ407_GUIDE_02");
        NPC_REFRESH(MIL_13643_OLIVER);
    };
    if ((KQ407_GRAYSONPLANCUTSCENE) == (3)) {
        if ((KQ407_SILBACHLOGENTRY) == (FALSE)) {
            if ((NPC_KNOWSINFO(HERO, 70589)) && ((NPC_KNOWSINFO(HERO, 66624)) == (FALSE))) {
                if (((NPC_GETDISTTOWP(HERO, "VILLAGE_CHAPEL_02")) <= (2500)) || ((NPC_GETDISTTOWP(HERO, "VILLAGE_FASTTRAVEL_HERO")) <= (2500))) {
                    if ((KQ407_ORCLEADER_PART13_DEAD) == (FALSE)) {
                        KQ407_SILBACHLOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_KQ407, LOG_KQ407_SILBACH);
                    };
                };
            };
        };
        if ((KQ407_CHANGEWEIGARRTN) == (1)) {
            if (((((NPC_GETDISTTOWP(HERO, "PART13_PATH2_11")) <= (1000)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PART13_KQ407_WEIGAR_STAND_03")) <= (1000))) && ((NPC_GETDISTTOWP(MIL_13659_MILITIA, "PART13_KQ407_WEIGAR_STAND_03")) <= (1000))) && ((NPC_GETDISTTOWP(MIL_13660_MILITIA, "PART13_KQ407_WEIGAR_STAND_03")) <= (1000))) {
                if ((((NPC_ISINSTATE(MIL_4016_WEGAR, 61599)) == (FALSE)) && ((NPC_ISINSTATE(MIL_13659_MILITIA, 61599)) == (FALSE))) && ((NPC_ISINSTATE(MIL_13660_MILITIA, 61599)) == (FALSE))) {
                    KQ407_CHANGEWEIGARRTN = 2;
                    B_STARTOTHERROUTINE(MIL_13659_MILITIA, "KQ407_ORCFIGHT");
                    NPC_REFRESH(MIL_13659_MILITIA);
                    B_STARTOTHERROUTINE(MIL_13660_MILITIA, "KQ407_ORCFIGHT");
                    NPC_REFRESH(MIL_13660_MILITIA);
                    B_STARTOTHERROUTINE(MIL_4016_WEGAR, "KQ407_ORCFIGHT");
                    KQ407_WEIGAR_RTNCHECK = 3;
                    NPC_REFRESH(MIL_4016_WEGAR);
                };
            };
        };
        if ((KQ407_ORCLEADER_FIRSTROUNDDONE_LOGENTRY) == (FALSE)) {
            if (((KQ407_ORCLEADER_PART13_DEAD) == (TRUE)) && ((KQ407_ORCLEADER_PART17_DEAD) == (TRUE))) {
                KQ407_ORCLEADER_FIRSTROUNDDONE_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_KQ407, LOG_KQ407_FIRSTROUNDDONE);
            };
        };
        if ((KQ407_ORCLEADER_SECONDROUNDDONE_LOGENTRY) == (FALSE)) {
            if (((KQ407_ORCLEADER_PART15_DEAD) == (TRUE)) && ((KQ407_ORCLEADER_PART1_DEAD) == (TRUE))) {
                KQ407_ORCLEADER_SECONDROUNDDONE_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_KQ407, LOG_KQ407_SECONDROUNDDONE);
            };
        };
        if ((KQ407_FIGHTLIGHTHOUSE) == (1)) {
            if (NPC_ISDEAD(ORCLEADER_PART1)) {
                KQ407_FIGHTLIGHTHOUSE = 2;
                PRINTD("ORK Z LATARNI NIE ¯YJE");
            };
        };
        if ((KQ407_PART1_REMOVEGAROS) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, SLD_1017_GAROS)) >= (18500)) {
                PRINTD("Garos wraca do domu");
                KQ407_PART1_REMOVEGAROS = 2;
                B_STARTOTHERROUTINE(SLD_1017_GAROS, START);
                NPC_REFRESH(SLD_1017_GAROS);
                TELEPORTNPCTOWP(52041, SLD_1017_GAROS.WP);
                if (HLP_ISVALIDNPC(SLD_13661_ARAXOS)) {
                    if ((NPC_ISDEAD(SLD_13661_ARAXOS)) == (FALSE)) {
                        B_REMOVENPC(60251);
                    };
                };
                if (HLP_ISVALIDNPC(SLD_13662_ARAXOS)) {
                    if ((NPC_ISDEAD(SLD_13662_ARAXOS)) == (FALSE)) {
                        B_REMOVENPC(60255);
                    };
                };
                if ((KQ407_PART1_BOATSTATUS) == (1)) {
                    KQ407_PART1_BOATSTATUS = 2;
                    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_01");
                    WLD_SENDTRIGGER("PART1_FASTTRAVEL_BOAT_02");
                };
            };
        };
    };
}

