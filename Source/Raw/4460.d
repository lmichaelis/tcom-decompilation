func void EVT_SEWERS_ELEVATOR_01() {
    PRINTD("Winda");
    if ((SEWERS_ELEVATOR_01_CHECK) == (FALSE)) {
        SEWERS_ELEVATOR_01_CHECK = TRUE;
        WLD_SENDTRIGGER("SEWERS_ELEVATOR_01");
    };
    if ((SEWERS_ELEVATOR_01_CHECK) == (TRUE)) {
        SEWERS_ELEVATOR_01_CHECK = FALSE;
        WLD_SENDUNTRIGGER("SEWERS_ELEVATOR_01");
    };
}

var int EVT_SEWERS_ELEVATOR_01.SEWERS_ELEVATOR_01_CHECK = 0;
func void EVT_SEWERS_ELEVATOR_02() {
    PRINTD("Winda");
    if ((SEWERS_ELEVATOR_02_CHECK) == (FALSE)) {
        SEWERS_ELEVATOR_02_CHECK = TRUE;
        WLD_SENDTRIGGER("SEWERS_ELEVATOR_02");
    };
    if ((SEWERS_ELEVATOR_02_CHECK) == (TRUE)) {
        SEWERS_ELEVATOR_02_CHECK = FALSE;
        WLD_SENDUNTRIGGER("SEWERS_ELEVATOR_02");
    };
}

var int EVT_SEWERS_ELEVATOR_02.SEWERS_ELEVATOR_02_CHECK = 0;
func void EVT_SEWERS_GATE_1() {
    if ((QM305_ISGATEOPEND) == (FALSE)) {
        PRINTD("Otwiera si�");
        QM305_ISGATEOPEND = TRUE;
        if ((QM305_GAMALOPENGATE) == (2)) {
            QM305_GAMALOPENGATE = 3;
        };
    };
    if ((QM305_ISGATEOPEND) == (TRUE)) {
        PRINTD("Zamyka si�");
        QM305_ISGATEOPEND = FALSE;
    };
    WLD_SENDTRIGGER("SEWERS_GATE_1");
}

func void EVT_SEWERS_ALCHEMY() {
    if ((QM203_OPENSEWERSGATE) == (2)) {
        QM203_OPENSEWERSGATE = 3;
    };
    WLD_SENDTRIGGER("SEWERS_GATE_ALCHEMY");
}

func void EVT_KURTCORPSE() {
    if ((FINALBOARDS_KURTISDEAD) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_SQ116), TOPIC_SQ116, LOG_FAILED);
            B_LOGENTRY(TOPIC_SQ116, LOG_SQ116_VZ_FAIL);
        };
        PRINTD("Kurt is dead");
        B_SAY(HERO, HERO, "$MARVIN_6ChapterBody");
        FINALBOARDS_KURTISDEAD = TRUE;
    };
}
