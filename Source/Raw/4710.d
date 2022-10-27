func void EVENTSMANAGER_Q404_SILVERMINE() {
    if ((LOG_GETSTATUS(MIS_Q404)) != (LOG_RUNNING)) {
        return;
    };
    if ((((NPC_GETDISTTOWP(HERO, "SILVERMINE_PATH_95")) <= (400)) && (NPC_KNOWSINFO(HERO, 0x1422d))) && ((Q404_GAURBODY_LOGENTRY) == (FALSE))) {
        Q404_GAURBODY_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_Q404, LOG_Q404_FOUNDGAURBODY);
    };
    if (((NPC_GETDISTTOWP(HERO, "SILVERMINE_BADROUTE_01")) <= (1000)) && ((Q404_MINEBADROUTE_01) == (FALSE))) {
        Q404_MINEBADROUTE_01 = TRUE;
        Q404_MINEBADROUTE_DEADPEOPLE = (Q404_MINEBADROUTE_DEADPEOPLE) + (1);
        PRINTD(CS2("Cz³owiek Jona umar³! ", INTTOSTRING(Q404_MINEBADROUTE_DEADPEOPLE)));
        if (HLP_ISVALIDNPC(DJG_10021_WOLFSON)) {
            B_KILLNPC(0xe6d3);
        };
        WLD_INSERTNPC(0xc5d4, "SILVERMINE_JONHELPER_01");
    };
    if (((NPC_GETDISTTOWP(HERO, "SILVERMINE_BADROUTE_02")) <= (1000)) && ((Q404_MINEBADROUTE_02) == (FALSE))) {
        Q404_MINEBADROUTE_02 = TRUE;
        Q404_MINEBADROUTE_DEADPEOPLE = (Q404_MINEBADROUTE_DEADPEOPLE) + (1);
        PRINTD(CS2("Cz³owiek Jona umar³! ", INTTOSTRING(Q404_MINEBADROUTE_DEADPEOPLE)));
        if (HLP_ISVALIDNPC(DJG_10022_WOLFSON)) {
            B_KILLNPC(0xe6d6);
        };
        WLD_INSERTNPC(0xc5d4, "SILVERMINE_JONHELPER_02");
    };
    if (((NPC_GETDISTTOWP(HERO, "SILVERMINE_BADROUTE_03")) <= (1000)) && ((Q404_MINEBADROUTE_03) == (FALSE))) {
        Q404_MINEBADROUTE_03 = TRUE;
        Q404_MINEBADROUTE_DEADPEOPLE = (Q404_MINEBADROUTE_DEADPEOPLE) + (1);
        PRINTD(CS2("Cz³owiek Jona umar³! ", INTTOSTRING(Q404_MINEBADROUTE_DEADPEOPLE)));
        if (HLP_ISVALIDNPC(DJG_10023_WOLFSON)) {
            B_KILLNPC(0xe6d9);
        };
        WLD_INSERTNPC(0xc5d4, "SILVERMINE_JONHELPER_03");
    };
    if ((Q404_STARTBOSSFIGHT) == (FALSE)) {
        if (NPC_KNOWSINFO(HERO, 0x15252)) {
            if ((NPC_GETDISTTOWP(HERO, "SILVERMINE_PATH_21")) <= (1000)) {
                if (HLP_ISVALIDNPC(MINECRAWLERQUEEN)) {
                    MUSIC_OVERRIDETRACK(0x55b9);
                    Q404_STARTBOSSFIGHT = TRUE;
                    START_BOSSUI(MINECRAWLERQUEEN, 1);
                };
            };
        };
    };
    if ((Q404_BOSSFIGHT_EVENTEFFECT) == (0)) {
        if ((MINECRAWLERQUEEN.ATTRIBUTE[0]) <= (((MINECRAWLERQUEEN.ATTRIBUTE[1]) / (4)) * (3))) {
            PRINTD("Efekt - 1");
            Q404_BOSSFIGHT_EVENTEFFECT = 1;
            Q404_BOSSFIGHT_STARTEVENT();
            if ((NPC_ISDEAD(DJG_10021_WOLFSON)) == (FALSE)) {
                B_KILLNPC(0xe6d3);
            };
            WLD_INSERTNPC(0xc5dd, "SILVERMINE_PATH_21");
            WLD_INSERTNPC(0xc57e, "SILVERMINE_QUEEN_LARVA_01");
            WLD_INSERTNPC(0xc580, "SILVERMINE_QUEEN_LARVA_02");
        };
    };
    if ((Q404_BOSSFIGHT_EVENTEFFECT) == (1)) {
        if ((MINECRAWLERQUEEN.ATTRIBUTE[0]) <= ((MINECRAWLERQUEEN.ATTRIBUTE[1]) / (2))) {
            PRINTD("Efekt - 2");
            Q404_BOSSFIGHT_EVENTEFFECT = 2;
            Q404_BOSSFIGHT_STARTEVENT();
            if ((NPC_ISDEAD(DJG_10022_WOLFSON)) == (FALSE)) {
                B_KILLNPC(0xe6d6);
            };
            WLD_INSERTNPC(0xc5df, "SILVERMINE_PATH_21");
            WLD_INSERTNPC(0xc582, "SILVERMINE_QUEEN_LARVA_01");
            WLD_INSERTNPC(0xc584, "SILVERMINE_QUEEN_LARVA_02");
        };
    };
    if ((Q404_BOSSFIGHT_EVENTEFFECT) == (2)) {
        if ((MINECRAWLERQUEEN.ATTRIBUTE[0]) <= ((MINECRAWLERQUEEN.ATTRIBUTE[1]) / (3))) {
            PRINTD("Efekt - 3");
            Q404_BOSSFIGHT_EVENTEFFECT = 3;
            Q404_BOSSFIGHT_STARTEVENT();
            if ((NPC_ISDEAD(DJG_10023_WOLFSON)) == (FALSE)) {
                B_KILLNPC(0xe6d9);
            };
            WLD_INSERTNPC(0xc5e1, "SILVERMINE_PATH_21");
            WLD_INSERTNPC(0xc586, "SILVERMINE_QUEEN_LARVA_01");
            WLD_INSERTNPC(0xc588, "SILVERMINE_QUEEN_LARVA_02");
        };
    };
    if ((Q404_BOSSFIGHT_EVENTEFFECT) == (3)) {
        if (NPC_ISDEAD(MINECRAWLERQUEEN)) {
            MUSIC_DISABLEOVERRIDE();
            PRINTD("Dead");
            Q404_BOSSFIGHT_EVENTEFFECT = 4;
            Q404_BOSSFIGHT_STARTEVENT();
            MDL_APPLYOVERLAYMDS(DJG_10020_JON, "HumanS_Wounded.mds");
            if ((NPC_ISDEAD(MINECRAWLERWARRIOR_Q404_01)) == (FALSE)) {
                B_KILLNPC(0xc5dd);
            };
            if ((NPC_ISDEAD(MINECRAWLERWARRIOR_Q404_02)) == (FALSE)) {
                B_KILLNPC(0xc5df);
            };
            if ((NPC_ISDEAD(MINECRAWLERWARRIOR_Q404_03)) == (FALSE)) {
                B_KILLNPC(0xc5e1);
            };
            if ((NPC_ISDEAD(LARVA_Q404_01)) == (FALSE)) {
                B_KILLNPC(0xc57e);
            };
            if ((NPC_ISDEAD(LARVA_Q404_02)) == (FALSE)) {
                B_KILLNPC(0xc580);
            };
            if ((NPC_ISDEAD(LARVA_Q404_03)) == (FALSE)) {
                B_KILLNPC(0xc582);
            };
            if ((NPC_ISDEAD(LARVA_Q404_04)) == (FALSE)) {
                B_KILLNPC(0xc584);
            };
            if ((NPC_ISDEAD(LARVA_Q404_05)) == (FALSE)) {
                B_KILLNPC(0xc586);
            };
            if ((NPC_ISDEAD(LARVA_Q404_06)) == (FALSE)) {
                B_KILLNPC(0xc588);
            };
        };
    };
    if ((Q404_JONSTATUS) == (2)) {
        if (((NPC_GETDISTTOWP(HERO, "SILVERMINE_PATH_06")) <= (1000)) || ((NPC_GETDISTTOWP(DJG_10020_JON, "SILVERMINE_PATH_06")) <= (1000))) {
            if ((NPC_ISDEAD(DJG_10020_JON)) == (FALSE)) {
                SND_PLAY("SVM_14_DEAD");
                B_KILLNPC(0xe6cd);
                Q404_JONSTATUS = 3;
                B_LOGENTRY(TOPIC_Q404, LOG_Q404_JON_JONDIED);
            };
        };
    };
    if ((Q404_JONSTATUS) == (3)) {
        if ((Q404_JONCOMMENT) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, DJG_10020_JON)) <= (300)) {
                Q404_JONCOMMENT = TRUE;
                B_SAY(HERO, HERO, "$MARVIN_6ChapterBody");
                B_GIVEPLAYERXP(XP_Q404_HELPEDJON);
            };
        };
    };
    if ((Q404_FIGHTWITHJON) == (1)) {
        if (NPC_ISINSTATE(DJG_10020_JON, 0xf0a3)) {
            PRINTD("Odœwie¿ attitude!");
            Q404_FIGHTWITHJON = 2;
            NPC_SETATTITUDE(DJG_10020_JON, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(DJG_10020_JON, ATT_NEUTRAL);
            DJG_10020_JON.AIVAR[1] = CRIME_NONE;
            DJG_10020_JON.AIVAR[0] = FIGHT_LOST;
        };
    };
}

var int EVENTSMANAGER_Q404_SILVERMINE.Q404_GAURBODY_LOGENTRY = 0;
var int EVENTSMANAGER_Q404_SILVERMINE.Q404_STARTBOSSFIGHT = 0;
var int EVENTSMANAGER_Q404_SILVERMINE.Q404_BOSSFIGHT_EVENTEFFECT = 0;
var int EVENTSMANAGER_Q404_SILVERMINE.Q404_JONCOMMENT = 0;
