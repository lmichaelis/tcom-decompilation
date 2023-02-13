var int Q102_CAVEDISTANCELIMITWARN;
var int Q102_CAVEDISTANCELIMITTELEPORTED;
func void Q102_CAVEDISTANCELIMIT_TELEPORT() {
    TELEPORTNPCTOWP(1819, "PART_13_NAV_84");
    FF_APPLYONCEEXT(93966, 1000, 3);
    Q102_CAVEDISTANCELIMITWARN = FALSE;
    FADESCREENFROMBLACK(1);
}

func void Q102_CAVEDISTANCELIMIT_REFRESH() {
    var int Q102_CAVEDISTANCELIMIT_REFRESH_COUNT;
    Q102_CAVEDISTANCELIMIT_REFRESH_COUNT = (Q102_CAVEDISTANCELIMIT_REFRESH_COUNT) + (1);
    if ((Q102_CAVEDISTANCELIMIT_REFRESH_COUNT) == (3)) {
        if ((NPC_ISINSTATE(NONE_5_FABIO, 61599)) == (FALSE)) {
            PRINTD("Refresh Fabio");
            NPC_REFRESH(NONE_5_FABIO);
        };
        if ((NPC_ISINSTATE(NONE_100012_KAZEEM, 61599)) == (FALSE)) {
            PRINTD("Refresh Kazeem");
            NPC_REFRESH(NONE_100012_KAZEEM);
        };
        Q102_CAVEDISTANCELIMIT_REFRESH_COUNT = 0;
    };
}

func void EVENTSMANAGER_Q102_CAVEDISTANCELIMIT() {
    if ((Q102_CAVEDISTANCELIMIT) && ((HERO.AIVAR[4]) == (FALSE))) {
        if (((NPC_GETDISTTOWP(HERO, "PART_13_FABIO_CAVE_01")) > (5000)) && ((Q102_CAVEDISTANCELIMITWARN) == (FALSE))) {
            Q102_CAVEDISTANCELIMITTELEPORTED = FALSE;
            Q102_CAVEDISTANCELIMITWARN = TRUE;
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_CaveTooFar_15_00");
        };
        if (((NPC_GETDISTTOWP(HERO, "PART_13_FABIO_CAVE_01")) > (5500)) && ((Q102_CAVEDISTANCELIMITTELEPORTED) == (FALSE))) {
            Q102_CAVEDISTANCELIMITTELEPORTED = TRUE;
            FADESCREENTOBLACKF(1, 93965, 1000);
        };
    };
}

var int Q102_JORNDISTANCELIMITWARN;
func void Q102_JORNDISTANCELIMIT_TELEPORT() {
    Q102_JORNDISTANCELIMITWARN = 0;
    if ((Q102_JORNCHECKRTN) == (1)) {
        TELEPORTNPCTOWP(1819, "PART_13_START");
        TELEPORTNPCTOWP(51439, "PART_13_JORN_01");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_JORN_01", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (2)) {
        TELEPORTNPCTOWP(1819, "PART_13_NAV_02");
        TELEPORTNPCTOWP(51439, "PART_13_NAV_03");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_NAV_03", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (3)) {
        TELEPORTNPCTOWP(1819, "PART_13_NAV_10");
        TELEPORTNPCTOWP(51439, "PART_13_NAV_11");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_NAV_11", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (4)) {
        TELEPORTNPCTOWP(1819, "PART_13_NAV_50");
        TELEPORTNPCTOWP(51439, "PART_13_JORN_RIVER_01");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_JORN_RIVER_01", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (5)) {
        TELEPORTNPCTOWP(1819, "PART_13_NAV_56");
        TELEPORTNPCTOWP(51439, "PART_13_NAV_57");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_NAV_57", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (6)) {
        TELEPORTNPCTOWP(1819, "PART_13_NAV_72");
        TELEPORTNPCTOWP(51439, "PART_13_NAV_73");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_NAV_73", TRUE);
    };
    if ((Q102_JORNCHECKRTN) == (7)) {
        TELEPORTNPCTOWP(1819, "PART_13_HUT_01");
        TELEPORTNPCTOWP(51439, "PART_13_HUT_02");
        AI_TELEPORTALWAYS(NONE_1_JORN, "PART_13_HUT_02", TRUE);
    };
    AI_TURNTONPC(HERO, NONE_1_JORN);
    NPC_REFRESH(NONE_1_JORN);
    FADESCREENFROMBLACK(1);
}

func void EVENTSMANAGER_Q102_JORNDISTANCELIMIT() {
    if ((Q102_JORNDISTANCELIMIT) && ((HERO.AIVAR[4]) == (FALSE))) {
        if (((NPC_GETDISTTONPC(HERO, NONE_1_JORN)) > (3000)) && ((Q102_JORNDISTANCELIMITWARN) == (0))) {
            Q102_JORNDISTANCELIMITWARN = 1;
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_JornTooFar_15_00");
        };
        if (((NPC_GETDISTTONPC(HERO, NONE_1_JORN)) > (3500)) && ((Q102_JORNDISTANCELIMITWARN) == (1))) {
            Q102_JORNDISTANCELIMITWARN = 2;
            FADESCREENTOBLACKF(1, 93970, 1000);
        };
    };
}

