func void EVENTSMANAGER_Q501() {
    var int Q501_GOTCHESTPLANT_LOGENTRY;
    var int Q501_GOTALMEBIC_LOGENTRY;
    var int Q501_STEFANRUNAWAY;
    var int Q501_GOODBOOK_LITERATURE;
    var int Q501_HISTORYBOOKLOST;
    var int Q501_GOODBOOK_MAGIC;
    var int Q501_GOODBOOK_ALLDONE;
    var int Q501_GOODBOOK_FAUNA;
    var int Q501_GOODBOOK_HISTORY;
    var int Q501_GOODBOOK_ASTRONOMY;
    var int Q501_GOODBOOK_RELIGION;
    var int Q501_GOTDALBERTRECEPIE;
    if ((LOG_GETSTATUS(MIS_Q501)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q501_GOTDALBERTRECEPIE) == (FALSE)) {
        if ((MOB_HASITEMS("KM_CHEST_RIEROL", 37513)) == (FALSE)) {
            Q501_GOTDALBERTRECEPIE = TRUE;
            Q501_GOTDALBERTRECEPIE_PREPARENPC();
        };
    };
    if ((Q501_MARVINGOTOSLEEP) == (4)) {
        if ((Q501_GOODBOOK_RELIGION) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 37517)) == (TRUE)) {
                Q501_GOODBOOK_RELIGION = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_ASTRONOMY) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 37521)) == (TRUE)) {
                Q501_GOODBOOK_ASTRONOMY = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_HISTORY) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_HISTORY", 37530)) == (TRUE)) {
                Q501_GOODBOOK_HISTORY = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_FAUNA) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 37520)) == (TRUE)) {
                Q501_GOODBOOK_FAUNA = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_MAGIC) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 37527)) == (TRUE)) {
                Q501_GOODBOOK_MAGIC = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_LITERATURE) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 37524)) == (TRUE)) {
                Q501_GOODBOOK_LITERATURE = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_HISTORYBOOKLOST) == (FALSE)) {
            if ((((((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 37517)) == (TRUE)) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 37521)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 37520)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 37527)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 37524)) == (TRUE))) {
                Q501_HISTORYBOOKLOST = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_HISTORYBOOKLOST);
            };
        };
        if ((Q501_GOODBOOK_ALLDONE) == (FALSE)) {
            if (((((((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 37517)) == (TRUE)) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 37521)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_HISTORY", 37530)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 37520)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 37527)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 37524)) == (TRUE))) {
                Q501_GOODBOOK_ALLDONE = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_ALLBOOKSDONE);
            };
        };
        if ((Q501_CONTESTCUTSCENESTATUS) == (3)) {
            if ((Q501_SLOWEDDOWNNOVIZE) == (FALSE)) {
                if ((NOV_201_NOVIZE.AIVAR[17]) == (TRUE)) {
                    Q501_SLOWEDDOWNNOVIZE = TRUE;
                    B_LOGENTRY(TOPIC_Q501, LOG_Q501_NOVIZESLOWEDDOWN);
                };
            } else if ((Q501_SLOWEDDOWNNOVIZE) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, "PART8_GRAPEPLUNDER_01")) >= (3500)) {
                    Q501_SLOWEDDOWNNOVIZE = 2;
                    Q501_AFTERCONTEST();
                };
            };
        };
        if ((Q501_SCARENOVIZEINKITCHEN) == (FALSE)) {
            if ((RAT_Q501.AIVAR[42]) >= (2)) {
                Q501_SCARENOVIZEINKITCHEN = TRUE;
                Q501_STEFANRUNAWAY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_STEFAN_FLEE);
                B_STARTOTHERROUTINE(NOV_207_STEFAN, "Q501_FLEE");
                NPC_REFRESH(NOV_207_STEFAN);
                RAT_Q501.FLAGS = 0;
                RAT_Q501.GUILD = GIL_GIANT_RAT;
                NPC_SETTRUEGUILD(RAT_Q501, GIL_GIANT_RAT);
                B_IMMEDIATEATTACKPLAYER(RAT_Q501, AR_KILL);
                NPC_SETTRUEGUILD(HERO, HERO.GUILD);
            };
        };
        if ((Q501_STEFANRUNAWAY) == (TRUE)) {
            if ((NPC_GETDISTTONPC(HERO, NOV_207_STEFAN)) >= (900)) {
                PRINTD("Stefan polecia³ do tota");
                Q501_STEFANRUNAWAY = 2;
                B_STARTOTHERROUTINE(NOV_207_STEFAN, "Q501_FLEE");
                NPC_REFRESH(NOV_207_STEFAN);
                TELEPORTNPCTOWP(56752, NOV_207_STEFAN.WP);
            };
        };
        if ((Q501_INDARKROOM_LOGENTRY) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART8_UNDERGROUND_STORAGE_03")) <= (500)) {
                Q501_INDARKROOM_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_DARKROOM);
            };
        } else if ((Q501_LIGHTINROOM) == (FALSE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART8_UNDERGROUND_STORAGE_03")) <= (500)) {
                if (ISSPELLACTIVE(HERO, SPL_LIGHT)) {
                    Q501_LIGHTINROOM = TRUE;
                    MOB_CHANGEFOCUSNAME("Q501_SACK", "MOBNAME_Q501_SEARCHSACKS");
                    B_LOGENTRY(TOPIC_Q501, LOG_Q501_LIGHTINDARKROOM);
                };
            };
        };
        if ((Q501_HEROCHANGEDINTOMEATBUG) == (FALSE)) {
            if ((HERO.GUILD) == (GIL_MEATBUG)) {
                Q501_HEROCHANGEDINTOMEATBUG = TRUE;
                Q501_CHANGEALMEBICDOOR();
            };
        };
        if ((Q501_GOTALMEBIC_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37535)) >= (1)) {
                Q501_GOTALMEBIC_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_GOTALMEBIC);
                Q501_COUNTSTUFF();
            };
        };
    };
    if ((Q501_MARVINGOTOSLEEP) == (6)) {
        if ((Q501_GOTCHESTPLANT_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37536)) >= (1)) {
                Q501_GOTCHESTPLANT_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_GOTCHESTPLANT);
            };
        };
        if ((RESERVED_VAR_INT_14) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37537)) >= (1)) {
                RESERVED_VAR_INT_14 = TRUE;
                B_LOGENTRY(TOPIC_Q501, RESERVED_CONST_STRING_63);
            };
        };
    };
}

