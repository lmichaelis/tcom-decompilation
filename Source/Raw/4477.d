func void EVT_SQ310_SOUPTRAP() {
    SQ310_SOUPDONE = 1;
    B_LOGENTRY(TOPIC_SQ310, LOG_SQ310_SOUPDONE);
    PRINTD("SCRIPT");
    if ((SQ310_WHATWILLBEUSED) == (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x8378, 1);
        PRINTD("Zio³a");
    };
    if ((SQ310_WHATWILLBEUSED) == (2)) {
        NPC_REMOVEINVITEMS(HERO, 0x90ab, 1);
        PRINTD("Gówno");
    };
    if ((SQ310_WHATWILLBEUSED) == (3)) {
        NPC_REMOVEINVITEMS(HERO, 0x837d, 1);
        PRINTD("Per³a");
    };
    if ((SQ310_WHATWILLBEUSED) == (4)) {
        NPC_REMOVEINVITEMS(HERO, 0x9232, 1);
        PRINTD("Smoczy py³");
    };
    if ((SQ310_WHATWILLBEUSED) == (5)) {
        NPC_REMOVEINVITEMS(HERO, 0x90ac, 1);
        PRINTD("Ciasto z ³ajna");
        if (((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(HERO, 0x15bcf))) {
            LOG_SETSTATUS(_@(MIS_SQ102), TOPIC_SQ102, LOG_FAILED);
            B_LOGENTRY(TOPIC_SQ102, LOG_SQ102_HAVENFAILED);
        };
    };
    MOB_CHANGEFOCUSNAME("SQ310_SOUPTRAP", "MOBNAME_NOTHING");
}

