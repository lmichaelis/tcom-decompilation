func void EVT_PQ107_ALICEHOUSE_01() {
    if ((PQ107_ALICEHOUSE_CHECK_01) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_01 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_01", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_02() {
    if ((PQ107_ALICEHOUSE_CHECK_02) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_02 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_02", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_03() {
    if ((PQ107_ALICEHOUSE_CHECK_03) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_03 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_03", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_04() {
    if ((PQ107_ALICEHOUSE_CHECK_04) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_04 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_04", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_05() {
    if ((PQ107_ALICEHOUSE_CHECK_05) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_05 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_05", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_06() {
    if ((PQ107_ALICEHOUSE_CHECK_06) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_06 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_06", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_ALICEHOUSE_07() {
    if ((PQ107_ALICEHOUSE_CHECK_07) == (FALSE)) {
        PQ107_ALICEHOUSE_CHECK_07 = TRUE;
        MOB_CHANGEFOCUSNAME("PQ107_ALICEHOUSE_07", "MOBNAME_NOTHING");
        PQ107_CHECKHOUSE();
    };
}

func void EVT_PQ107_GATE() {
    var int PQ107_SECRETWALL;
    if ((LOG_GETSTATUS(MIS_PQ107)) == (LOG_RUNNING)) {
        if ((PQ107_SECRETWALL) == (FALSE)) {
            PQ107_SECRETWALL = TRUE;
            PQ107_BLOCKSEARCHING();
            B_LOGENTRY(TOPIC_PQ107, LOG_PQ107_SECRETWALL);
        };
    };
    WLD_SENDTRIGGER("PQ107_MOVER_SECRETWALL");
}

