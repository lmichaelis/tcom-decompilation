func void EVT_SQ414_SHOOT() {
    if ((SQ414_SHOOT_CHECK) == (FALSE)) {
        SQ414_SHOOT_CHECK = TRUE;
        B_LOGENTRY(TOPIC_SQ414, LOG_SQ414_SHOOT);
        FF_APPLYONCEEXTGT(0xf43e, 0, -(1));
        WLD_INSERTITEM(0x9214, "FP_SQ414_CONFESSION_02");
    };
}

var int EVT_SQ414_SHOOT.SQ414_SHOOT_CHECK = 0;
