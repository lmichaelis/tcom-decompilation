func void EVENTSMANAGER_SQ111() {
    if ((LOG_GETSTATUS(MIS_SQ111)) != (LOG_RUNNING)) {
        return;
    };
    if ((SQ111_TAKEROCK_01) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37037)) >= (1)) {
            SQ111_TAKEROCK_01 = TRUE;
            NPC_REMOVEINVITEMS(HERO, 37037, 1);
        };
    };
    if ((SQ111_TAKEROCK_02) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 37038)) >= (1)) {
            SQ111_TAKEROCK_02 = TRUE;
            NPC_REMOVEINVITEMS(HERO, 37038, 1);
        };
    };
    if (((SQ111_TAKEROCK_02) == (TRUE)) && ((SQ111_TAKEROCK_01) == (TRUE))) {
        if ((SQ111_MILLREADY) == (FALSE)) {
            SQ111_MILLREADY = TRUE;
            SQ111_STARTMILL();
        };
    };
}

