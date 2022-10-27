func void EVENTSMANAGER_Q501() {
    if ((LOG_GETSTATUS(MIS_Q501)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q501_GOTDALBERTRECEPIE) == (FALSE)) {
        if ((MOB_HASITEMS("KM_CHEST_RIEROL", 0x9289)) == (FALSE)) {
            Q501_GOTDALBERTRECEPIE = TRUE;
            Q501_GOTDALBERTRECEPIE_PREPARENPC();
        };
    };
    if ((Q501_MARVINGOTOSLEEP) == (4)) {
        if ((Q501_GOODBOOK_RELIGION) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 0x928d)) == (TRUE)) {
                Q501_GOODBOOK_RELIGION = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_ASTRONOMY) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 0x9291)) == (TRUE)) {
                Q501_GOODBOOK_ASTRONOMY = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_HISTORY) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_HISTORY", 0x929a)) == (TRUE)) {
                Q501_GOODBOOK_HISTORY = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_FAUNA) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 0x9290)) == (TRUE)) {
                Q501_GOODBOOK_FAUNA = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_MAGIC) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 0x9297)) == (TRUE)) {
                Q501_GOODBOOK_MAGIC = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_GOODBOOK_LITERATURE) == (FALSE)) {
            if ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 0x9294)) == (TRUE)) {
                Q501_GOODBOOK_LITERATURE = TRUE;
                Q501_BOOKINGOODSHELF();
            };
        };
        if ((Q501_HISTORYBOOKLOST) == (FALSE)) {
            if ((((((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 0x928d)) == (TRUE)) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 0x9291)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 0x9290)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 0x9297)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 0x9294)) == (TRUE))) {
                Q501_HISTORYBOOKLOST = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_HISTORYBOOKLOST);
            };
        };
        if ((Q501_GOODBOOK_ALLDONE) == (FALSE)) {
            if (((((((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 0x928d)) == (TRUE)) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 0x9291)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_HISTORY", 0x929a)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 0x9290)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 0x9297)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 0x9294)) == (TRUE))) {
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
                if ((NPC_GETDISTTOWP(HERO, "PART8_GRAPEPLUNDER_01")) >= (0xdac)) {
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
                TELEPORTNPCTOWP(0xddb0, NOV_207_STEFAN.WP);
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
            if ((NPC_HASITEMS(HERO, 0x929f)) >= (1)) {
                Q501_GOTALMEBIC_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_GOTALMEBIC);
                Q501_COUNTSTUFF();
            };
        };
    };
    if ((Q501_MARVINGOTOSLEEP) == (6)) {
        if ((Q501_GOTCHESTPLANT_LOGENTRY) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x92a0)) >= (1)) {
                Q501_GOTCHESTPLANT_LOGENTRY = TRUE;
                B_LOGENTRY(TOPIC_Q501, LOG_Q501_GOTCHESTPLANT);
            };
        };
        if ((RESERVED_VAR_INT_14) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 0x92a1)) >= (1)) {
                RESERVED_VAR_INT_14 = TRUE;
                B_LOGENTRY(TOPIC_Q501, RESERVED_CONST_STRING_63);
            };
        };
    };
}

var int EVENTSMANAGER_Q501.Q501_GOTDALBERTRECEPIE = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_RELIGION = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_ASTRONOMY = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_HISTORY = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_FAUNA = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_MAGIC = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_LITERATURE = 0;
var int EVENTSMANAGER_Q501.Q501_GOODBOOK_ALLDONE = 0;
var int EVENTSMANAGER_Q501.Q501_HISTORYBOOKLOST = 0;
var int EVENTSMANAGER_Q501.Q501_STEFANRUNAWAY = 0;
var int EVENTSMANAGER_Q501.Q501_GOTALMEBIC_LOGENTRY = 0;
var int EVENTSMANAGER_Q501.Q501_GOTCHESTPLANT_LOGENTRY = 0;
