func void SQ225_FAILQUEST() {
    if ((NPC_ISDEAD(NONE_10016_VOLKERGUARD)) == (FALSE)) {
        B_REMOVENPC(0xddcf);
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
            FF_APPLYONCEEXTGT(0xee8e, 0, -(1));
        };
        if ((SQ225_QUESTFAILED_MOVER_06) == (TRUE)) {
            FF_APPLYONCEEXTGT(0xeea9, 0, -(1));
        };
        B_STARTOTHERROUTINE(MIL_11180_CITYGUARD, START);
        NPC_REFRESH(MIL_11180_CITYGUARD);
        TELEPORTNPCTOWP(0xd111, MIL_11180_CITYGUARD.WP);
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_01)) == (FALSE)) {
            B_REMOVENPC(0xc504);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_02)) == (FALSE)) {
            B_REMOVENPC(0xc505);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_03)) == (FALSE)) {
            B_REMOVENPC(0xc506);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_04)) == (FALSE)) {
            B_REMOVENPC(0xc507);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_05)) == (FALSE)) {
            B_REMOVENPC(0xc508);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_06)) == (FALSE)) {
            B_REMOVENPC(0xc509);
        };
        if ((NPC_ISDEAD(GIANT_BUG_SQ225_07)) == (FALSE)) {
            B_REMOVENPC(0xc50a);
        };
        if ((NPC_ISDEAD(VLK_3014_GERHARD)) == (FALSE)) {
            B_REMOVENPC(0xd0a2);
        };
        if ((NPC_ISDEAD(VLK_3014_GERHARD_VINEYARDFIGHT)) == (FALSE)) {
            B_REMOVENPC(0xd0a7);
        };
        if ((NPC_ISDEAD(VLK_11181_ANDERAS_VINEYARDFIGHT)) == (FALSE)) {
            B_REMOVENPC(0xdefe);
        };
        if ((NPC_ISDEAD(NONE_11217_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xdddd);
        };
        if ((NPC_ISDEAD(NONE_11218_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xdde1);
        };
        if ((NPC_ISDEAD(NONE_11219_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xdde5);
        };
        if ((NPC_ISDEAD(NONE_11220_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xdde9);
        };
        if ((NPC_ISDEAD(NONE_11221_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xdded);
        };
        if ((NPC_ISDEAD(NONE_11222_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xddf1);
        };
        if ((NPC_ISDEAD(NONE_11223_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xddf5);
        };
        if ((NPC_ISDEAD(BAU_11216_FARMER)) == (FALSE)) {
            B_REMOVENPC(0xde9d);
        };
        if ((NPC_ISDEAD(NONE_11214_MERCENARY)) == (FALSE)) {
            B_REMOVENPC(0xddd4);
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ225)) == (0)) {
        SQ225_FINISHWAY = 1;
    };
}

