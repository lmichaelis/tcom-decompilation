func void SQ225_STARWCOUNT_CHECK() {
    SQ225_STRAWCOUNT = (SQ225_STRAWCOUNT) + (1);
    PRINTD(CS2("Zniszczone snopki: ", INTTOSTRING(SQ225_STRAWCOUNT)));
    SQ225_TELEPORTSTARW();
    if ((SQ225_STRAWCOUNT) >= (6)) {
        if ((SQ225_STRAWSDESTROYED) == (FALSE)) {
            SQ225_STRAWSDESTROYED = TRUE;
            B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_STARWDESTROYED);
            SQ225_ANDERASWAY_COUNT = (SQ225_ANDERASWAY_COUNT) + (1);
        };
    };
}

func void EVENTSMANAGER_SQ225_STARW() {
    var int SQ225_DESTROYSTRAW_ISDEAD_10;
    var int SQ225_DESTROYSTRAW_ISDEAD_08;
    var int SQ225_DESTROYSTRAW_ISDEAD_07;
    var int SQ225_DESTROYSTRAW_ISDEAD_09;
    var int SQ225_DESTROYSTRAW_ISDEAD_06;
    var int SQ225_DESTROYSTRAW_ISDEAD_05;
    var int SQ225_DESTROYSTRAW_ISDEAD_03;
    var int SQ225_DESTROYSTRAW_ISDEAD_04;
    var int SQ225_DESTROYSTRAW_ISDEAD_02;
    var int SQ225_DESTROYSTRAW_ISDEAD_01;
    if (((LOG_GETSTATUS(MIS_SQ225)) != (LOG_RUNNING)) || ((SQ225_FIGHTWITHSTRAWS) != (1))) {
        return;
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_01) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_01)) {
            SQ225_DESTROYSTRAW_ISDEAD_01 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_02) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_02)) {
            SQ225_DESTROYSTRAW_ISDEAD_02 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_03) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_03)) {
            SQ225_DESTROYSTRAW_ISDEAD_03 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_04) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_04)) {
            SQ225_DESTROYSTRAW_ISDEAD_04 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_05) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_05)) {
            SQ225_DESTROYSTRAW_ISDEAD_05 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_06) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_06)) {
            SQ225_DESTROYSTRAW_ISDEAD_06 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_07) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_07)) {
            SQ225_DESTROYSTRAW_ISDEAD_07 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_08) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_08)) {
            SQ225_DESTROYSTRAW_ISDEAD_08 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_09) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_09)) {
            SQ225_DESTROYSTRAW_ISDEAD_09 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
    if ((SQ225_DESTROYSTRAW_ISDEAD_10) == (FALSE)) {
        if (NPC_ISDEAD(STARW_SQ225_10)) {
            SQ225_DESTROYSTRAW_ISDEAD_10 = TRUE;
            SQ225_STARWCOUNT_CHECK();
        };
    };
}

