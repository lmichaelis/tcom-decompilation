func void SQ225_FAILQUEST() {
    if ((NPC_ISDEAD(NONE_10016_VOLKERGUARD)) == (FALSE)) {
        B_REMOVENPC(56783);
    };
    if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) {
        CHANGEVOBCOLLISION("SQ225_WAITINVENZELHOUSE_SCRIPT", FALSE, FALSE, FALSE, FALSE);
        LOG_SETSTATUS(_@(MIS_SQ225), TOPIC_SQ225, LOG_FAILED);
        B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_FAILED);
        SQ225_FINISHWAY = 1;
        SQ225_EVENTS_AFTERQUEST();
        SQ225_HIDEEVENTS_ANDERASWAY();
        SQ225_HIDEEVENTS_HOLDWIGWAY();
        SQ225_VOLKERGUARDSBRINGRTN();
        SQ225_STOPFIGHT();
        if ((SQ225_QUESTFAILED_MOVER_04) == (TRUE)) {
            FF_APPLYONCEEXTGT(61070, 0, -(1));
        };
        if ((SQ225_QUESTFAILED_MOVER_06) == (TRUE)) {
            FF_APPLYONCEEXTGT(61097, 0, -(1));
        };
        B_STARTOTHERROUTINE(MIL_11180_CITYGUARD, START);
        NPC_REFRESH(MIL_11180_CITYGUARD);
        TELEPORTNPCTOWP(53521, MIL_11180_CITYGUARD.WP);
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_01)) == (FALSE)) {
            B_REMOVENPC(50436);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_02)) == (FALSE)) {
            B_REMOVENPC(50437);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_03)) == (FALSE)) {
            B_REMOVENPC(50438);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_04)) == (FALSE)) {
            B_REMOVENPC(50439);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_05)) == (FALSE)) {
            B_REMOVENPC(50440);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_06)) == (FALSE)) {
            B_REMOVENPC(50441);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_07)) == (FALSE)) {
            B_REMOVENPC(50442);
        };
        if ((NPC_ISDEAD(VLK_3014_GERHARD)) == (FALSE)) {
            B_REMOVENPC(53410);
        };
        if ((NPC_ISDEAD(VLK_3014_GERHARD_VINEYARDFIGHT)) == (FALSE)) {
            B_REMOVENPC(53415);
        };
        if ((NPC_ISDEAD(VLK_11181_ANDERAS_VINEYARDFIGHT)) == (FALSE)) {
            B_REMOVENPC(57086);
        };
        if ((NPC_ISDEAD(NONE_11217_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56797);
        };
        if ((NPC_ISDEAD(NONE_11218_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56801);
        };
        if ((NPC_ISDEAD(NONE_11219_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56805);
        };
        if ((NPC_ISDEAD(NONE_11220_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56809);
        };
        if ((NPC_ISDEAD(NONE_11221_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56813);
        };
        if ((NPC_ISDEAD(NONE_11222_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56817);
        };
        if ((NPC_ISDEAD(NONE_11223_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56821);
        };
        if ((NPC_ISDEAD(BAU_11216_FARMER)) == (FALSE)) {
            B_REMOVENPC(56989);
        };
        if ((NPC_ISDEAD(NONE_11214_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(56788);
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ225)) == (0)) {
        SQ225_FINISHWAY = 1;
    };
}

